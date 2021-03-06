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

        let userName = ''
        if (review.review_user_email) {
          userName = review.review_user_email.split("@");
          userName = userName[0]
        }
        else {
          userName = this.props.user.email.split("@");
          userName = userName[0]
        }

        

        return(
            <ReviewContainer 
              key={`rev_${review.id}`} 
              review={review} 
              loggedIn={loggedIn}
              user={this.props.user}
              loggedIn={loggedIn} 
              deleteReview={this.props.deleteReview}
              userName={userName}
              />
        )
      })
      return (
          <div className="row">
              {reviewTiles}
          </div>
      );
    }
}

export default ReviewsContainer;
