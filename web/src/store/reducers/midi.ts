export interface MidiState {
  available?: boolean;
}

export default (state: MidiState = {}, { type, payload }: any): MidiState => {
  switch (type) {
    case "SET_MIDI_AVAILABLE":
      return { available: payload };

    default:
      return state;
  }
};
