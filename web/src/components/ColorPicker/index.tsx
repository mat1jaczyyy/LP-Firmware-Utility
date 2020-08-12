import React, { useState, useEffect, useRef } from "react";

import Saturation from "./Saturation";
import Hue from "./Hue";
import Input from "./Input";

import { hsvToHex, squashFullHex } from "../../utils";

export const ColorPicker = ({
  style,
  onColorChange,
  hsv: parentHsv,
  onTextFocusChanged,
  ...props
}: any) => {
  const [hsv, setHsv] = useState([1, 1, 1]);

  const colorRef = useRef(hsv);
  useEffect(() => {
    if (colorRef.current !== hsv) colorRef.current = hsv;
  }, [hsv]);

  useEffect(() => {
    if (parentHsv) setHsv(parentHsv);
  }, [parentHsv]);

  return (
    <div
      style={{ display: "flex", flexDirection: "column", ...style }}
      onMouseDown={() => {
        window.addEventListener("mouseup", function listener() {
          onColorChange(hsvToHex(colorRef.current || hsv));
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
          onColorChanged={(sat: number, val: number) =>
            setHsv((a) => [a[0], sat, val])
          }
        />
        <Hue
          style={{ margin: "0 5px" }}
          hsv={hsv}
          width={30}
          height={200}
          onColorChanged={(hue: number) => setHsv((a) => [hue, a[1], a[2]])}
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
        <Input
          onColorChanged={(hsv: number[]) => setHsv(hsv)}
          hsv={hsv}
          onBlur={() => onTextFocusChanged(false)}
          onFocus={() => onTextFocusChanged(true)}
        />
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
