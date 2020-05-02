import React, {
  useState,
  useCallback,
  useEffect,
  useRef,
  useReducer,
} from "react";
import CloseIcon from "@material-ui/icons/CloseSharp";
import { CSSTransition, SwitchTransition } from "react-transition-group";

import {
  lpModelsVisible,
  lpOptions,
  lpModelsAll,
  svgs,
  bltext,
} from "./constants";
import { useKonami, useLaunchpads } from "./hooks";
import useWasm from "./hooks/useWasm";
import { flattenObject } from "./utils";

import "./App.css";

const isWindows = window.navigator.platform.indexOf("Win") !== -1;

interface NoticeState {
  visible: boolean;
  text: string;
  svg?: string;
  callback?: () => void;
  bl: string;
  showProgress: boolean;
  dismissable: boolean;
}

const noticeDefaults: NoticeState = {
  visible: true,
  text: "",
  bl: "",
  showProgress: false,
  dismissable: false,
};

const noticeReducer = (state: NoticeState, action: any): NoticeState => {
  switch (action.type) {
    case "SET":
      return { ...noticeDefaults, ...action.payload };
    case "RESET":
      if (state.callback) state.callback();
      return { ...noticeDefaults, visible: false };
    default:
      return state;
  }
};

interface NoticeOptions {
  text: string;
  svg?: string | null;
  callback?: () => void;
  bl?: string;
  showProgress?: boolean;
  dismissable?: boolean;
}

const showNotice = (options: NoticeOptions) => ({
  type: "SET",
  payload: { ...noticeDefaults, ...options },
});

const clearNotice = { type: "RESET" };

