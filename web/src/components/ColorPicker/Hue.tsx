import React, {
  HTMLAttributes,
  useState,
  useRef,
  useCallback,
  useEffect,
} from "react";

import "./index.css";

interface Props {
  width: number;
  height: number;
  onColorChanged: (hue: number) => void;
  hsv: number[];
}

const Hue = ({
  width,
  height,
  onColorChanged,
  style,
  hsv,
  ...props
}: Props & HTMLAttributes<HTMLDivElement>) => {
  const [hue, setHue] = useState(0);

  useEffect(() => {
    setHue(hsv[0]);
  }, [hsv]);

  const container = useRef<HTMLDivElement>(null);

  const handleMouseMove = useCallback(
    (e) => {
      const y = typeof e.pageY === "number" ? e.pageY : e.touches[0].pageY;
  
      const { top: containerTop } = container.current!.getBoundingClientRect();

      const top = y - (containerTop + window.pageYOffset);

      let h;
      if (top < 0) h = 0;
      else if (top > height) h = 1;
      else h = top / height;

      setHue(h);

      onColorChanged(h);
    },
    [height, onColorChanged]
  );

  return (
    <div
      style={{
        border: "2px solid black",
        position: "relative",
        cursor: "pointer",
        width,
        height,
        ...style,
      }}
      className="hue border-2 border-black"
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
      <div
        style={{
          top: `${hue * 100}%`,
        }}
        className="absolute left-0 right-0"
      >
        <div
          style={{
            width: "calc(100% + 10px)",
            height: "12px",
            transform: "translate(-5px, -6px)",
            backgroundColor: `hsl(${hue * 360} 100% 50%)`,
            border: "1.5px solid white",
            boxSizing: "border-box",
          }}
        />
      </div>
    </div>
  );
};

export default Hue;
