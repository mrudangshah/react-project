import axios from 'axios';
import {tpwConfig} from './../config.js'
import { TPW } from './../constants/index.js'
const siteurl = tpwConfig.API_URL;

export const getFavItems = (username) => {

	return (dispatch) => {

  dispatch({ type: 'FAV_LOADING_START'})
  
  axios.get(siteurl + TPW.USERID_API + username, {
    headers: { 'Content-Type': 'application/json' } })
    .then(response => {      

      axios.get(siteurl + TPW.FAV_API + response.data.id, {
        headers: { 'Content-Type': 'application/json' } })
        .then(response => {
          dispatch({
            type: 'SET_FAV_ITEMS',
            favItems: response.data
          })
          dispatch({ type: 'FAV_LOADING_DONE'})
        });

    });
  }
    
    
}