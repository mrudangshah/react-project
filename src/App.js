import React, { Component } from 'react';
import { Route, BrowserRouter, Switch } from 'react-router-dom';
import { connect } from 'react-redux';

import './assets/css/all.css';
import './assets/css/fontawesome.min.css';
import './assets/css/bootstrap.min.css';
import './assets/css/slick.css';
import './assets/css/docs.css';
//import './assets/js/slick.js';
import './assets/css/custom.css';

import { custom } from '../src/assets/js/custom';
import { getPageItem } from './actions'; 

import DefaultLayout  from './layouts/defaultLayout';
import WithoutMenu  from './layouts/blankPageLayout';

import defaultRoutes  from './routes/defaultRoutes';
import sessionRoutes  from './routes/sessionRoutes';
import { history } from './helpers';
//import NotFound from '../src/components/NotFound';

import _ from 'lodash';

class App extends Component {
  constructor(props){
    super(props);
    this.state = { };
  }
  
  componentWillMount() {
    const { getPageItem } = this.props
    getPageItem();
  }

  componentDidMount() {
    custom();
  }

  render() {
    
    return (
      <BrowserRouter>
          <Switch>
            { _.map(defaultRoutes, (route, key) => {
                const { component, path } = route;
                return (
                    <Route
                        history = {history}
                        exact
                        path={path}
                        key={key}
                        render={ (route) => <DefaultLayout component={component} route={route}/>}
                    />
                )
            }) }

            { _.map(sessionRoutes, (route, key) => {
                    const { component, path } = route;
                    return (
                        <Route
                            history = {history}
                            exact
                            path={path}
                            key={key}
                            render={ (route) => <WithoutMenu component={component} route={route}/>}
                        />
                    )
                }) }

            {/* { <Route path="*" component={ NotFound } /> } */}
          </Switch>
      </BrowserRouter>
    );
  }
}

const mapStateToProps = state => ({
  
});

const mapDispatchToProps = dispatch => ({
  getPageItem: () => { dispatch(getPageItem()) }
})


export default connect(mapStateToProps, mapDispatchToProps)(App);