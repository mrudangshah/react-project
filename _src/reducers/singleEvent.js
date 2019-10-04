const initialState = {
	eventItems: [],
	pID: '',
	comments: [],
	relatedEvents: [],
	eventLoading: true,
	commentLoading: true,
	relatedEventLoading: true,
};

export const singleEvent = (state = initialState, action = {}) => {
  switch(action.type) {
		case "SINGLE_EVENT_LOADING_START":
			return {
				...state,
				eventLoading: true
			}

		case "SINGLE_EVENT_LOADING_DONE":
			return {
				...state,
				eventLoading: false
			}

		case "SET_SINGLE_EVENTS_DATA":
			return {
				...state,
				eventItems: action.eventsData
			}
		
		case "EVENT_COMMENT_LOADING_START":
			return {
				...state,
				commentLoading: true
			}
			
		case "EVENT_COMMENT_LOADING_DONE":
			return {
				...state,
				commentLoading: false
			}
	
		case "SET_EVENT_COMMENT_DATA":
			return {
				...state,
				comments: action.commentItems,
			}

		case "RELATED_EVENTS_LOADING_START":
			return {
				...state,
				relatedLoading: true,
			}
		
		case "RELATED_EVENTS_LOADING_DONE":
			return {
				...state,
				relatedLoading: false,
			}
		
		case "SET_RELATED_EVENTS_DATA":
			return {
				...state,
				relatedEvents: action.relatedItems,
			}

		default: return state
  }
}

export default singleEvent;