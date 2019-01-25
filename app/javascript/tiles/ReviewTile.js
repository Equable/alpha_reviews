import React from 'react'

const ReviewTile = props => {
    return (
        <div>
            <h4>Rating: {props.review.rating}/100</h4>
            <h4>User: {props.review.user_id}</h4>
            <h6>Comment:</h6>
            <p>{props.review.comment}</p>
        </div>
    )
}

export default ReviewTile;
