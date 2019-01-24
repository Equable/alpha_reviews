import RestaurantContainer from "../../app/javascript/containers/RestaurantContainer";
import { mount } from "enzyme";
import jasmineEnzyme from "jasmine-enzyme";
import React from "react";

describe("RestaurantContainer", () => {
  let text, wrapper;

  beforeEach(() => {
    wrapper = mount(<RestaurantContainer text="Address" />);
  });
});
