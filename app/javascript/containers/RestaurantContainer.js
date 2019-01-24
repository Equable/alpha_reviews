import React, { Component } from "react";
import RestaurantInfoTile from '../tiles/RestaurantInfoTile'

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
<<<<<<< HEAD
    debugger;
    return <div>{this.state.restaurant.name}</div>;
=======
    return (
      <div>
        <RestaurantInfoTile restaurant= {this.state.restaurant}/>
      </div>
    );
>>>>>>> 728fb38e38df0bb4cbef5c57c1be34fa3f0cd1de
  }
}

export default RestaurantContainer;
