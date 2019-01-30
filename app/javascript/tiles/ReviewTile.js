import React from 'react'

const ReviewTile = props => {
  return (
    <div className='review-tile'>
      <h4>Rating: {props.review.rating}/5</h4>
      <h4>User: {props.review.user_id}</h4>
      <h6>Comment:</h6>
      <p>{props.review.comment}</p>
      <div className="row">
        <div className="small-6 column ">
          <button className="edit" onClick={props.onClick}>Edit</button>
        </div>
      </div>
    </div>
  )
}

export default ReviewTile;
