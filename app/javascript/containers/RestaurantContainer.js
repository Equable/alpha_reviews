import React, { Component } from "react";
import RestaurantInfoTile from "../tiles/RestaurantInfoTile";

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
    console.log(this.state)
    return (
      <div>
        <RestaurantInfoTile
          restaurant={this.state.restaurant}
          />
      </div>
    );
  }
}

export default RestaurantContainer;
