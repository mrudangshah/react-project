const initialState = {
	homeItems: [],
	homeLoading: true
};

export const homeData = (state = initialState, action = {}) => {
  switch(action.type) {
		case "HOME_LOADING_START":
			return {
				...state,
				homeLoading: true
			}

		case "HOME_LOADING_DONE":
			return {
				...state,
				homeLoading: false
			}

    case "SET_HOME_ITEMS":
			return {
				...state,
				homeItems: action.homeItems
      }
		
		default: return state  
  }
}

export default homeData;