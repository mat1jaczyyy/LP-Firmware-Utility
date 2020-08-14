import React from "react";
import { squashFullHex } from "../utils";

const PaletteColor = React.memo(({ color, selected, size, ...props }: any) => {
  return (
    <div
      {...props}
      style={{
        ...props.style,
        backgroundColor: `#${squashFullHex(color)}`,
        outline: selected ? "solid 2px white" : undefined,
        boxSizing: "border-box",
        cursor: "pointer",
        width: size,
        height: size,
      }}
    />
  );
});

export default PaletteColor;
