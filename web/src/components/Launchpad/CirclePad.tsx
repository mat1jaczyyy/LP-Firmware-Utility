import React from "react";

const CirclePad = ({ size }: any) => {
  return (
    <div
      style={{
        width: size,
        height: size,
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
      }}
    >
      <div
        style={{
          backgroundColor: "#8B8B8B",
          borderRadius: size * 0.375,
          width: size * 0.75,
          height: size * 0.75,
        }}
      />
    </div>
  );
};

export default CirclePad;
