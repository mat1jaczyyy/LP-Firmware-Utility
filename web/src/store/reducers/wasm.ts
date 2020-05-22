export interface WasmState {
  verify?: () => number;
  patch?: (lpModel: number, options: any, palette: any) => any;
  available?: boolean;
}

export default (state: WasmState = {}, { type, payload }: any): WasmState => {
  switch (type) {
    case "SET_WASM":
      return payload;
    case "WASM_UNAVAILABLE":
      return {
        available: false,
      };
    default:
      return state;
  }
};
