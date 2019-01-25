import React, { Component } from "react";
import ReviewTile from '../tiles/ReviewTile'

class ReviewsContainer extends Component {
    constructor(props) {
        super(props);
        this.state = {
            reviews: []
        };
    }

    render() {
        let reviewTiles = this.state.reviews.map(review => {
            return(
                <ReviewTile review={review} />
            )
        })
        return (
            <div>
                <h1>Reviews</h1>
            </div>
        );
    }
}

export default ReviewsContainer;
