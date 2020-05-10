import { TypedUseSelectorHook, useSelector } from "react-redux";

import wasm from "./useWasm";
import launchpads from "./useLaunchpads";
import midi from "./useMidi";
import konami from "./useKonami";

import { AppState } from "../store";

export const useWasm = wasm;

export const useLaunchpads = launchpads;

export const useMidi = midi;

export const useKonami = konami;

export const useAppState: TypedUseSelectorHook<AppState> = useSelector;
