let tpwToken = (typeof window !== 'undefined') ? localStorage.getItem('tpwToken') : null;
let loggedUser = (typeof window !== 'undefined') ? JSON.parse(localStorage.getItem('user')) : null;
let isLoggedIn = tpwToken ? true : false;
let authUser = loggedUser ? loggedUser : {};

const initialState = {
  isAuthenticated: isLoggedIn,
  status: '',
  message: '',
  error: '',
  logInReq: false,
  isValid: true,
  tpwUser: authUser
};

export function authentication(state = initialState, action) {
  switch (action.type) {
    case 'USERS_LOGIN_REQUEST':
      return {
        logInReq: true,
        isValid: true
      };

    case 'SET_CURRENT_USER':
      return {
        ...state,
        logInReq: false,
				isAuthenticated: true,
        tpwUser: action.user
      };

    case 'USERS_LOGIN_FAILURE':
      return {
        ...state,
        logInReq: false,
        error: action.error,
        isValid: false,
      };

    case 'USERS_LOGOUT':
      return {};

    default:
      return state
  }
}