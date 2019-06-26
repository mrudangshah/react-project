import isEmpty from 'lodash/isEmpty';

let newUser = JSON.parse(localStorage.getItem('new_user'));

const initialState = {
  isRegistered: false,
  user: newUser ? newUser : {},
  message: '',
  isStatus: '',
  error: '',
  isValid: true,
};

const signupResponse = (state = initialState, action = {}) => {
  switch(action.type) {
    case "SET_NEW_USER":
			return {
        ...state,
        isValid: true,
        isRegistered: !isEmpty(action.user),
        user: action.user,
        message: !isEmpty(action.user) ? action.user.message : '',
        isStatus: !isEmpty(action.user) ? action.status : ''
      }

    case "SIGNUP_USER_VALIDATION":
    return {
      ...state,
      isValid: false,
      error: action.error,
    }
    
		default: return state  
  }
}

export default signupResponse;