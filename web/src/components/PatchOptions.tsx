import React, { useCallback, useState } from "react";
import { lpOptions } from "../constants";

const PatchOptions = ({ options }: any) => {


  const getOptions = useCallback(
    (options: any, recursion: number = 0, parent?: string) => {
      return Object.entries(options).map(([name, value]) => {
        let children: any;
        if (value !== false) children = getOptions(value, recursion + 1, name);

        return (
          <div
            className={recursion === 0 ? "mainOption" : undefined}
            key={name}
            style={{ paddingLeft: recursion * 15 }}
          >
            <input
              type="checkbox"
              disabled={!!parent && !optionState[parent]}
              defaultChecked={false}
              value={optionState[name]}
              onChange={() =>
                setOptionState((s: any) => ({
                  ...s,
                  [name]: !s[name],
                }))
              }
            />
            <span>{name}</span>
            {children}
          </div>
        );
      });
    },
    [optionState, setOptionState]
  );

  return <div className="options">{getOptions(lpOptions[selectedLp])}</div>;
};

export default PatchOptions;
