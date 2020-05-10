import Launchpad from "../../classes/Launchpad";

export interface LaunchpadsState {
  launchpads: Launchpad[];
}

const initialState: LaunchpadsState = {
  launchpads: [],
};

export default (
  state = initialState,
  { type, payload }: any
): LaunchpadsState => {
  switch (type) {
    case "SET_LAUNCHPADS":
      return {launchpads: payload}
    default:
      return state;
  }
};
