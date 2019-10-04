const initialState = {
	members: [],
	memberPosts: [],
	memberLoading: true,
};


export const memberData = (state = initialState, action = {}) => {
  switch(action.type) {
		case "MEMBER_LOADING_START":
			return {
				...state,
				memberLoading: true
			}

		case "MEMBER_LOADING_DONE":
			return {
				...state,
				memberLoading: false
			}

    	case "SET_MEMBER_ITEMS":
			return {
				...state,
				members: action.members
	  		}
		
		case "SET_POST_MEMBER_ITEMS":
			return {
				...state,
				memberPosts: action.member_posts
		  }
		
		default: return state  
  }
}

export default memberData;