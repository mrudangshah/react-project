const initialState = {
  isRegistered: false,
  userInfo: {},
};

const AccountReducer = (state = initialState, action = {}) => {
  switch(action.type) {
    case "SET_NEW_USER_ACCOUNT_INFO":
			return {
        ...state,
        isRegistered: true,
        userInfo: action.userInfo,
      }
    default: return state 
  }
}

export default AccountReducer;