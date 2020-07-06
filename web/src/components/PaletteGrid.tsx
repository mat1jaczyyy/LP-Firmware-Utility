import React from "react";

import PaletteColor from "./PaletteColor";
import { paletteColorString } from "../utils";
import { useStore } from "../hooks";
import { useObserver } from "mobx-react-lite";

interface Props {
  selectedColor?: number;
  onColorClicked?: (index: number) => any;
  [key: number]: any;
}

const PaletteGrid = ({
  selectedColor,
  onColorClicked,
  ...props
}: Props & React.HTMLAttributes<HTMLDivElement>) => {
  const paletteStore = useStore(({ palette }) => palette);

  return useObserver(() => (
    <div
      {...props}
      style={{
        ...props.style,
        width: 464,
        flexDirection: "row",
        display: "flex",
      }}
    >
      <div style={{ display: "flex", flex: 1, flexWrap: "wrap" }}>
        {Object.entries(paletteStore.palette)
          .slice(0, 64)
          .map(([index, color]) => (
            <PaletteColor
              key={index}
              selected={index === selectedColor?.toString()}
              color={paletteColorString(color)}
              onClick={() => onColorClicked && onColorClicked(parseInt(index))}
            />
          ))}
      </div>
      <div style={{ display: "flex", flex: 1, flexWrap: "wrap" }}>
        {Object.entries(paletteStore.palette)
          .slice(64, 128)
          .map(([index, color]) => (
            <PaletteColor
              key={index}
              selected={index === selectedColor?.toString()}
              color={paletteColorString(color)}
              onClick={() => onColorClicked && onColorClicked(parseInt(index))}
            />
          ))}
      </div>
    </div>
  ));
};

export default PaletteGrid;
