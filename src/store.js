import { createStore, applyMiddleware, compose } from 'redux';
import rootReducer from './reducers/rootReducer';
import thunk from 'redux-thunk';
import { createLogger } from 'redux-logger'

const loggerMiddleware = createLogger();

export default function tpwStore(initialState={}) {
 return createStore(
    rootReducer,
    initialState,
    compose(
        applyMiddleware(thunk, loggerMiddleware),
        window.devToolsExtension ? window.devToolsExtension() : f => f
        //(typeof window !== 'undefined') ? window.devToolsExtension() : f => f
    )
 );
}
