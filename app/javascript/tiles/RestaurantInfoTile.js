import React from "react";
import CategoryTile from "./CategoryTile";

const RestaurantInfoTile = props => {
  let categories = [];
  if (props.restaurant.categories) {
    categories = props.restaurant.categories.map((category,index) => {
      if(index != props.restaurant.categories.length-1){
        return `${category.name}, `
      }
      else{
        return `${category.name}`
      }
      
    });
  }

  return (
    <div className="rest-info">
      <div className="row rest-info-tile">
        <div className='small-6 columns'>
          <div className="rest-img rest-tile-info">
            <img src={props.restaurant.image} />
          </div>
        </div>
        <div className='small-6 columns'>
          <div className="rest-tile-info">
            <div className="center">
              <h1 className="text-center">{props.restaurant.name}</h1>
              <div className="categories text-center">
                {categories}
              </div>
              <br />
              <h4 className="text-center">{props.restaurant.street}</h4>
              <h6 className="text-center">
                {props.restaurant.city}, {props.restaurant.state} {props.restaurant.zip}
              </h6>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default RestaurantInfoTile;
