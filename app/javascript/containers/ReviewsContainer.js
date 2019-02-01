import React, { Component } from "react";
import ReviewContainer from './ReviewContainer'

class ReviewsContainer extends Component {
    constructor(props) {
        super(props);
        this.state = {
          updated: false,
        };
    }
    componentDidUpdate(prevProps){
      if(prevProps.reviews != this.state.reviews){
      }
    }
    render() {
      let reviews = []
      if (this.props.reviews) {
        reviews = this.props.reviews
      }
      let reviewTiles = reviews.map(review => {
        let loggedIn = false
        if(this.props.user.id == review.user_id){
          loggedIn=true
        }
        return(
            <ReviewContainer 
              key={`rev_${review.id}`} 
              review={review} 
              loggedIn={loggedIn}
              user={this.props.user}
              loggedIn={loggedIn} deleteReview={this.props.deleteReview}
              />
          <ReviewContainer key={`rev_${review.id}`} review={review} />
        )
      })
      return (
          <div className="row">
              <h1>Reviews</h1>
              {reviewTiles}
          </div>
      );
    }
}

export default ReviewsContainer;
