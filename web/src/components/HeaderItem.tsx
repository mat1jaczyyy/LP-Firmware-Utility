import React from "react";
import { useLocation } from "react-router";
import { Link } from "react-router-dom";
import clsx from "clsx";

const HeaderItem = ({ name, path, disabled }: any) => {
  const location = useLocation();

  return (
    <Link
      className={clsx(
        "px-6 h-full flex items-center justify-center border-b-2 box-border transition-opacity duration-100",
        location.pathname === `/${path}`
          ? "bg-gray-700 border-white"
          : "hover:bg-head_hov border-transparent",
          disabled && "opacity-25 pointer-events-none"
      )}
      to={`/${path}`}
    >
      {name}
    </Link>
  );
};

export default HeaderItem;
