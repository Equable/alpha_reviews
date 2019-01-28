import React from "react";
import { Route, IndexRoute, Router, browserHistory } from "react-router";
import RestaurantContainer from "../../containers/RestaurantContainer";

const App = props => {
  return (
    <div>
      <Router history={browserHistory}>
        <Route path="/restaurants/:id" component={RestaurantContainer} />
      </Router>
    </div>
  );
};

export default App;