const App = () => {
  const [selectedLp, setSelectedLp] = useState(lpModelsVisible[0]);
  const [visibleLps, setVisibleLps] = useState(lpModelsVisible);
  const [optionState, setOptionState]: any = useState({});

  const [noticeState, noticeDispatch] = useReducer(
    noticeReducer,
    noticeDefaults
  );

  const konamiSuccess = useKonami();
  const {
    wasmAvailable,
    wasmLoading,
    patchFirmware,
    verifyFirmware,
  } = useWasm();
  const { launchpads, midiAvailable, queueFirmwareFlash } = useLaunchpads();

  const fileRef = useRef<HTMLInputElement | null>(null);

  const getOptions = useCallback(
    (options: any, recursion = 0, parent?: string) =>
      Object.entries(options).map(([name, value]) => {
        let children: any;
        if (value !== false) children = getOptions(value, recursion + 1, name);

        return (
          <div
            className={recursion === 0 ? "mainOption" : undefined}
            key={name}
            style={{ paddingLeft: recursion * 15 }}
          >
            <input
              type="checkbox"
              disabled={!!parent && !optionState[parent]}
              defaultChecked={false}
              value={optionState[name]}
              onChange={() =>
                setOptionState((s: any) => ({
                  ...s,
                  [name]: !s[name],
                }))
              }
            />
            <span>{name}</span>
            {children}
          </div>
        );
      }),
    [optionState, setOptionState]
  );

  const flashFirmware = useCallback(
    async (
      selectedLp: string,
      options: { [key: string]: any },
      rawFW?: Uint8Array
    ) => {
      try {
        let firmware: Uint8Array = new Uint8Array();

        if (!rawFW) firmware = await patchFirmware(selectedLp, options);

        let targetLp =
          lpModelsAll.indexOf(selectedLp) === 5 ? lpModelsAll[4] : selectedLp;

        let { cancelFlash, flashPromise } = queueFirmwareFlash(
          rawFW || firmware,
          targetLp
        );

        flashPromise
          .then(async (continueFlashing: any) => {
            if (!continueFlashing) return;
            noticeDispatch(
              showNotice({
                text: "Updating...",
                dismissable: false,
                showProgress: true,
              })
            );
            return await continueFlashing();
          })
          .then(() => noticeDispatch(clearNotice));

        if (!launchpads.some((lp) => lp.type === targetLp))
          noticeDispatch(
            showNotice({
              text: `Please connect a ${selectedLp} in bootloader mode to continue flashing.`,
              dismissable: true,
              svg: `./svg/${svgs[selectedLp]}.svg`,
              bl: `You can enter the bootloader by holding ${bltext[selectedLp]} while turning your Launchpad on.`,
              callback: cancelFlash,
            })
          );
      } catch (e) {
        noticeDispatch(
          showNotice({
            text: e.toString(),
            dismissable: true,
          })
        );
      }
    },
    [patchFirmware, queueFirmwareFlash, launchpads]
  );

  const downloadFirmware = useCallback(
    async (selectedLp: string, options: any) => {
      try {
        const fw = await patchFirmware(selectedLp, options);

        saveAs(new Blob([fw.buffer]), "output.syx");
      } catch (e) {
        noticeDispatch(
          showNotice({
            text: e.toString(),
            dismissable: true,
          })
        );
      }
    },
    [patchFirmware]
  );

  const uploadFirmware = useCallback(
    async (file?: File) => {
      if (!file) return;
      let firmware = new Uint8Array(await file.arrayBuffer());

      try {
        const targetLp = verifyFirmware(firmware);

        flashFirmware(targetLp, {}, firmware);
      } catch (e) {
        noticeDispatch(
          showNotice({
            text: e.toString(),
            dismissable: true,
          })
        );
      }
    },
    [flashFirmware, verifyFirmware]
  );

  // Handle loading of patching wasm when wasm support is confirmed
  useEffect(() => {
    if (wasmAvailable === false)
      noticeDispatch(
        showNotice({
          text: "Please use a browser with WebAssembly support.",
          dismissable: false,
        })
      );
    else if (wasmAvailable === true && wasmLoading)
      noticeDispatch(
        showNotice({
          text: "Loading...",
          dismissable: false,
        })
      );
    else noticeDispatch(clearNotice);
  }, [wasmAvailable, wasmLoading]);

  // Reveal hidden options when konami code entered
  useEffect(() => {
    if (konamiSuccess) setVisibleLps(lpModelsAll.concat("Custom SysEx File"));
  }, [konamiSuccess]);

  // Update patch options when selected LP changed
  useEffect(() => {
    setOptionState(flattenObject(lpOptions[selectedLp]));
  }, [selectedLp, setOptionState]);

  return (
    <div className="lp-firmware-utility">
      <SwitchTransition mode="out-in">
        <CSSTransition
          classNames="fade"
          addEndListener={(node, done) => {
            node.addEventListener("transitionend", done, false);
          }}
          key={noticeState.visible.toString()}
        >
          {!noticeState.visible ? (
            <div className={`inner`}>
              <div className="header">
                <p>Launchpad Firmware Utility</p>
              </div>

              <select
                className="launchpads"
                onChange={(e) =>
                  e.target.value === "Custom SysEx File"
                    ? fileRef.current?.click()
                    : setSelectedLp(e.target.value)
                }
              >
                {visibleLps.map((model) => (
                  <option value={model} key={model}>
                    {model}
                  </option>
                ))}
              </select>

              <div className="options">{getOptions(lpOptions[selectedLp])}</div>

              <div className="finish">
                <button
                  onClick={() => flashFirmware(selectedLp, optionState)}
                  disabled={!midiAvailable}
                >
                  update
                </button>
              </div>
              <input
                type="file"
                accept=".syx"
                style={{ display: "none" }}
                onChange={(e) => uploadFirmware(e.target.files?.[0])}
                ref={fileRef}
              />

              <div style={{ marginTop: -15 }} className="smol">
                <span>...or</span>
                <p onClick={() => downloadFirmware(selectedLp, optionState)}>
                  download
                </p>
              </div>

              <div
                className="smol"
                style={{
                  visibility: isWindows ? "visible" : "hidden",
                  marginTop: 20,
                }}
              >
                Don't forget to install
                <a
                  href="https://github.com/mat1jaczyyy/apollo-studio/raw/master/Publish/nvnusbaudio-2.15.5.exe"
                  target="_blank"
                  rel="noopener noreferrer"
                >
                  Novation's USB driver
                </a>
                !
              </div>
            </div>
          ) : (
            <div className={`notice`}>
              <div>
                <span>{noticeState.text}</span>
                {noticeState.dismissable && (
                  <CloseIcon
                    className="closeIcon"
                    onClick={() => noticeDispatch(clearNotice)}
                  />
                )}
              </div>
              <img
                src={noticeState.svg || ""}
                style={{
                  margin: noticeState.svg ? "50px 0" : 0,
                  visibility: noticeState.svg ? "visible" : "hidden",
                }}
                alt=""
              />
              <span
                style={{ visibility: !!noticeState.svg ? "visible" : "hidden" }}
              >
                {noticeState.bl}
              </span>
              <div
                className="progressDiv"
                style={{
                  visibility: noticeState.showProgress ? "visible" : "hidden",
                }}
              >
                <progress
                  style={{
                    visibility:
                      noticeState.showProgress && noticeState.visible
                        ? "visible"
                        : "hidden",
                  }}
                />
              </div>
            </div>
          )}
        </CSSTransition>
      </SwitchTransition>
      <footer className="footer">
        <span>built by Brendonovich, mat1jaczyyy, vaaski ©</span>
        <a
          href="https://github.com/mat1jaczyyy/LP-Firmware-Utility"
          target="_blank"
          rel="noopener noreferrer"
        >
          github
        </a>
      </footer>
    </div>
  );
};

export default App;
