import React, { Component } from "react";

import ReviewsContainer from './ReviewsContainer'
import RestaurantInfoTile from '../tiles/RestaurantInfoTile'
import ReviewFormTile from '../tiles/ReviewFormTile'

class RestaurantContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      restaurant: {}
    };
    this.handleSubmit = this.handleSubmit.bind(this)
    this.postReview=this.postReview.bind(this)
    this.fetchRestaurantData = this.fetchRestaurantData.bind(this)
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
          let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
          throw error;
        }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({ restaurant: body.restaurant });
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
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
      this.setState({restaurant: restaurant})
    })
  }

  handleSubmit(formPayLoad){
    formPayLoad.restaurant_id = this.props.params.id
    this.postReview(formPayLoad)
  }

  render() {
    return (
      <div>
        <h1>Restaurant Show Page</h1>
        <RestaurantInfoTile restaurant= {this.state.restaurant}/>
        <ReviewsContainer reviews= {this.state.restaurant.reviews} />
        <ReviewFormTile handleSubmit={this.handleSubmit}/>

      </div>
    );
  }
}

export default RestaurantContainer;
