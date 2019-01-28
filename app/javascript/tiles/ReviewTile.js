import React from 'react'
import { Link } from 'react-router'

const ReviewTile = props => {
    return (
        <div className='review-tile'>
            <h4>Rating: {props.review.rating}/100</h4>
            <h4>User: {props.review.user_id}</h4>
            <h6>Comment:</h6>
            <p>{props.review.comment}</p>
            <Link to={`/reviews/${props.review.id}/edit`}>Edit</Link>
        </div>
    )
}

export default ReviewTile;
