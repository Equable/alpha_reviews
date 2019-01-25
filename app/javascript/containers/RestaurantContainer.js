import React, { Component } from "react";
<<<<<<< HEAD

import ReviewsContainer from './ReviewsContainer'
import RestaurantInfoTile from '../tiles/RestaurantInfoTile'
=======
import RestaurantInfoTile from "../tiles/RestaurantInfoTile";
>>>>>>> a4750169ab2fec584a3f33e6e3dda014f913dd4f

class RestaurantContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      restaurant: {}
    };
  }

  componentDidMount() {
    let id = this.props.params.id;
    fetch(`/api/v1/restaurants/${id}`)
      .then(response => {
        if (response.ok) {
          return response;
        } else {
        }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({ restaurant: body.restaurant });
      });
  }

  render() {
    console.log(this.state.restaurant);

    return (
      <div>
<<<<<<< HEAD
        <RestaurantInfoTile restaurant= {this.state.restaurant}/>
        <ReviewsContainer restaurantId= {this.state.restaurant.id} />
=======
        <RestaurantInfoTile restaurant={this.state.restaurant} />
>>>>>>> a4750169ab2fec584a3f33e6e3dda014f913dd4f
      </div>
    );
  }
}

export default RestaurantContainer;
