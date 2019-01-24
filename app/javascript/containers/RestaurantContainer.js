import React, { Component } from "react";

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
        this.setState({ restaurant: body });
      });
  }

  render() {
    console.log(this.state.restaurant);
    return (
      <div>
        <h1>{this.state.restaurant.name}</h1>
        <h1>TBD categories</h1>
        <p>{this.state.restaurant.street} </p>
        <p>
          {this.state.restaurant.city} {this.state.restaurant.state}
          {this.state.restaurant.zip}
        </p>
      </div>
    );
  }
}

export default RestaurantContainer;
