import axios from 'axios';
import { tpwConfig } from './../config.js'
import { TPW } from './../constants/index.js'

const siteurl = tpwConfig.API_URL;


/**
 * Get Event's Single data
 */
export const getSingleEvent = (eventSlug) => {
  return (dispatch) => {
    dispatch({type: 'SINGLE_EVENT_LOADING_START'})
    axios.get(siteurl + TPW.SINGLE_EVENTS_API + eventSlug, {
    headers: { 'Content-Type':'application/json' } })
    .then( response => {
      dispatch({
        type: 'SET_SINGLE_EVENTS_DATA',
        eventsData: response.data
      });
      dispatch({type:'SINGLE_EVENT_LOADING_DONE'})
      dispatch(getEventComment(response.data.id));
      dispatch(getRelatedEvents(response.data.id));
    })
  }
}

/**
 * Get Comments. 
 */
export const getEventComment = (eventID) => {
  return (dispatch) => {
    dispatch({ type: 'EVENT_COMMENT_LOADING_START'})

    axios.get(siteurl + TPW.COMMENT_API + eventID , {
    headers: { 'Content-Type': 'application/json' } })
    .then(response => {
      dispatch({
        type: 'SET_EVENT_COMMENT_DATA',
        commentItems: response.data
      });
      dispatch({ type: 'EVENT_COMMENT_LOADING_DONE'})
    });
  }
}

/**
 * Get related posts
 */
export const getRelatedEvents = (eventID) => {
  return (dispatch) => {
    dispatch({ type: "RELATED_EVENTS_LOADING_START" })
    axios.get(siteurl + TPW.EVENT_RELATED_API + eventID , {
    headers: { 'Content-Type': 'application/json' } })
    .then(response => {
      dispatch({
        type: 'SET_RELATED_EVENTS_DATA',
        relatedItems: response.data
      });
      dispatch({ type: 'RELATED_EVENTS_LOADING_DONE'})
    });
  }
}