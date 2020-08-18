import React from "react";

import { hsvToHex, rgbToHsv } from "../../utils";

const Pad = ({ size, color }: any) => {
  let [h, s, opacity] = rgbToHsv(color);
  return (
    <div
      style={{
        width: size,
        height: size,
        backgroundColor: "#808080",
        borderRadius: "4%",
      }}
    >
      <div
        style={{
          width: "100%",
          height: "100%",
          backgroundColor: `#${hsvToHex([h, s, 1], true)}`,
          opacity,
        }}
      />
    </div>
  );
};

export default Pad;
