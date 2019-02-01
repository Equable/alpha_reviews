import React from "react";

const ReviewTile = props => {
  let buttons = null;
  if (props.visible) {
    buttons = (
      <div className="row">
        <div className="small-6 small-centered medium-centered large-centered column ">
          <button className="edit vote-button" onClick={props.onClick}>
            Edit
          </button>
          <button className="delete vote-button" onClick={props.delete}>
            Delete
          </button>
        </div>
      </div>
    );
  }
  return (
    <div className="row gutter-large">
      <div className="review-tile">
        <h4>Rating: {props.review.rating}/5</h4>
        <h4>User: {props.userName}</h4>
        <h6>Comment:</h6>
        <p>{props.review.comment}</p>
        {buttons}
        <div className="row">
          <div className="small-6 small-centered medium-centered large-centered column ">
            <button className={props.upvoted} onClick={props.upvote_click}>
              Upvotes: {props.upvotes}
            </button>
            <button className={props.downvoted} onClick={props.downvote_click}>
              Downvotes: {props.downvotes}
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ReviewTile;
