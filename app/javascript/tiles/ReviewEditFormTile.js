import React from "react";

const ReviewEditFormTile = props => {
  let handleChange = (event) =>{
    event.preventDefault()
    props.handleChange(event)
  }
  let handleSubmit = (event) =>{
    event.preventDefault()
    props.handleSubmit()
  }
  return(
    <div>
      <form onSubmit={handleSubmit}>
        <label name='rating'>Rating: </label>
        <select name='rating' value={props.review.rating} onChange={handleChange}>
        <option value='0' hidden></option>
        <option value='1'>1 Star</option>
        <option value='2'>2 Star</option>
        <option value='3'>3 Star</option>
        <option value='4'>4 Star</option>
        <option value='5'>5 Star</option>
        </select>
        <label name='comment'>Answer:</label>
        <textarea name='comment' value={props.review.comment} onChange={handleChange}></textarea>
        <input type='submit' className="button" value='Submit'></input>
      </form>
    </div>
  )
}

export default ReviewEditFormTile;
