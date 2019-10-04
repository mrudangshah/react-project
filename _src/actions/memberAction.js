import axios from 'axios';
import {tpwConfig} from './../config.js'
import { TPW } from './../constants/index.js'
const siteurl = tpwConfig.API_URL;

/*export const getMembers = (username) => {
    return (dispatch) => {

        dispatch({ type: 'MEMBER_LOADING_START'})
        
        return axios.get(siteurl + TPW.USERID_API + username, {
          headers: { 'Content-Type': 'application/json' } })
          .then(response => {      
      
            return axios.get(siteurl + TPW.MEMBER_API + response.data.id, {
              headers: { 'Content-Type': 'application/json' } })
              .then(response => {

                getMemberPosts(response.data.id).then(res => {
                  dispatch({
                    type: 'SET_POST_MEMBER_ITEMS',
                    member_posts: res.data
                  })
                });

                dispatch({
                  type: 'SET_MEMBER_ITEMS',
                  members: response.data
                })
                dispatch({ type: 'MEMBER_LOADING_DONE'})
              });
      
        });
    }
}*/

/**
 * MemberPosts
 * @param {*} memberId 
 */
/*export const getMemberPosts = (memberId) => {
    return axios.get(siteurl + TPW.MEMBER_POSTS_API + memberId, {
      headers: { 'Content-Type': 'application/json' } })
      .then(response => {
        return response
    });
}*/

/*export const getCategoryPosts = (catId) => {
  return (dispatch) => {
    let extendedTerm = catId ? '/cat/'+catId : "";
    return axios.get(siteurl + TPW.MEMBER_POSTS_API + that.state.memberId + extendedTerm, {
      headers: { 'Content-Type': 'application/json' } })
      .then(response => {
        return response
    });
  }
}*/

/*export const getMemberShipId = (userId) => {
  let mmembersUrl = `${siteurl}/wp/wp-json/mp/v1/members/${userId}`;
  return axios.get(mmembersUrl, {
    headers: { 'Content-Type': 'application/json' } })
    .then(response => {
      return response.data;
  });
}*/