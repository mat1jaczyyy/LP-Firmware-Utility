import React from "react";
import { SwitchTransition, CSSTransition } from "react-transition-group";

import { useAppState } from "../hooks";

import Footer from "../components/Footer";
import Header from "../components/Header";
import Notice from "../components/Notice";

export default ({ children }: any) => {
  const noticeVisible = useAppState(({ notice }) => notice.visible);

  return (
    <>
      <SwitchTransition mode="out-in">
        <CSSTransition
          classNames="fade"
          addEndListener={(node, done) => {
            node.addEventListener("transitionend", done, false);
          }}
          key={noticeVisible.toString()}
        >
          {!noticeVisible ? (
            <>
              <Header />
              {children}
            </>
          ) : (
            <Notice />
          )}
        </CSSTransition>
      </SwitchTransition>
      <Footer />
    </>
  );
};
