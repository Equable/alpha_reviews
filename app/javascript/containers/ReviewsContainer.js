import React, { Component } from "react";
import ReviewContainer from './ReviewContainer'

class ReviewsContainer extends Component {
    constructor(props) {
        super(props);
        this.state = {

        };
    }

    render() {
        let reviews = []
        if (this.props.reviews) {
          reviews = this.props.reviews
        }
        let reviewTiles = reviews.map(review => {

            return(
                <ReviewContainer key={`rev_${review.id}`} review={review}/>
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
