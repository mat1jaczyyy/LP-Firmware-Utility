import React, { HTMLAttributes, useState, useEffect, useCallback } from "react";
import { hsvToHex, hexToHsv } from "../../utils";

interface Props {
  onColorChanged: (hsv: number[]) => void;
  hsv: number[];
}

const Input = ({
  onColorChanged,
  hsv,
}: Props & HTMLAttributes<HTMLInputElement>) => {
  const [text, setText] = useState("");

  useEffect(() => setText(hsvToHex(hsv)), [hsv]);

  const handleChange = useCallback(
    (e) => {
      const color: string = e.target.value.slice(1);
      if (color.length < 6) {
        setText(color);
        return;
      }
      let r = parseInt(color.slice(0, 2), 16);
      let g = parseInt(color.slice(2, 4), 16);
      let b = parseInt(color.slice(4, 6), 16);

      if (r > 63) r = 63;
      if (g > 63) g = 63;
      if (b > 63) b = 63;

      let text = `${r.toString(16).padEnd(2, "0")}${g
        .toString(16)
        .padEnd(2, "0")}${b.toString(16).padEnd(2, "0")}`;

      setText(text);

      let hsv = hexToHsv([r, g, b]);

      onColorChanged(hsv);
    },
    [onColorChanged]
  );

  return (
    <input
      type="text"
      style={{
        fontSize: 25,
        width: 110,
        border: "1px solid black",
        backgroundColor: "#101010",
        padding: 2,
        fontFamily: "inherit",
        color: "white",
      }}
      onChange={(e) => {
        let text = e.target.value.slice(1);
        text = text.length < 6 ? text : text.slice(0, 6);
        if (/^[0-9A-Fa-f]+$/.test(text) || text.length === 0) setText(text);
        if (text.length === 6) handleChange(e);
      }}
      value={`#${text.toUpperCase()}`}
    />
  );
};

export default Input;
