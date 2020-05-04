import React, {
  useState,
  useCallback,
  HTMLAttributes,
  useRef,
  useEffect,
} from "react";

interface Props {
  hsv: number[];
  width: number;
  height: number;
  onColorChanged: (sat: number, val: number) => void;
}

const Saturation = ({
  hsv,
  width,
  height,
  onColorChanged,
  style,
  ...props
}: Props & HTMLAttributes<HTMLDivElement>) => {
  const [sat, setSat] = useState(1);
  const [val, setVal] = useState(1);

  useEffect(() => {
    setSat(hsv[1]);
    setVal(hsv[2]);
  }, [hsv]);

  const container = useRef<HTMLDivElement>(null);

  const handleMouseMove = useCallback(
    (e) => {
      const x = typeof e.pageX === "number" ? e.pageX : e.touches[0].pageX;
      const y = typeof e.pageY === "number" ? e.pageY : e.touches[0].pageY;

      const {
        left: containerLeft,
        top: containerTop,
      } = container.current!.getBoundingClientRect();

      let left = x - (containerLeft + window.pageXOffset);
      let top = y - (containerTop + window.pageYOffset);

      if (left < 0) {
        left = 0;
      } else if (left > width) {
        left = width;
      }

      if (top < 0) {
        top = 0;
      } else if (top > height) {
        top = height;
      }

      let newSat = left / width;
      let newVal = 1 - top / height;

      setSat(newSat);
      setVal(newVal);

      onColorChanged(newSat, newVal);
    },
    [height, width, onColorChanged]
  );

  return (
    <div
      style={{
        width,
        height,
        position: "relative",
        background: `hsl(${hsv[0] * 360},100%, 50%)`,
        border: "2px solid black",
        borderRadius: 5,
        cursor: "pointer",
        ...style,
      }}
      onMouseDown={(e) => {
        handleMouseMove(e);
        window.addEventListener("mousemove", handleMouseMove);
        window.addEventListener("mouseup", function listener() {
          window.removeEventListener("mousemove", handleMouseMove);
          window.removeEventListener("mouseup", listener);
        });
      }}
      ref={container}
      {...props}
    >
      <div className="saturation-white absolute-stretch">
        <div className="saturation-black absolute-stretch" />
        <div
          style={{
            position: "absolute",
            top: `${-(val * 100) + 100}%`,
            left: `${sat * 100}%`,
          }}
        >
          <div
            style={{
              width: "8px",
              height: "8px",
              boxShadow: `0 0 0 1.5px #fff, inset 0 0 1px 1px rgba(0,0,0,.3),
            0 0 1px 2px rgba(0,0,0,.4)`,
              borderRadius: "50%",
              cursor: "hand",
              transform: "translate(-4px, -4px)",
            }}
          />
        </div>
      </div>
    </div>
  );
};

export default Saturation;
