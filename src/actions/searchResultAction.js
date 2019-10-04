import axios from 'axios';
import { tpwConfig } from './../config.js'
import { TPW } from './../constants/index.js'

const siteurl = tpwConfig.API_URL;
const bbAPI = TPW.BbAPI;
const allPostAPI = TPW.SearchAPI;

/** 
 * Get Search Member Data
*/
export const getMember = (searchParam) => {
  return(dispatch) => {
    dispatch({type: 'MEMBER_SEARCH_LOADING_START'})
    axios.get(siteurl + bbAPI + '?search=' + searchParam , {
      headers: { 'Content-Type':'application/json' } })
    .then( response => {
      dispatch({
        type: 'SET_MEMBER_SEARCH_DATA',
        memberSearchData: response.data
      });
      dispatch({type:'MEMBER_SEARCH_LOADING_DONE'})
    })
  }
}

/**
 * Get Search Result
 */
export const getSearch = (categoryName, searchvalues) => {
  let extendedTerm = categoryName ? '&category_name='+categoryName : "";
  return(dispatch) => {
    dispatch({type: 'SEARCH_POST_LOADING_START'})
    axios.get(siteurl + allPostAPI + '?search=' + searchvalues + extendedTerm , {
      headers: { 'Content-Type':'application/json' } })
    .then( response => {
      dispatch({
        type: 'SEARCH_POST_DATA',
        searchData: response.data
      });
      dispatch({type:'SEARCH_POST_LOADING_DONE'})
    })
  }
}