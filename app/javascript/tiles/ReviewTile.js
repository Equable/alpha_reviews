import React from 'react'

const ReviewTile = props => {
  let buttons = null;
  if(props.visible){
<<<<<<< HEAD
    buttons =
      <div className = "row" >
        <div className="small-6 column ">
         <button className="edit" onClick={props.onClick}>Edit</button>
         <button className="delete">Delete</button>
=======
    buttons = 
      <div className = "row" >
        <div className="small-6 column ">
         <button className="edit" onClick={props.onClick}>Edit</button>
         <button className="delete" onClick={props.delete}>Delete</button>
>>>>>>> 39dc30fb582990552df40461c0bad1b4c591cb8f
        </div>
      </div >;
  }
  return (
    <div className='review-tile'>
      <h4>Rating: {props.review.rating}/5</h4>
      <h4>User: {props.review.user_id}</h4>
      <h6>Comment:</h6>
      <p>{props.review.comment}</p>
      {buttons}
<<<<<<< HEAD
      <div className="row">
        <div className="small-6 column ">
          <button className="upvote success" onClick={props.upvote_click}>Upvotes: {props.upvotes}</button>
          <button className="downvote alert" onClick={props.downvote_click}>Downvotes: {props.downvotes}</button>
          <p> User Vote Status: {props.vote_status}, ID: {props.review.vote_id} </p>
        </div>
      </div>
=======
>>>>>>> 39dc30fb582990552df40461c0bad1b4c591cb8f
    </div>
  )
}

export default ReviewTile;
