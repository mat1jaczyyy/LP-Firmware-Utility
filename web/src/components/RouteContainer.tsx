import React, { forwardRef } from "react";

const RouteContainer = forwardRef((props: any, ref: any) => {
  return (
    <div
      className="w-full outline-none flex flex-col items-center justify-center space-y-2 top-0 bottom-0 absolute"
      {...props}
      ref={ref}
    />
  );
});
export default RouteContainer;
