import React, { Component } from "react";

import ReviewsContainer from './ReviewsContainer'
import RestaurantInfoTile from '../tiles/RestaurantInfoTile'
import ReviewFormTile from '../tiles/ReviewFormTile'

class RestaurantContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      restaurant: {},
    };
    this.handleSubmit = this.handleSubmit.bind(this)
    this.postReview=this.postReview.bind(this)
    this.fetchRestaurantData = this.fetchRestaurantData.bind(this)
    this.deleteReview = this.deleteReview.bind(this)
  }


  componentDidMount() {
    let id = this.props.params.id;
    this.fetchRestaurantData(id)
  }

  fetchRestaurantData(id){
    fetch(`/api/v1/restaurants/${id}`)
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`, error = new Error(errorMessage);
          throw error;
        }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({ restaurant: body.restaurant });
      })
  }
  
  deleteReview(review_id){
    fetch(`/api/v1/reviews/${review_id}`, {
      method: 'DELETE',
      body: JSON.stringify({review_id: review_id}),
      credentials: 'same-origin',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      }
    })
      .then(response => {
        if (response.ok) {
          this.fetchRestaurantData(this.props.params.id)
        } else {
          let errorMessage = `${response.status} (${response.statusText})`, error = new Error(errorMessage)
          throw (error)
        }
      })
  }

  postReview(review){
    fetch("/api/v1/reviews/", {
      method: 'POST',
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
    .then(response => response.json())
    .then(body=>{
      let restaurant = this.state.restaurant
      restaurant.reviews= restaurant.reviews.concat(body.review)
      restaurant.commented= true
      this.setState({restaurant: restaurant})
    })
  }

  handleSubmit(formPayLoad){
    formPayLoad.restaurant_id = this.props.params.id
    this.postReview(formPayLoad)
  }

  render() {
    let user = this.state.restaurant.user
    let form = null
    if (!this.state.restaurant.commented) { form = <ReviewFormTile handleSubmit={this.handleSubmit} />}
    if(!user){user = 0}
    return (
      <div>
        <h1>Restaurant Show Page</h1>
        <RestaurantInfoTile restaurant= {this.state.restaurant}/>
        <ReviewsContainer reviews= {this.state.restaurant.reviews} user={user} deleteReview={this.deleteReview}/>
        {form}
      </div>
    );
  }
}

export default RestaurantContainer;
