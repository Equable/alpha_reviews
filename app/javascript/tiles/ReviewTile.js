import React from 'react'

const ReviewTile = props => {
    console.log(rev)
    return (
        <div>
            <h1>Rating</h1>
            <h4>{props.review.rating}/100</h4>
        </div>
    )
}

export default ReviewTile;
