import axios from 'axios';
import {tpwConfig} from './../config.js'
import { TPW } from './../constants/index.js'
const siteurl = tpwConfig.API_URL;

export const getHomeItems = (username) => {

return (dispatch) => {

  dispatch({ type: 'HOME_LOADING_START'})
  
  axios.get(siteurl + TPW.HOME_API, {headers: { 'Content-Type': 'application/json' } })
    .then(response => {
        dispatch({
            type: 'SET_HOME_ITEMS',
            homeItems: response.data
          })
        dispatch({ type: 'HOME_LOADING_DONE'})
    });
  } 
}