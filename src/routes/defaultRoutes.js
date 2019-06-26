import Home from '../components/Home';
import Member from '../components/Member';
import Saved from '../components/Saved';
import Favourites from '../components/Favourites';
import Message from '../components/Messages';
import SearchResults from '../components/searchComponent/searchResults';
import Single from '../components/Single1';
import Blog from '../components/Blog';

export default {
    Home: {
        component: Home,
        path: '/'
    },
    Member: {
        component: Member,
        path: '/member/:username'
    },
    Saved: {
        component: Saved,
        path: '/member/:username/saved-posts'
    },
    Favourites: {
        component: Favourites,
        path: '/member/:username/favorites'
    },
    Message: {
        component: Message,
        path: '/member/:username/messages'
    },
    SearchResults: {
        component: SearchResults,
        path: '/search/:term'
    },
    MarkYourPlanner: {
        component: Single,
        path: '/mark-your-planner/:term'
    },
    UltimateHaul: {
        component: Single,
        path: '/the-ultimate-haul/:term'
    },
    OnTheWire: {
        component: Single,
        path: '/on-the-wire/:term'
    },
    PlanConnectInspire: {
        component: Single,
        path: '/plan-connect-inspire/:term'
    },
    TheSpread: {
        component: Single,
        path: '/the-spread/:term'
    },
    Sponsored: {
        component: Single,
        path: '/sponsored/:term'
    },
    Blog: {
        component: Blog,
        path: '/:blog'
    }
};