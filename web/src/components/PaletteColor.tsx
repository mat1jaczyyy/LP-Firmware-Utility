import React from "react";
import { squashFullHex } from "../utils";

const PaletteColor = ({ color, selected, ...props }: any) => {
  return (
    <div
      {...props}
      style={{
        width: 25,
        height: 25,
        backgroundColor: `#${squashFullHex(color)}`,
        margin: 2,
        outline: selected ? "solid 2px white" : undefined,
        boxSizing: "border-box",
        cursor: "pointer",
      }}
    />
  );
};

export default PaletteColor;
