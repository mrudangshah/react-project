import axios from 'axios';
import {tpwConfig} from './../config.js'
import { TPW } from './../constants/index.js'

const siteurl = tpwConfig.API_URL;

/**
 * Get EventData
 */
export const getEvents = () => {
  
  return (dispatch) => {
    
    dispatch({type:'EVENT_LOADING_START'})

    axios.get( siteurl + TPW.EVENTS_API, {
      headers: { 'Content-Type': 'application/json' } 
    })
    .then(response => {
      dispatch({
        type: 'SET_EVENTS_DATA',
        events: response.data
      });
      dispatch({ type: 'EVENT_LOADING_DONE' })
    })
  }
}