import axios from 'axios';
import {tpwConfig} from './../config.js'
import { TPW } from './../constants/index.js'
const siteurl = tpwConfig.API_URL;

export const loadingStart = () => {
    return (dispatch) => {
      dispatch({ type: 'LOADING_START'})
    }
}

export const loadingStop = () => {
    return (dispatch) => {
      dispatch({ type: 'LOADING_DONE'})
    }
}

export const getPageItem = () => {
    return (dispatch) => {
      dispatch({ type: 'PAGE_LOADING_START'})

        axios.get(siteurl + TPW.PAGE_API, {
        headers: { 'Content-Type': 'application/json' } })
        .then(response => {
          dispatch({
            type: 'SET_PAGE_ITEM',
            pageItem: response.data
          })

          dispatch({ type: 'PAGE_LOADING_DONE'})
        });
    }
}