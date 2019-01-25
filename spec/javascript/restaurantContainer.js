import RestaurantContainer from "../../app/javascript/containers/RestaurantContainer";
import RestaurantInfoTile from "../../app/javascript/tiles/RestaurantInfoTile"

describe("RestaurantContainer", () => {
  let text,
      wrapper;

  beforeEach(() => {
    wrapper = mount(
      <RestaurantContainer
      text="Address"
      />);
  });
});
