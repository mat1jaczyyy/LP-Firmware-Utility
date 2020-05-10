import React from "react";
import { useAppState } from "../hooks";
import { useDispatch } from "react-redux";
import CloseIcon from "@material-ui/icons/Close";

import { hideNotice } from "../store/actions/notice";

const Notice = () => {
  const noticeState = useAppState(({ notice }) => notice);

  const dispatch = useDispatch();
  return (
    <div className={`notice`}>
      <div>
        <span>{noticeState.text}</span>
        {noticeState.dismissable && (
          <CloseIcon
            className="closeIcon"
            onClick={() => dispatch(hideNotice)}
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
      <span style={{ visibility: !!noticeState.svg ? "visible" : "hidden" }}>
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
  );
};

export default Notice;
