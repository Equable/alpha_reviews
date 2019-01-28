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

  render() {
    return (
      <div>
        <h1>Restaurant Show Page</h1>
        <RestaurantInfoTile restaurant={this.state.restaurant} />
      </div>
    );
  }
}

export default RestaurantContainer;
