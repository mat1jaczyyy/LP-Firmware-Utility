import React, { useEffect } from "react";
import { useLocation } from "react-router";

const routeHeaders: any = {
  "/": "Launchpad Firmware Utility",
  "/palette": "Custom Palette Utility",
};

const Header = () => {
  const { pathname } = useLocation();

  useEffect(() => {
    document.title = routeHeaders[pathname];
  }, [pathname]);

  return (
    <div className="header">
      <p>{routeHeaders[pathname]}</p>
    </div>
  );
};

export default Header;
