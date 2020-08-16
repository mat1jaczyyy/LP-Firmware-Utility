import React, { forwardRef } from "react";
import clsx from "clsx";

const RouteContainer = forwardRef(({lightBg, ...props}: any, ref: any) => {
  return (
    <div
      className={clsx(
        "w-full outline-none flex flex-col items-center justify-center space-y-2 top-0 bottom-0 absolute transition-colors duration-200",
        lightBg && "light-bg"
      )}
      {...props}
      ref={ref}
    />
  );
});
export default RouteContainer;
