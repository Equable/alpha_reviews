import React, { Component } from "react";
import ReviewEditFormTile from "../tiles/ReviewEditFormTile";
import ReviewTile from "../tiles/ReviewTile";

class ReviewContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      edit: false,
      review: {},
      vote_status: 0,
      upvotes: 0,
      downvotes: 0,
      vote_id: false,
      loggedIn: false,
      user_id: false
    };
    this.handleEditClick = this.handleEditClick.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateReview = this.updateReview.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.handleUpVoteClick = this.handleUpVoteClick.bind(this);
    this.handleDownVoteClick = this.handleDownVoteClick.bind(this);
  }
  handleEditClick() {
    this.setState({ edit: true });
  }

  handleChange(event) {
    let review = this.state.review;
    review[event.target.name] = event.target.value;
    this.setState({ review: review });
  }

  handleSubmit() {
    let review = { review: this.state.review };
    this.updateReview(review);
  }

  updateReview(review) {
    fetch(`/api/v1/reviews/${this.state.review.id}`, {
      method: "PATCH",
      body: JSON.stringify(review),
      credentials: "same-origin",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json"
      }
    })
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
        let rev = this.state.review;
        rev.rating = body.rating;
        rev.comment = body.comment;
        this.setState({ review: rev, edit: false });
      })
      .catch(error => {
        console.error(`Error in fetch: ${error.message}`),
          alert("there was a problem with the submission");
      });
  }

  deleteVote(vote) {
    fetch(`/api/v1/votes/${this.state.vote_id}`, {
      method: "DELETE",
      body: JSON.stringify(vote),
      credentials: "same-origin",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json"
      }
    })
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
          throw error;
        }
      })
      .catch(error => {
        console.error(`Error in fetch: ${error.message}`),
          alert("there was a problem with the submission");
      });
  }

  postVote(vote) {
    fetch("/api/v1/votes/", {
      method: "POST",
      body: JSON.stringify(vote),
      credentials: "same-origin",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json"
      }
    }).then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
        throw error;
      }
    });
  }

  handleUpVoteClick() {
    if (this.state.user_id) {
      if (this.state.vote_status === 1) {
        this.setState({
          vote_status: 0,
          upvotes: (this.state.upvotes -= 1)
        });
        this.deleteVote();
      } else if (this.state.vote_status === -1) {
        this.setState({
          vote_status: 1,
          upvotes: (this.state.upvotes += 1),
          downvotes: (this.state.downvotes -= 1)
        });
        this.deleteVote();
        let vote = {
          user_id: this.state.user_id,
          review_id: this.state.review.id,
          status: true
        };
        this.postVote(vote);
      } else if (this.state.vote_status === 0) {
        this.setState({
          vote_status: 1,
          upvotes: (this.state.upvotes += 1)
        });
        let vote = {
          user_id: this.state.user_id,
          review_id: this.state.review.id,
          status: true
        };
        this.postVote(vote);
      } else {
        let errorMessage = "You must be logged in to vote!",
          error = new Error(errorMessage);
        throw error;
      }
    }
  }

  handleDownVoteClick() {
    if (this.state.user_id) {
      if (this.state.vote_status === -1) {
        this.setState({
          vote_status: 0,
          downvotes: (this.state.downvotes -= 1)
        });
        this.deleteVote();
      } else if (this.state.vote_status === 1) {
        this.setState({
          vote_status: -1,
          downvotes: (this.state.downvotes += 1),
          upvotes: (this.state.upvotes -= 1)
        });
        this.deleteVote();
        let vote = {
          user_id: this.state.user_id,
          review_id: this.state.review.id,
          status: 0
        };
        this.postVote(vote);
      } else if (this.state.vote_status === 0) {
        this.setState({
          vote_status: -1,
          downvotes: (this.state.downvotes += 1)
        });
        let vote = {
          user_id: this.state.user_id,
          review_id: this.state.review.id,
          status: 0
        };
        this.postVote(vote);
      } else {
        let errorMessage = "You must be logged in to vote!",
          error = new Error(errorMessage);
        throw error;
      }
    }
  }

  componentDidMount() {
    this.setState({
      review: this.props.review,
      loggedIn: this.props.loggedIn,
      vote_status: this.props.review.vote_status,
      upvotes: this.props.review.upvotes,
      downvotes: this.props.review.downvotes,
      vote_id: this.props.review.vote_id,
      user_id: this.props.user.id
    });
    this.setState({ review: this.props.review, loggedIn: this.props.loggedIn });
  }

  render() {
    let deleteClick = () => {
      this.props.deleteReview(this.state.review.id);
    };
    let review = () => {
      let upvoted;
      let downvoted;

      if (this.state.vote_status === 1) {
        upvoted = "upvote success vote-button vote-button-voted";
        downvoted = "downvote alert vote-button";
      } else if (this.state.vote_status === -1) {
        upvoted = "upvote success vote-button";
        downvoted = "downvote alert vote-button vote-button-voted";
      } else {
        upvoted = "upvote success vote-button";
        downvoted = "downvote alert vote-button";
      }

      if (this.state.edit) {
        return (
          <ReviewEditFormTile
            handleSubmit={this.handleSubmit}
            review={this.state.review}
            handleChange={this.handleChange}
          />
        );
      } else {
        return (
          <ReviewTile
            key={`RevT_${this.state.review.id}`}
            review={this.state.review}
            onClick={this.handleEditClick}
            visible={this.state.loggedIn}
            delete={deleteClick}
            upvote_click={this.handleUpVoteClick}
            downvote_click={this.handleDownVoteClick}
            upvoted={upvoted}
            downvoted={downvoted}
            upvotes={this.state.upvotes}
            downvotes={this.state.downvotes}
          />
        );
      }
    };
    return <div className="review-container small-12 panel">{review()}</div>;
  }
}

export default ReviewContainer;
