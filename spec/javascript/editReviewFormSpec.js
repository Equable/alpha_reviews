import RestaurantContainer from "../../app/javascript/containers/RestaurantContainer";

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
          rating: 4,
          user_id: 1,
          restaurant_id: 1,
          comment: "review 1",
          created_at: "2019-01-28T15:07:35.401Z",
          updated_at: "2019-01-28T15:07:35.401Z"
          },
          {
          id: 2,
          rating: 5,
          user_id: 2,
          restaurant_id: 1,
          comment: "review 2",
          created_at: "2019-01-28T15:10:02.597Z",
          updated_at: "2019-01-28T15:10:02.597Z"
          },
          {
          id: 3,
          rating: 3,
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

describe('ReviewEditFormTile', () => {
  it('successfully edits review when edit form is submitted', (done) => {
    let id = restaurant.restaurant.reviews[0].id
    fetchMock.patch(`/api/v1/reviews/${id}`, {
      status: 204,
      body: {
        comment: "test",
        created_at: "2019-01-28T22:37:03.535Z",
        id: id,
        rating: 3,
        restaurant_id: 1,
        updated_at: "2019-01-28T22:37:03.535Z",
        user_id: 1
      }
    });

    setTimeout(() => {
      expect(wrapper.find('.review-tile > h4').first().render().text()).toEqual(`Rating: ${restaurant.restaurant.reviews[0].rating}/5`)
      wrapper.find('.edit').first().simulate('click')
      setTimeout(() => {
        expect(wrapper.find('.review-tile').nodes.length).toEqual(restaurant.restaurant.reviews.length - 1)
        wrapper.find('.edit-submit').first().simulate('submit')
        setTimeout(() => {
          expect(wrapper.find('.review-tile > h4').first().render().text()).toEqual('Rating: 3/5')
          done()
        })
      })
    }, 0)
  })
})

describe('ReviewEditFormTile', () => {
  it('does not update on a bad response', (done) => {
    let id = restaurant.restaurant.reviews[0].id
    fetchMock.patch(`/api/v1/reviews/${id}`, {
      status: 406,
      body: {
        comment: "test",
        created_at: "2019-01-28T22:37:03.535Z",
        id: id,
        rating: 3,
        restaurant_id: 1,
        updated_at: "2019-01-28T22:37:03.535Z",
        user_id: 1
      }
    });

    setTimeout(() => {
      expect(wrapper.find('.review-tile > h4').first().render().text()).toEqual(`Rating: ${restaurant.restaurant.reviews[0].rating}/5`)
      wrapper.find('.edit').first().simulate('click')
      setTimeout(() => {
        wrapper.find('.edit-submit').first().simulate('submit')
        setTimeout(() => {
          expect(wrapper.find('.edit-review')).toBePresent()
          expect(wrapper.find('.review-tile').nodes.length).toEqual(restaurant.restaurant.reviews.length - 1)
          done()
        })
      })
    }, 0)
  })
})
