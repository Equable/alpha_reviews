import React from 'react'

const RestaurantInfoTile = props => {
    return(
        <div>
            <h1>{props.restaurant.name}</h1>
            <h1>TBD categories</h1>
            <p>Address: {props.restaurant.street} </p>
            <p>
                {props.restaurant.city} {props.restaurant.state}
                {props.restaurant.zip}
            </p>
        </div>
    )
}

export default RestaurantInfoTile
