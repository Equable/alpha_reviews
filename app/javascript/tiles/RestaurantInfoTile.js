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
    <div>
      <h1>{props.restaurant.name}</h1>
      {categories}
      <br />
      <h2>Address: {props.restaurant.street}</h2>
      <p>
        {props.restaurant.city}, {props.restaurant.state} {props.restaurant.zip}
      </p>
    </div>
  );
};

export default RestaurantInfoTile;
