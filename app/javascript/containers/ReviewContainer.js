import React, { Component } from "react"
import ReviewEditFormTile from "../tiles/ReviewEditFormTile";
import ReviewTile from "../tiles/ReviewTile"

class ReviewContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      edit: false,
      review: {},
      vote_status: {}
    };
    this.handleEditClick = this.handleEditClick.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
    this.updateReview = this.updateReview.bind(this)
    this.handleChange = this.handleChange.bind(this)
  }
  handleEditClick(){
    this.setState({edit: true})
  }

  handleChange(event){
    let review = this.state.review
    review[event.target.name] = event.target.value
    this.setState({review: review})
  }

  handleSubmit() {
    let review = { review: this.state.review}
    this.updateReview(review)
  }

  updateReview(review) {
    fetch(`/api/v1/reviews/${this.state.review.id}`, {
      method: 'PATCH',
      body: JSON.stringify(review),
      credentials: 'same-origin',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      }
    })
    .then(response => {
      if (response.ok) {
        return response
      } else {
        let errorMessage = `${response.status} (${response.statusText})`, error = new Error(errorMessage)
        throw (error)
      }
    })
    .then(response => response.json())
    .then(body => {
      let rev = this.state.review
      rev.rating = body.rating
      rev.comment = body.comment
      this.setState({review: rev, edit: false})
    })
    .catch(error => {
      console.error(`Error in fetch: ${error.message}`),
      alert("there was a problem with the submission")
    });
  }

  componentDidMount(){
    this.setState({review: this.props.review})
    this.setState({vote_status: this.props.review.vote_status})
  }

  render() {
    let review =()=>{

      let vote_button_class
      if (this.state.vote_status) {
        vote_button_class = ''
      }

      if(this.state.edit){
        return <ReviewEditFormTile 
                  handleSubmit={this.handleSubmit} 
                  review={this.state.review} 
                  handleChange={this.handleChange}
                  vote_status={this.state.vote_status}
                  />
      } else{
        return <ReviewTile 
                  review={this.state.review} 
                  onClick={this.handleEditClick} 
                  vote_status={this.state.vote_status}
                  />
      }
    }
    return (
      <div className='review-container small-12 panel'>
        {review()}
      </div>
    );
  }
}

export default ReviewContainer;
