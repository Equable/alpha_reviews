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
      <div className="row">
        <div className="small-6 column ">
          <button className="upvote" onClick={props.onClick}>Upvotes: {props.review.upvotes}</button>
          <button className="downvote" onClick={props.onClick}>Downvotes: {props.review.downvotes}</button>
          <p> User Vote Status: {props.review.vote_status}, ID: {props.review.vote_id} </p>
        </div>
      </div>
    </div>
  )
}

export default ReviewTile;
