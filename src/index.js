import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux'
import tpwStore from './store';
import './index.css';
import App from './App';
import * as serviceWorker from './serviceWorker';
//ReactDOM.render
//ReactDOM.hydrate(
ReactDOM.render (
    <Provider store={tpwStore()}>
        <App />
    </Provider>,
    document.getElementById('root')
);
serviceWorker.unregister();