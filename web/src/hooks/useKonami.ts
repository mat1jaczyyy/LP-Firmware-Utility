import { useState, useRef, useCallback, useEffect } from "react";
import { konamiSequence } from "../constants";

export default () => {
  const [konamiSuccess, setKonamiSuccess] = useState(false);

  const input = useRef<number[]>([]);

  const konamiHandler = useCallback(
    (e: KeyboardEvent) => {
      if (konamiSuccess) return;

      if (e.keyCode === konamiSequence[input.current.length]) {
        input.current.push(e.keyCode);
        if (input.current.length === konamiSequence.length)
          setKonamiSuccess(true);
      } else input.current = [];
    },
    [konamiSuccess]
  );

  useEffect(() => {
    window.addEventListener("keydown", konamiHandler);
    return () => window.removeEventListener("keydown", konamiHandler);
  }, [konamiHandler]);

  return konamiSuccess;
};
