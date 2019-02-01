import RestaurantContainer from "../../app/javascript/containers/RestaurantContainer";

import fetchMock from 'fetch-mock'

let wrapper;
let restaurantCont;

beforeEach(() => {
  fetchMock.restore()
  restaurantCont = {
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
          updated_at: "2019-01-28T15:07:35.401Z",
          review_user_email: 'hello@gmail.com'
          },
          {
          id: 2,
          rating: 5,
          user_id: 2,
          restaurant_id: 1,
          comment: "review 2",
          created_at: "2019-01-28T15:10:02.597Z",
          updated_at: "2019-01-28T15:10:02.597Z",
          review_user_email: 'hello@gmail.com'
          },
          {
          id: 3,
          rating: 3,
          user_id: 3,
          restaurant_id: 1,
          comment: "review 3",
          created_at: "2019-01-28T15:15:30.190Z",
          updated_at: "2019-01-28T15:15:30.190Z",
          review_user_email: 'hello@gmail.com'
          }
        ],
      user: {
        id: 5,
        email: "louis@gmail.com",
        review_user_email: 'hello@gmail.com',
        created_at: "2019-01-31T21:31:05.127Z",
        updated_at: "2019-01-31T21:31:05.127Z",
        admin: false,
        avatar: {
          url: null
        }
      },
      commented: false
    }
  }
  fetchMock.get('/api/v1/restaurants/1', {
    status: 200,
    body: restaurantCont
  });
  
  wrapper = mount(
    <RestaurantContainer params={{id: restaurantCont.restaurant.id}}/>
  );

});

afterEach(fetchMock.restore)

describe('RestaurantContainer', () => {

  it('state is updated with fetch api data from /api/v1/restaurants/1', (done) => {
    setTimeout(() => {
      expect(wrapper.state('restaurant')).toEqual(restaurantCont.restaurant)
      done()
    }, 0)
  })



  it('should have review tiles with a rating', (done) => {
    setTimeout(() => {
      expect(wrapper.find('.review-tile').nodes.length).toEqual(restaurantCont.restaurant.reviews.length)
      expect(wrapper.contains(<h4>Rating: {restaurantCont.restaurant.reviews[0].rating}/5</h4>)).toEqual(true)
      done()
    }, 0)
  })

  it('successfully adds to the reviews when a valid review is supplied', (done) => {
  fetchMock.post('/api/v1/reviews/', {
    status: 201,
    body: {
      review:{
        comment: "test",
        created_at: "2019-01-28T22:37:03.535Z",
        id: 4,
        rating: 5,
        restaurant_id: 1,
        updated_at: "2019-01-28T22:37:03.535Z",
        user_id: 5,
        review_user_email: 'hello@gmail.com'
      }
    }
  });
  setTimeout(() => {
    let reviewLength = wrapper.find('.review-tile').nodes.length
    wrapper.find('.submit').simulate('submit')
    setTimeout(() => {
      expect(wrapper.contains(<h4>Rating: 5/5</h4>)).toEqual(true)
      expect(wrapper.contains(<p>test</p>)).toEqual(true)
      expect(wrapper.find('.review-tile').nodes.length).toEqual(reviewLength + 1)
      done()
    })
  }, 0)
})
})
