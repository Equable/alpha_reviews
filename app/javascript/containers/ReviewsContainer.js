import React, { Component } from "react";
import ReviewTile from '../tiles/ReviewTile'

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
                <ReviewTile key={`rev_${review.id}`} review={review}/>
            )
        })
        return (
            <div>
                <h1>Reviews</h1>
                {reviewTiles}
            </div>
        );
    }
}

export default ReviewsContainer;
