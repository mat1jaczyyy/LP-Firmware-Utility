import { useEffect } from "react";
import { useDispatch } from "react-redux";
import WebMidi from "webmidi";

export default () => {
  const dispatch = useDispatch();

  useEffect(() => {
    WebMidi.enable(
      (err) => dispatch({ type: "SET_MIDI_AVAILABLE", payload: !!!err }),
      true
    );
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);
};
