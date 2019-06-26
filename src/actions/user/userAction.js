import axios from 'axios';
import {tpwConfig} from '../../config.js'
import { TPW } from '../../constants/index.js'
const siteurl = tpwConfig.API_URL;

/**
 * MemberPosts
 * @param {*} username 
 */
export const GetUserIdByUserName = (username) => {
  return axios.get(siteurl + TPW.USERID_API + username, {
    headers: { 'Content-Type': 'application/json' } })
    .then(response => {
      return response.data;
  });
}

/**
 * LoggedIN
 */
export const LoginAction = (FormData) => {
  return (dispatch) => {
    dispatch(request());

    axios({
      method: 'post',
      headers: { 'Content-Type': 'application/json' } ,
      url: siteurl + TPW.LOGIN_API,
      data: FormData,
    })
    .then(function (response) {
        localStorage.setItem('tpwToken', response.data.token);
        localStorage.setItem('user', JSON.stringify(response.data));
        dispatch(success(response.data));
    })
    .catch(function(error){
      dispatch(failure(error));
    })
  }

  function request() { return { type: 'USERS_LOGIN_REQUEST' } }
  function success(loggedUser) { return { type: 'SET_CURRENT_USER', user: loggedUser } }
  function failure (loggedError) { return { type: 'USERS_LOGIN_FAILURE', error: loggedError } }
}

/**
 * LOGOUT
 */
export const logout = () => {
  localStorage.removeItem('tpwToken');
  localStorage.removeItem('user');
  return { type: 'USERS_LOGOUT' };
}

/**
 * Check The Current USER
 */
export const checkAuth = () => {
  return (dispatch) => {
    dispatch({ type: 'SET_CURRENT_USER', user: {}});
  }
}

