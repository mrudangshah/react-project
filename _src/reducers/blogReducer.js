const initialState = {
	list: [],
	total: 0,
	blogData: [],
	blogLoading: true,
	itemPerRow: 3,
	offSetCnt: 3,
};


export const blog = (state = initialState, action = {}) => {
  switch(action.type) {
    case "BLOG_LOADING_START":
			return {
				...state,
				blogLoading: true
			}

		case "BLOG_LOADING_DONE":
			return {
				...state,
				blogLoading: false
			}

		case "SET_BLOG_DATA":
			return {
				...state,
				list: action.list,
				blogData: action.blogData,
				total: action.total,
				offSetCnt: action.offSetCnt
		}

    default: return state  
  }
}

export default blog;