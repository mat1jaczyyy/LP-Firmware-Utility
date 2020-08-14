import React from "react";
import clsx from "clsx";

const Button = ({
  className,
  style,
  ...props
}: React.ButtonHTMLAttributes<HTMLButtonElement>) => (
  <button
    className={clsx(
      "mx-2 border-none py-2 px-4 text-2xl uppercase font-bold font-sans",
      props.disabled && "opacity-50",
      className
    )}
    style={{ background: "#212121", ...style }}
    {...props}
  />
);

export default Button;
