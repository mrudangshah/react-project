const initialState = {
	singleItems: [],
	pID: '',
	comments: [],
	relatedPosts: [],
	singleLoading: true,
	commentLoading: true,
	relatedLoading: true,
};

export const singleData = (state = initialState, action = {}) => {
  switch(action.type) {
		case "SINGLE_LOADING_START":
			return {
				...state,
				singleLoading: true
			}

		case "SINGLE_LOADING_DONE":
			return {
				...state,
				singleLoading: false
			}

    case "SET_SINGLE_DATA":
			return {
				...state,
				singleItems: action.singleItems,
				pID: action.pID,
				comment: action.comment
			}
		
			case "COMMENT_LOADING_START":
				return {
					...state,
					commentLoading: true
				}
			
			case "COMMENT_LOADING_DONE":
				return {
					...state,
					commentLoading: false
				}
		
			case "SET_COMMENT_DATA":
				return {
					...state,
					comments: action.commentItems,
				}

			case "RELATED_LOADING_START":
				return {
					...state,
					relatedLoading: true,
				}
			
			case "RELATED_LOADING_DONE":
				return {
					...state,
					relatedLoading: false,
				}
			
			case "SET_RELATED_DATA":
				return {
					...state,
					relatedPosts: action.relatedItems,
				}
		default: return state
  }
}

export default singleData;