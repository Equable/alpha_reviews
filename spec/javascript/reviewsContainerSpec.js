import ReviewsContainer from "../../app/javascript/containers/ReviewsContainer"

let wrapper;
let reviews;


beforeEach(() => {
  reviews = {
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
  let user = {id: 1}
  wrapper = mount(
    <ReviewsContainer user={user}reviews={reviews.reviews}/>
  );
});


describe('ReviewsContainer', () => {
  it('should have an h1 reviews header', () => {
    expect(wrapper.contains(<h1>Reviews</h1>)).toEqual(true)
  })

  it('shows reviews', (done) => {
    setTimeout(() => {
      expect(wrapper.contains(<h4>Rating: {reviews.reviews[0].rating}/5</h4>)).toEqual(true)

      expect(wrapper.contains(<p>{reviews.reviews[0].comment}</p>)).toEqual(true)
      done()
    }, 0)
  })

  it('edit buttons render', (done) => {
    setTimeout(() => {
      expect(wrapper.find('.edit').text()).toEqual('Edit')
      expect(wrapper.find('.edit').nodes.length).not.toEqual(reviews.reviews.length)
      done()
    }, 0)
  })

  it('edit form appears when clicking edit button', (done) => {
    setTimeout(() => {
      wrapper.find('.edit').simulate('click')
      setTimeout(() => {
        expect(wrapper.find('.edit-review')).toBePresent()
        done()
      })
    }, 0)
  })
})
