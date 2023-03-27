import React, { Component } from "react";
import { render } from "react-dom";

export default class Website extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <h1 className="bg-slate-600 font-bold text-7xl">Home Page with React</h1>
      </div>
  )}
}

const appDiv = document.getElementById("container");
render(<Website />, appDiv);