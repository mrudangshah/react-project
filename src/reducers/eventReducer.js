const initialState = {
  events: [],
  eventLoading: true,
};

export const event = (state = initialState, action = {}) => {
  switch(action.type) {
    case "EVENT_LOADING_START":
      return {
        ...state,
        eventLoading: true
      }
    case "EVENT_LOADING_DONE":
      return {
        ...state,
        eventLoading: false
      }
    case "SET_EVENTS_DATA":
      return {
        ...state,
        events: action.events
      }
    default: return state
  }
}
export default event;