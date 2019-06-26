import Login from './../components/auth/Login';
import Signup from './../components/user/Signup';
import AccountInfo from './../components/user/AccountInfo';
import AccountLast from './../components/user/AccountLast';

export default {
    Login: {
        component: Login,
        path: '/user/login'
    },
    Signup: {
        component: Signup,
        path: '/user/signup'
    },
    AccountInfo: {
        component: AccountInfo,
        path: '/user/signup/account'
    },
    AccountLast: {
        component: AccountLast,
        path: '/user/signup/last'
    },
};