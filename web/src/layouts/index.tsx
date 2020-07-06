import React from "react";
import { SwitchTransition, CSSTransition } from "react-transition-group";

import Footer from "../components/Footer";
import Header from "../components/Header";
import Notice from "../components/Notice";
import { useStore } from "../hooks";
import { useObserver } from "mobx-react-lite";

export default ({ children }: any) => {
  const noticeStore = useStore(({ notice }) => notice);

  return useObserver(() => (
    <>
      <SwitchTransition mode="out-in">
        <CSSTransition
          classNames="fade"
          addEndListener={(node, done) => {
            node.addEventListener("transitionend", done, false);
          }}
          key={noticeStore.state.visible.toString()}
        >
          {!noticeStore.state.visible ? (
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
  ));
};
