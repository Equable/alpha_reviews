import React from "react";
import CategoryTile from "./CategoryTile";

const RestaurantInfoTile = props => {
  let categories = [];
  if (props.restaurant.categories) {
    categories = props.restaurant.categories.map(category => {
      return <CategoryTile key={`cat_${category.id}`} name={category.name} />;
    }); 
  }

  return (
    <div className="row">
        <div className="restaurants">
          <div className='row'>
            <div className='small-6 medium-6 large-6 columns'>
              <img src='https://images.pexels.com/photos/9315/menu-restaurant-france-eating-9315.jpg' />
            </div>
          <div className='small-6 medium-6 large-6 columns'>
            <h1>{props.restaurant.name}</h1>
            {categories}
            <br />
            <h2>Address: {props.restaurant.street}</h2>
            <p>
              {props.restaurant.city}, {props.restaurant.state} {props.restaurant.zip}
            </p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default RestaurantInfoTile;
