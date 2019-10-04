import axios from 'axios';
import { tpwConfig } from './../config.js'
import { TPW } from './../constants/index.js'

const siteurl = tpwConfig.API_URL;

/**
 * Get Single data
 */
export const getSingle = (postSlug) => {
  
  return (dispatch) => {

    dispatch({ type: 'SINGLE_LOADING_START'})

    axios.get(siteurl + TPW.POST_API + postSlug , {headers: { 'Content-Type': 'application/json' } })
      .then(response => {
        dispatch({
        type: 'SET_SINGLE_DATA',
        singleItems: response.data,
        pID: response.data.id
      });
      dispatch({ type: 'SINGLE_LOADING_DONE'})
      dispatch(getComment(response.data.id));
      dispatch(getRelated(response.data.id));
    });
  }
}

/***
 * Get Comments. 
 */
export const getComment = (postID) => {
  return (dispatch) => {
    dispatch({ type: 'COMMENT_LOADING_START'})

    axios.get(siteurl + TPW.COMMENT_API + postID , {
    headers: { 'Content-Type': 'application/json' } })
    .then(response => {
      dispatch({
        type: 'SET_COMMENT_DATA',
        commentItems: response.data
      });
      dispatch({ type: 'COMMENT_LOADING_DONE'})
    });
  }
}

/**
 * Get related posts
 */
export const getRelated = (postID) => {
  return (dispatch) => {
    dispatch({ type: "RELATED_LOADING_START" })
    axios.get(siteurl + TPW.MORE_API + postID , {
    headers: { 'Content-Type': 'application/json' } })
    .then(response => {
      dispatch({
        type: 'SET_RELATED_DATA',
        relatedItems: response.data
      });
      dispatch({ type: 'RELATED_LOADING_DONE'})
    });
  }
}