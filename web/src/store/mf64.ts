import { PatchOptions } from "./UIStore";

const BaseFirmwareSources = {
  MF64: () => import("../assets/mf64-base.hex?raw").then((m) => m.default),
  CMF64: () =>
    fetch(
      "https://raw.githubusercontent.com/mat1jaczyyy/mf64-performance-cfw/master/midi_fighter_64/midifighter64.hex",
    ).then((r) => r.text()),
};

function ihexToBinary(ihex: string): Uint8Array {
  const lines = ihex.split("\n");
  const bytes = [];

  for (const line of lines) {
    if (line[0] !== ":") {
      continue;
    }

    const len = parseInt(line.slice(1, 3), 16);
    const addr = parseInt(line.slice(3, 7), 16);
    const type = parseInt(line.slice(7, 9), 16);
    const data = line.slice(9, 9 + len * 2);

    if (type === 0) {
      for (let i = 0; i < len; i++) {
        bytes.push(parseInt(data.slice(i * 2, i * 2 + 2), 16));
      }
    }
  }

  return new Uint8Array(bytes);
}

function binaryToIhex(bin: Uint8Array): string {
  let ihex = "";

  for (let i = 0; i < bin.length; i += 16) {
    const chunk = bin.slice(i, i + 16);
    const len = chunk.length;
    const addr = i;
    const type = 0;

    let data = "";
    for (let j = 0; j < len; j++) {
      data += chunk[j].toString(16).padStart(2, "0");
    }

    const checksum =
      (~(
        (len +
          (addr >> 8) +
          (addr & 0xff) +
          type +
          chunk.reduce((a, b) => a + b, 0)) &
        0xff
      ) +
        1) &
      0xff;

    ihex += `:${len.toString(16).padStart(2, "0")}${addr.toString(16).padStart(4, "0")}${type.toString(16).padStart(2, "0")}${data}${checksum.toString(16).padStart(2, "0")}\n`;
  }

  ihex += ":00000001FF\n";

  return ihex.toUpperCase();
}

export async function patchMF64(
  selectedFw: "MF64" | "CMF64",
  options: PatchOptions,
  palette: { [index: number]: number[] },
) {
  const hex = await BaseFirmwareSources[selectedFw]();

  const bin = ihexToBinary(hex);

  if (options["Custom Palette"]) {
    const base = selectedFw === "MF64" ? 0x454e : 0x3510;

    for (const [index, colors] of Object.entries(palette)) {
      const offset = base + parseInt(index) * 3;
      bin[offset] = colors[0];
      bin[offset + 1] = colors[1];
      bin[offset + 2] = colors[2];
    }
  }

  if (selectedFw === "MF64" && options["Novation ID Spoof"]) {
    bin[0x02b2] = 0x35; // VID LSB
    bin[0x02b3] = 0x12; // VID MSB
    bin[0x02b4] = 0x51; // PID LSB
    bin[0x02b5] = 0x00; // PID MSB
  }

  const patched = binaryToIhex(bin);

  return Uint8Array.from([...patched].map((c) => c.charCodeAt(0)));
}
