import React from "react";
import Pad from "./Pad";
import CirclePad from "./CirclePad";

interface Props {
  size: number;
  colors: number[][];
}

const Launchpad = ({ size, colors }: Props) => {
  const padSize = size * (4 / 51);

  return (
    <div
      style={{
        width: size,
        height: size,
        background: "#101010",
        borderRadius: "2%",
        border: "0.5px solid #333",
        display: "flex",
        flexDirection: "column",
        position: "relative",
      }}
    >
      <div
        style={{
          width: padSize / 2,
          height: padSize / 2,
          backgroundColor: "#101010",
          transform: "rotate(45deg)",
          position: "absolute",
          left: `calc(50% - ${padSize / 4}px)`,
          top: `calc(50% - ${padSize / 4}px)`
        }}
      />
      <div
        style={{
          flex: 6,
          display: "flex",
          justifyContent: "center",
        }}
      >
        <div style={{ flex: 6 }} />
        <div
          style={{
            flex: 39,
            height: "100%",
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
          }}
        >
          {new Array(8).fill("", 0, 8).map((_, i) => (
            <CirclePad key={i} size={padSize} />
          ))}
        </div>
        <div style={{ flex: 6 }} />
      </div>
      <div style={{ display: "flex", flex: 39 }}>
        <div
          style={{
            flex: 6,
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
            flexDirection: "column",
          }}
        >
          {new Array(8).fill("", 0, 8).map((_, i) => (
            <CirclePad key={i} size={padSize} />
          ))}
        </div>
        <div
          style={{
            display: "flex",
            flexDirection: "column",
            justifyContent: "space-between",
            flex: 39,
          }}
        >
          {new Array(8)
            .fill(new Array(8).fill("", 0, 8), 0, 8)
            .map((row, ri) => (
              <div
                key={ri}
                style={{
                  width: "100%",
                  height: padSize,
                  display: "flex",
                  justifyContent: "space-between",
                }}
              >
                {row.map((_: any, i: number) => (
                  <Pad size={padSize} key={i} color={colors[i + (7 - ri) * 8]} />
                ))}
              </div>
            ))}
        </div>
        <div
          style={{
            flex: 6,
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
            flexDirection: "column",
          }}
        >
          {new Array(8).fill("", 0, 8).map((_, i) => (
            <CirclePad key={i} size={padSize} />
          ))}
        </div>
      </div>
      <div
        style={{
          flex: 6,
          display: "flex",
          justifyContent: "center",
        }}
      >
        <div style={{ flex: 6 }} />
        <div
          style={{
            flex: 39,
            height: "100%",
            display: "flex",
            justifyContent: "space-between",
            alignItems: "center",
          }}
        >
          {new Array(8).fill("", 0, 8).map((_, i) => (
            <CirclePad key={i} size={padSize} />
          ))}
        </div>
        <div style={{ flex: 6 }} />
      </div>
    </div>
  );
};

export default Launchpad;
