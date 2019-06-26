import axios from 'axios';
import isEmpty from 'lodash/isEmpty';
import {tpwConfig} from './../../config'
import { TPW } from './../../constants/index'
const siteurl = tpwConfig.API_URL;

export const SingupAction = (FormData) => {
  return (dispatch) => {
    axios({
      method: 'post',
      headers: { 'Content-Type': 'application/json' } ,
      url: siteurl + TPW.SIGNUP_API,
      data: FormData,
      })
      .then(function (response) {
        localStorage.removeItem('new_user');
        dispatch({
          type: 'SET_NEW_USER',
          user: response.data,
      })
      localStorage.setItem('new_user', JSON.stringify(response.data));
    })
    .catch(function(error){
      dispatch({ 
        type: 'SIGNUP_USER_VALIDATION', 
        error: (typeof error.response != 'undefined') ? error.response.data.message : '',
      })
      //dispatch({ type: 'SIGNUP_FAIL'});
    })
  }
}

export const CheckNewUser = () => {
  let newUser = JSON.parse(localStorage.getItem('new_user'));
  return (dispatch) => {
    if(!isEmpty(newUser)){
      dispatch({
          type: 'SET_NEW_USER',
          user: newUser
      });
    }
  }   
}