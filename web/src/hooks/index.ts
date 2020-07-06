import { useContext } from "react";

import { RootStore, StoreContext } from "../store";

export const useStore = <T extends unknown>(
  selector: (store: RootStore) => T
): T => selector(useContext(StoreContext));
