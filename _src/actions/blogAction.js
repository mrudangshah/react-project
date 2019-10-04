import axios from 'axios';
import {tpwConfig} from './../config.js'
import { TPW } from './../constants/index.js'

const siteurl = tpwConfig.API_URL;

/**
 * Get BlogData
 */
export const getBlog = (type, offset) => {
    return (dispatch) => {

	    dispatch({ type: 'BLOG_LOADING_START'})
 
      axios.get(siteurl + TPW.CATEGORY_API + type, {
        headers: { 'Content-Type': 'application/json' } })
        .then(response => {
        let ary =  response.data.slice(0, offset)
        dispatch({
            type: 'SET_BLOG_DATA',
            list: response.data,
            blogData: ary,
            total: response.data.length,
            offSetCnt: 3
        })
        dispatch({ type: 'BLOG_LOADING_DONE'})
    });
  }
}

export const getOffsetData = (list, num) => {
  
  return (dispatch) => {
    dispatch({ type: 'BLOG_LOADING_START'})
    let ary =  list.slice(0, num)
    
    dispatch({
      type: 'SET_BLOG_DATA',
      list: list,
      blogData: ary,
      total: list.length,
      offSetCnt: num
    })
    
    dispatch({ type: 'BLOG_LOADING_DONE'})
  }
}