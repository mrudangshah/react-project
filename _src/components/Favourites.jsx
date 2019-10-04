import React, {Component} from 'react';
import { connect } from 'react-redux';
import {Link, withRouter} from 'react-router-dom';
import {tpwConfig} from '../config';
import Loading from 'react-loading-bar';
import 'react-loading-bar/dist/index.css';
import { COLOR } from './../constants/color';
import Tabs from 'react-bootstrap/Tabs';
import Tab from 'react-bootstrap/Tab';
import { getFavItems } from './../actions/favouriteAction';

const siteurl = tpwConfig.API_URL;

class Favourites extends Component{
  constructor(props){
    super(props);
    this.state = {
      resultLoadingText: 'Loading...!',
      noSearchResultText: 'No Favorites...!',
      username: null
    }
  }

  componentWillMount() {
    const { getFavItems } = this.props
    const username = this.props.route.match.params.username;
    getFavItems(username);
    this.setState({username: username});
  }


  /**
   * Handle ResultLoading Text
   */
  handleResultLoadingText () {
    let { resultLoadingText } = this.state;
    return <section id="search_cnt" className="profile_sec">
    <div className="container"><div className="search_tab_cnt">
      <h3>{resultLoadingText}</h3>
    </div></div>
    </section>
  }

  /**
   * Handle NoSearch Text
   */
  handleNoSearchResultText () {
    let { noSearchResultText } = this.state;
    return <section id="search_cnt" className="profile_sec">
        <div className="container"><div className="search_tab_cnt">
        <h3>{noSearchResultText}</h3>
      </div></div>
      </section>
  }

  favouritePeopleView = () => {
    const { favItems, favLoading } = this.props
    const { username } = this.state
    
    return <section id="search_cnt" className="profile_sec">
    <div className="bread-crumb">
      <div className="container">
      <Link to={"/member/"+ username} className="trans"><i className="fa fa-angle-left" aria-hidden="true"></i>Profile</Link>
      <p><img src={ siteurl + "/src/assets/images/Favorite.svg" } alt="" /> Favorites</p>
      </div>
    </div>
    <div className="container"><div className="search_tab_cnt">
    <Loading show={favLoading} color={COLOR.PROGRESS} showSpinner={true} />
     {favLoading === true ?       
      this.handleResultLoadingText() : 
      favItems.length > 0 ?

      <Tabs defaultActiveKey="users" transition={false} id="favourite_tabs">
      <Tab eventKey="users" title="Users">
        {this.getFavouriteUsers(favItems)}
      </Tab>
      <Tab eventKey="posts" title="Posts">
        <div>Upcoming posts...</div>
      </Tab>
    </Tabs>
      : 
      this.handleNoSearchResultText()
      
    }
    </div></div>
    </section>
  }

  /**
   * Get Favourite Users
   * @param {*} favItems 
   */
  getFavouriteUsers(favItems){
    return  <ul>
          { favItems.map((item,index) => { 
            return <li key={index}>
              <div className="people_block favourites">
                <div className="imgbox">
                    <img src={ siteurl + "/src/assets/images/trans_201X201.png"} alt="" />
                    <img src={item.avatar_url} className="absoImg" alt="" /> 
                  </div>
                  <div className="people_prof">{item.role[0]}</div>
                  <div className="prople_name"><Link to={"/member/"+ item.user_name} className="trans" title={item.display_name}>{item.display_name}</Link></div>
                  <div className="people_dscr"><p>{item.description}</p></div>
              </div>
            </li>
            })
          }
      </ul>
  }

  render() {
    const { favLoading } = this.props

    return (
      favLoading ? this.handleResultLoadingText() : this.favouritePeopleView()
    );
  }
}

const mapStateToProps = state => ({
  favItems: state.favouriteData.favItems,
  favLoading: state.favouriteData.favLoading,
});

const mapDispatchToProps = dispatch => ({
  getFavItems: (username) => { dispatch(getFavItems(username)) },
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Favourites));
//export default Favourites;