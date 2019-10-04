const initialState = {
  bbMembers: [],
  searchLoading: true,
};

export const searchResult = (state = initialState, action = {}) => {
  switch(action.type) {
    case "MEMBER_SEARCH_LOADING_START":
    return {
      ...state,
      searchLoading: true
    }
    case "MEMBER_SEARCH_LOADING_DONE":
    return {
      ...state,
      searchLoading: false
    }
    case "SET_MEMBER_SEARCH_DATA":
    return {
      ...state,
      bbMembers: action.memberSearchData
    }
    case "SEARCH_POST_LOADING_START":
    return {
      ...state,
      searchLoading: true
    }
    case "SEARCH_POST_LOADING_DONE":
    return {
      ...state,
      searchLoading: false
    }
    case "SEARCH_POST_DATA":
    return {
      ...state,
      bbMembers: action.searchData
    }
    default: return state
  }
}
export default searchResult;