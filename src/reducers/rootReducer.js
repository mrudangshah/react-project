import { combineReducers } from 'redux';
import favouriteData from './favouriteReducer';
import memberData from './memberReducer';
import { authentication } from './authenticationReducer';
import signupResponse from './user/signupReducer';
import AccountReducer from './user/accountReducer';
import homeData from './homeReducer';
import singleData from './singleReducer';
import blog from './blogReducer';
import page from './index';
import event from './eventReducer';
import singleEvent from './singleEvent';

export default combineReducers({
    authentication,
    favouriteData,
    memberData,
    signup: signupResponse,
    accountInfo: AccountReducer,
    blog,
    page,
    homeData,
    singleData,
    event,
    singleEvent
});