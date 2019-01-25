import RestaurantContainer from "../../app/javascript/containers/RestaurantContainer";
import RestaurantInfoTile from "../../app/javascript/tiles/RestaurantInfoTile";
import CategoryTile from "../../app/javascript/tiles/CategoryTile";
import fetchMock from 'fetch-mock'

describe('RestaurantContainer', () => {
  let wrapper, restaurant;

  beforeEach(() => {
    restaurant = {
      id: 1,
      name: "Papa Johns",
      street: "123 Food Lane",
      city:"Boston",
      state:"MA",
      zip:"02110",
      categories:[{name:"Fast Food"}]
    }

    fetchMock.get('/api/v1/restaurants/1', {
      status: 200,
      body: restaurant
    });

    wrapper = mount(
      <RestaurantContainer
        params = {{ id:1 }}
      />);
  });

  afterEach(fetchMock.restore)

  it('renders an h1', () => {
    expect(wrapper.find('h1')).toBePresent()
  })

  it('should have initial state with am empty restaurant', () => {
    setTimeout(() => {
      expect(wrapper.state()).toEqual({ restaurant: {} })
      done()
    }, 0)
  })

})
