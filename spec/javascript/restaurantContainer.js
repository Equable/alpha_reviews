import RestaurantContainer from "../../app/javascript/containers/RestaurantContainer";
// import RestaurantInfoTile from "../../app/javascript/tiles/RestaurantInfoTile";
// import CategoryTile from "../../app/javascript/tiles/CategoryTile";
import ReviewsContainer from "../../app/javascript/containers/ReviewsContainer"
import ReviewFormTile from "../../app/javascript/tiles/ReviewFormTile"

import fetchMock from 'fetch-mock'


let wrapper;
let restaurant;

beforeEach(() => {
  restaurant = {
    restaurant:{
      id: 1,
      name: "Papa Johns",
      street: "123 Food Lane",
      city:"Boston",
      state:"MA",
      zip:"02110",
      categories:[{name:"Fast Food"}],
      reviews: [
          {
          id: 1,
          rating: 80,
          user_id: 1,
          restaurant_id: 1,
          comment: "review 1",
          created_at: "2019-01-28T15:07:35.401Z",
          updated_at: "2019-01-28T15:07:35.401Z"
          },
          {
          id: 2,
          rating: 100,
          user_id: 2,
          restaurant_id: 1,
          comment: "review 2",
          created_at: "2019-01-28T15:10:02.597Z",
          updated_at: "2019-01-28T15:10:02.597Z"
          },
          {
          id: 3,
          rating: 60,
          user_id: 3,
          restaurant_id: 1,
          comment: "review 3",
          created_at: "2019-01-28T15:15:30.190Z",
          updated_at: "2019-01-28T15:15:30.190Z"
          }
        ]
      }
  }
  fetchMock.get('/api/v1/restaurants/1', {
    status: 200,
    body: restaurant
  });
  wrapper = mount(
    <RestaurantContainer params={{id: restaurant.restaurant.id}}/>
  );

});

afterEach(fetchMock.restore)

describe('RestaurantContainer', () => {

  it('state is updated with fetch api data from /api/v1/restaurants/1', (done) => {
    setTimeout(() => {
      expect(wrapper.state('restaurant')).toEqual(restaurant.restaurant)
      done()
    }, 0)
  })

  it('should have an h1 reviews header', () => {
    expect(wrapper.find('h1').nodes[2].innerHTML).toEqual("Reviews")
  })

  it('should have review tiles with a rating', (done) => {
    setTimeout(() => {
      expect(wrapper.find('.review-tile').nodes.length).toEqual(restaurant.restaurant.reviews.length)
      expect(wrapper.contains(<h4>Rating: {restaurant.restaurant.reviews[0].rating}/100</h4>)).toEqual(true)
      done()
    }, 0)
  })
})
