import React from "react";
import { Route, IndexRoute, Router, browserHistory, Link } from "react-router";
import RestaurantContainer from "../../containers/RestaurantContainer";
import ReviewEditFormTile from "../../tiles/ReviewEditFormTile";

const App = props => {
  return (
    <div>
      <Router history={browserHistory}>
        <Route path="/restaurants/:id" component={RestaurantContainer} />
        <Route path="/reviews/:id/edit" component={ReviewEditFormTile} />
      </Router>
    </div>
  );
};

export default App;
