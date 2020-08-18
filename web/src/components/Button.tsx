import React from "react";
import clsx from "clsx";

const Button = ({
  className,
  ...props
}: React.ButtonHTMLAttributes<HTMLButtonElement>) => (
  <button
    className={clsx(
      "mx-2 py-2 px-4 text-2xl uppercase font-bold font-sans focus:outline-none",
      props.disabled && "opacity-50 pointer-events-none",
      className
    )}
    {...props}
  />
);

export default Button;
