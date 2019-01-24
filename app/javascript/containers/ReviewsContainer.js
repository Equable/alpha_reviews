import React, { Component } from "react";
import ReviewTile from '../tiles/ReviewTile'

class ReviewsContainer extends Component {
    constructor(props) {
        super(props);
        this.state = {
            reviews: []
        };
    }

    componentDidMount() {
        let id = this.props.restaurantId
        fetch(`/api/v1/reviews/${id}`)
            .then(response => {
                if (response.ok) {
                    return response;
                } else {
                }
            })
            .then(response => response.json())
            .then(body => {
                this.setState({ reviews: body.reviews });
            });
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
