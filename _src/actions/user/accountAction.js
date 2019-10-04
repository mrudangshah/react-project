import axios from 'axios';
import {tpwConfig} from '../../config'
import { TPW } from '../../constants'
const siteurl = tpwConfig.API_URL;

export const AccountAction = (FormData) => {
  return (dispatch) => {
    axios({
      method: 'post',
      headers: { 'Content-Type': 'application/json' } ,
      url: siteurl + TPW.USER_ACCOUNT_INFO,
      data: FormData,
      })
      .then(function (response) {
        localStorage.removeItem('new_user');
        dispatch({
          type: 'SET_NEW_USER_ACCOUNT_INFO',
          userInfo: response.data,
        })
    })
    // .catch(function(error){
    //   dispatch({ 
    //     type: 'CHECK_USER_VALIATION',
    //     error: error.response.data.message,
    //   })
    //   dispatch({ type: 'SIGNUP_FAIL'});
    // })
    .catch(error => console.log(error))
  }
}