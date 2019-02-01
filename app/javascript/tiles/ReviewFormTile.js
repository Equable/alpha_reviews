import React, { Component } from "react";

class ReviewFormTile extends Component {
    constructor(props) {
        super(props);
        this.state = {
          rating: 1,
          comment:""
        };

        this.handleChange = this.handleChange.bind(this)
    }
    handleChange(event){
      this.setState({[event.target.name]: event.target.value })
    }

    render() {
      let handleSubmit = (event) => {
        event.preventDefault()
        this.props.handleSubmit(this.state)
        this.setState({rating:1, comment:""})
      }
      return(
        <div className='row'>
          <div className='review-container small-12 panel'>
            <h2>Add a Review:</h2> <br />
            <form onSubmit={handleSubmit}>
              <label name='rating'>Rating: </label>
              <select name='rating' value={this.state.rating} onChange={this.handleChange}>
              <option value='0' hidden></option>
              <option value='1'>1 Star</option>
              <option value='2'>2 Star</option>
              <option value='3'>3 Star</option>
              <option value='4'>4 Star</option>
              <option value='5'>5 Star</option>
              </select>
              <label name='comment'>Answer:</label>
              <textarea name='comment' value={this.state.comment} onChange={this.handleChange}></textarea>
              <input className="button submit" type='submit' value='Submit'></input>
            </form>
          </div>
        </div>
      )
    }
}

export default ReviewFormTile;
