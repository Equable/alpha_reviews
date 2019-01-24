import React, { Component } from "react";

class RestaurantContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      restaurant: {}
    };
  }

  componentDidMount() {
    debugger;
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
    debugger;
    return <div>{this.state.restaurant.name}</div>;
  }
}

export default RestaurantContainer;
