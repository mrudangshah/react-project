const initialState = {
    loading: false,
    pageLoading: false,
    item:{}
};

export const page = (state = initialState, action = {}) => {
    switch(action.type) {
        case "LOADING_START":
              return {
                  ...state,
                  loading: true
              }
  
        case "LOADING_DONE":
            return {
                ...state,
                loading: false
            }
        
        case "PAGE_LOADING_START":
            return {
                ...state,
                pageLoading: true
            }
        
        case "SET_PAGE_ITEM":
            return {
                ...state,
                item: action.pageItem
            }
        
        case "PAGE_LOADING_DONE":
            return {
                ...state,
                pageLoading: false
            }

      default: return state  
    }
  }
  
  export default page;