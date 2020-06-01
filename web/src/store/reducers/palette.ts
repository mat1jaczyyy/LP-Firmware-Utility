import { novationPalette } from "../../constants";

export interface PaletteState {
  colors: {
    [index: number]: number[];
  };
  dirty: boolean;
}

const initialState: PaletteState = {
  colors: novationPalette,
  dirty: false,
};

export default (state = initialState, { type, payload }: any): PaletteState => {
  switch (type) {
    case "SET_PALETTE_COLOR":
      return {
        ...state,
        dirty: true,
        colors: {
          ...state.colors,
          [payload.index]: payload.color,
        },
      };
    case "SET_PALETTE":
      return {
        ...state,
        dirty: true,
        colors: payload,
      };
    default:
      return state;
  }
};
