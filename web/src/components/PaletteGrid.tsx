import React from "react";

import PaletteColor from "./PaletteColor";
import { paletteColorString } from "../utils";
import { useStore } from "../hooks";
import { useObserver } from "mobx-react-lite";

interface Props {
  selectedColor?: number;
  onColorClicked?: (index: number) => any;
  [key: number]: any;
  width: number;
}

const PaletteGrid = ({
  selectedColor,
  onColorClicked,
  width,
  ...props
}: Props & React.HTMLAttributes<HTMLDivElement>) => {
  const paletteStore = useStore(({ palette }) => palette);

  return useObserver(() => (
    <div {...props} className="flex flex-row space-x-1">
      <div className="grid col-gap-1 row-gap-1 grid-cols-8">
        {Object.values(paletteStore.palette)
          .slice(0, 64)
          .map((e, i) => (
            <PaletteColor
              color={paletteColorString(e)}
              key={i}
              size={width / 16}
              selected={selectedColor === i}
              onClick={() => onColorClicked && onColorClicked(i)}
            />
          ))}
      </div>
      <div className="grid col-gap-1 row-gap-1 grid-cols-8">
        {Object.values(paletteStore.palette)
          .slice(64, 128)
          .map((e, i) => (
            <PaletteColor
              key={i}
              color={paletteColorString(e)}
              size={width / 16}
              selected={selectedColor === i + 64}
              onClick={() => onColorClicked && onColorClicked(i + 64)}
            />
          ))}
      </div>
    </div>
  ));
};

export default PaletteGrid;
