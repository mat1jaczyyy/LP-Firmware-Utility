import axios from "axios"

declare var FS: any;

export const flattenObject = (options: any, recursion = 0) => {
  let flattened: any = {};
  Object.entries(options).forEach(([name, value]) => {
    let children: any;
    if (value !== false) {
      children = flattenObject(value, recursion + 1);
    }
    flattened = { ...flattened, ...children };
  });
  return flattened;
};

export const portNeutralize = (x: string) =>
  x.toUpperCase().split("IN").join("").split("OUT").join("");
export const portsMatch = (input: string, output: string) =>
  portNeutralize(input) === portNeutralize(output);

export const downloadCFW = async () => {
  try {
    const response = await axios.get(
      "https://api.github.com/repos/mat1jaczyyy/lpp-performance-cfw/contents/build/cfw.syx"
    );

    return new Uint8Array(
      atob(response.data.content)
        .split("")
        .map((c) => c.charCodeAt(0))
    );
  } catch (e) {
    throw new Error(
      "An error occured while downloading the CFW. Please try again."
    );
  }
};
