import React, { useState, useCallback, useEffect, useRef } from "react";
import Saturation from "./Saturation";
import Hue from "./Hue";
import Input from "./Input";
import { hsvToHex, squashFullHex } from "../../utils";

export const ColorPicker = ({
  style,
  onColorChange,
  hsv: parentHsv,
  ...props
}: any) => {
  const [hsv, setHsv] = useState([1, 1, 1]);

  const colorRef = useRef(hsv);
  useEffect(() => {
    colorRef.current = hsv;
  }, [hsv]);

  useEffect(() => parentHsv && setHsv(parentHsv), [parentHsv]);

  const handleSaturationChange = useCallback(
    (sat: number, val: number) => setHsv((a) => [a[0], sat, val]),
    []
  );

  const handleHueChange = useCallback(
    (hue: number) => setHsv((a) => [hue, a[1], a[2]]),
    []
  );

  const handleTextChange = useCallback((hsv: number[]) => setHsv(hsv), []);

  const updateColor = useCallback(
    (color) => onColorChange(hsvToHex(color || hsv)),
    [onColorChange, hsv]
  );

  return (
    <div
      style={{ display: "flex", flexDirection: "column", ...style }}
      onMouseDown={() => {
        window.addEventListener("mouseup", function listener() {
          updateColor(colorRef.current);
          window.removeEventListener("mouseup", listener);
        });
      }}
      {...props}
    >
      <div style={{ display: "flex", justifyContent: "center" }}>
        <Saturation
          style={{ margin: "0 5px" }}
          width={200}
          height={200}
          hsv={hsv}
          onColorChanged={handleSaturationChange}
        />
        <Hue
          style={{ margin: "0 5px" }}
          hsv={hsv}
          width={30}
          height={200}
          onColorChanged={handleHueChange}
        />
      </div>
      <div
        style={{
          margin: "5px auto",
          display: "flex",
          alignItems: "stretch",
          height: 40,
        }}
      >
        <Input onColorChanged={handleTextChange} hsv={hsv} />
        <div
          style={{
            width: 40,
            height: 40,
            backgroundColor: `#${squashFullHex(hsvToHex(hsv, true))}`,
            borderRadius: 20,
            marginLeft: 10,
            border: "solid 1px white",
            boxSizing: "border-box",
          }}
        />
      </div>
    </div>
  );
};

export default ColorPicker;
