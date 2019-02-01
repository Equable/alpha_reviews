import React, { Component } from "react"
import ReviewEditFormTile from "../tiles/ReviewEditFormTile";
import ReviewTile from "../tiles/ReviewTile"

class ReviewContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      edit: false,
      review: {},
<<<<<<< HEAD
      vote_status: 0,
      upvotes: 0,
      downvotes: 0,
      vote_id: false,
      loggedIn:false,
      user_id: false
=======
      loggedIn:false
>>>>>>> 39dc30fb582990552df40461c0bad1b4c591cb8f
    };
    this.handleEditClick = this.handleEditClick.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
    this.updateReview = this.updateReview.bind(this)
    this.handleChange = this.handleChange.bind(this)
    this.handleUpVoteClick = this.handleUpVoteClick.bind(this)
    this.handleDownVoteClick = this.handleDownVoteClick.bind(this)
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

  deleteVote(vote) {
    fetch(`/api/v1/votes/${this.state.vote_id}`, {
      method: 'DELETE',
      body: JSON.stringify(vote),
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
    .catch(error => {
      console.error(`Error in fetch: ${error.message}`),
      alert("there was a problem with the submission")
    });
  }

  postVote(vote){
    fetch("/api/v1/votes/", {
      method: 'POST',
      body: JSON.stringify(vote),
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
  }



  handleUpVoteClick(){
    if (this.state.user_id) {
      if (this.state.vote_status === 1) {
        this.setState({
          vote_status: 0, 
          upvotes: this.state.upvotes -= 1
        })
        this.deleteVote()
      }
      else if (this.state.vote_status === -1) {
        this.setState({
          vote_status: 1, 
          upvotes: this.state.upvotes += 1, 
          downvotes: this.state.downvotes -= 1
        })
        this.deleteVote()
        let vote = {
          user_id: this.state.user_id, 
          review_id: this.state.review.id, 
          status: true
        }
        this.postVote(vote)
      }
      else if (this.state.vote_status === 0) {
        let vote = {
          user_id: this.state.user_id, 
          review_id: this.state.review.id, 
          status: true}
        this.postVote(vote)
      }
      else {
        let errorMessage = "You must be logged in to vote!", error = new Error(errorMessage)
        throw (error)   
      }
    }
  }

  handleDownVoteClick(){
    if (this.state.user_id) {
      if (this.state.vote_status === -1) {
        this.setState({
          vote_status: 0, 
          downvotes: this.state.downvotes -= 1})
        this.deleteVote()
      }
      else if (this.state.vote_status === 1) {
        this.setState({
          vote_status: -1, 
          downvotes: this.state.downvotes += 1, 
          upvotes: this.state.upvotes -= 1})
        this.deleteVote()
        let vote = {
          user_id: this.state.user_id, 
          review_id: this.state.review.id, 
          status: 0}
        this.postVote(vote)
      }
      else if (this.state.vote_status === 0) {
        this.setState({
          vote_status: -1, 
          downvotes: this.state.downvotes += 1
        })
        let vote = {
          user_id: this.state.user_id, 
          review_id: this.state.review.id, 
          status: 0
        }
        this.postVote(vote)
      }
    else {
      let errorMessage = "You must be logged in to vote!", error = new Error(errorMessage)
      throw (error)   
    }
    }
  }

  componentDidMount(){
<<<<<<< HEAD
    this.setState({
      review: this.props.review,
      loggedIn: this.props.loggedIn,
      vote_status: this.props.review.vote_status,
      upvotes: this.props.review.upvotes,
      downvotes: this.props.review.downvotes,
      vote_id: this.props.review.vote_id,
      user_id: this.props.user.id
      })
=======
    this.setState({review: this.props.review, loggedIn: this.props.loggedIn})
>>>>>>> 39dc30fb582990552df40461c0bad1b4c591cb8f
  }


  render() {
    let deleteClick = () =>{
      this.props.deleteReview(this.state.review.id)
    }
    let review =()=>{

      let you_voted 

      if ( this.state.vote_status === 1 ) {
        you_voted = "You Upvoted this! :D"
      }
      else if ( this.state.vote_status === -1 ) {
        you_voted = "You Downvoted this! D:"
      }
      else {
        you_voted = "You haven't voted! T_T"
      }

      if(this.state.edit){
        return <ReviewEditFormTile
                  handleSubmit={this.handleSubmit}
                  review={this.state.review}
                  handleChange={this.handleChange}
                  />
      } else{
<<<<<<< HEAD
        return <ReviewTile
                  review={this.state.review}
                  onClick={this.handleEditClick}
                  vote_status={you_voted}
                  upvotes={this.state.upvotes}
                  downvotes={this.state.downvotes}
                  upvote_click={this.handleUpVoteClick}
                  downvote_click={this.handleDownVoteClick}
                  visible={this.state.loggedIn}
                  key={`RevT_${this.state.review.id}`}
                  />
=======
        return <ReviewTile key={`RevT_${this.state.review.id}`} review={this.state.review} onClick={this.handleEditClick} visible={this.state.loggedIn} delete={deleteClick}/>
>>>>>>> 39dc30fb582990552df40461c0bad1b4c591cb8f
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
