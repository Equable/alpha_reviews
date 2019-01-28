import React, { Component } from "react";

class ReviewEditFormTile extends Component {
    constructor(props) {
        super(props);
        this.state = {
          review: {}
        };

        this.handleChange = this.handleChange.bind(this)
        this.fetchReviewData = this.fetchReviewData.bind(this)
    }
    handleChange(event){
      this.setState({[event.target.name]: event.target.value })
    }

    componentDidMount() {
      let id = this.props.params.id;
      this.fetchReviewData(id)
    }

    fetchReviewData(id){
      fetch(`/api/v1/reviews/${id}`)
        .then(response => {
          if (response.ok) {
            return response;
          } else {
            let errorMessage = `${response.status} (${response.statusText})`,
              error = new Error(errorMessage);
            throw error;
          }
        })
        .then(response => response.json())
        .then(body => {
          debugger
          this.setState({ review: body });
        })
        .catch(error => console.error(`Error in fetch: ${error.message}`));
    }

    render() {
      let handleSubmit = (event) => {
        event.preventDefault()
        this.props.handleSubmit(this.state)
      }
      return(
        <div>
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
            <input type='submit' value='Submit'></input>
          </form>
        </div>
      )
    }
}

export default ReviewEditFormTile;
