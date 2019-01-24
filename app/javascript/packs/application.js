import "babel-polyfill";
import React from "react";
import ReactDOM from "react-dom";

import App from "../react/components/app";

$(function() {
  ReactDOM.render(<App />, document.getElementById("app"));
});
