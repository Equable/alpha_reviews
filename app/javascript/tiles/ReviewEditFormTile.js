import React, { Component } from "react";

class ReviewEditFormTile extends Component {
    constructor(props) {
        super(props);
        this.state = {
          rating: 1,
          comment: "",
          restaurant_id: null
        };

        this.handleChange = this.handleChange.bind(this)
        this.fetchReviewData = this.fetchReviewData.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
        this.updateReview = this.updateReview.bind(this)
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
          this.setState({ rating: body.rating, comment: body.comment, restaurant_id: body.restaurant_id });
        })
        .catch(error => console.error(`Error in fetch: ${error.message}`));
    }


    handleSubmit(event) {
      event.preventDefault()
      let review = { review:{ rating: this.state.rating, comment: this.state.comment, restaurant_id: this.state.restaurant_id } }
      this.updateReview(review)
      this.props.history.push(`/restaurants/${this.state.restaurant_id}`)
    }


    updateReview(review){
      fetch(`/api/v1/reviews/${this.props.params.id}`, {
        method: 'PATCH',
        body: JSON.stringify(review),
        credentials: 'same-origin',
        headers:{
          'Accept' : 'application/json',
          'Content-Type' : 'application/json'
        }
      })
      .then(response => {
        if(response.ok){
          return response
        } else {
          let errorMessage= `${response.status} (${response.statusText})`, error = new Error(errorMessage)
          throw(error)
        }
      })
      .catch(error => {
        console.error(`Error in fetch: ${error.message}`),
        alert("There was a problem with the submission.")
      });
    }




    render() {
      return(
        <div>
          <form onSubmit={this.handleSubmit}>
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
