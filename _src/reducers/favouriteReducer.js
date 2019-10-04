const initialState = {
	favItems: [],
	favLoading: true
};


export const favouriteData = (state = initialState, action = {}) => {
  switch(action.type) {
		case "FAV_LOADING_START":
			return {
				...state,
				favLoading: true
			}

		case "FAV_LOADING_DONE":
			return {
				...state,
				favLoading: false
			}

    case "SET_FAV_ITEMS":
			return {
				...state,
				favItems: action.favItems
      }
		
		default: return state  
  }
}

export default favouriteData;