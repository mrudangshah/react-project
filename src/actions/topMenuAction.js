import axios from 'axios';
import {tpwConfig} from './../config.js'
import { TPW } from './../constants/index.js'

const siteurl = tpwConfig.API_URL;

export const topMenu = () => {

	return (dispatch) => {

		dispatch({ type: 'TOPMENU_LOADING_START'})

    axios.get(siteurl + TPW.TOP_MENU_API, {
    headers: { 'Content-Type': 'application/json' } })
    .then(response => {
      dispatch({
        type: 'SET_TOP_MENU',
        topMenuData: response.data
      })

      dispatch({ type: 'TOPMENU_LOADING_DONE'})
    });
  }
}

export const getPost = () => {
  return (dispatch) => {

		dispatch({ type: 'TOPMENU_LOADING_START'})

    axios.get(siteurl + TPW.SINGLE_API, {
    headers: { 'Content-Type': 'application/json' } })
    .then(response => {
      dispatch({
        type: 'SET_POST_DATA',
        postData: response.data
      })

      dispatch({ type: 'TOPMENU_LOADING_DONE'})
    });
  }
}

export const getACF = () => {
  return (dispatch) => {
    
    axios.get(siteurl + TPW.ACF_API, {
    headers: { 'Content-Type': 'application/json' } })
    .then(response => {
      console.log(response.data)
      dispatch({
        type: 'SET_ACF_DATA',
        acfData: response.data
      })
    });
  }
}