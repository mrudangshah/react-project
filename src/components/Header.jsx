import React, { Component } from "react";
import { connect } from "react-redux";
import { Link, Redirect } from "react-router-dom";
import { tpwConfig } from "../config";
import TopMenu from "./parts/TopMenu";
import Search from "./searchComponent/searchForm";
import isEmpty from 'lodash/isEmpty';
import $ from "jquery";
import { IMAGE } from "./../constants/image";

const siteurl = tpwConfig.API_URL;

class Header extends Component {
  constructor(props) {
    super(props);
    
    this.state = {
      username: null
    };

  }
  componentDidMount() {
    $(".search_header .searchbar button").click(function(e) {
      $(".search_desk").slideToggle();
      $(".custom_nav .inner_navbar").toggleClass("search_open");
      $(".custom_nav .container .inner_navbar").toggleClass("menu_hide");
    });
    $(".search_desk  .close_search").click(function(e) {
      $(".search_desk").slideUp();
      $(".custom_nav .inner_navbar").removeClass("search_open");
      $(".custom_nav .container .inner_navbar").removeClass("menu_hide");
      $(".custom_nav .container .inner_navbar").show();
    });

    const that = this;
    
    this.setState({
      username: this.props.route.match.params.username
    })
  }

  render() {
    const { userData, page, pageLoading } = this.props;

    let logoURL = pageLoading === false ? typeof page.acf.sitelogo != 'undefined' &&  !isEmpty(page.acf.sitelogo.url) 
                  ? page.acf.sitelogo.url : '' : '';
    let pathName = window.location.pathname.split("/")[3];

    //console.log(location.host);

    return (
      <header id="header">
        <div className="top_header">
          <div className="container">
            <div className="inner_topheader">
              <h1>{pageLoading === false ? page.acf.sitetagline: ''}</h1>
            </div>
          </div>
        </div>
        <div className="main_header">
          <div className="container">
            <div className="inner_mainheader">
              <div className="leftbar_header">
                <div className="user_login">
                  <a href="#!">
                    <div className="imgbox">
                      <img src={siteurl + IMAGE.trans_31} alt="" />
                      {userData.isAuthenticated === true ? (
                        <img
                          src={userData.tpwUser.user_avatar}
                          className="absoImg"
                          alt=""
                        />
                      ) : (
                        <img
                          src={siteurl + IMAGE.defaultAvatar}
                          className="absoImg"
                          alt=""
                        />
                      )}
                    </div>
                  </a>
                  <div className="user_list">
                    <div className="user_profile">
                      {" "}
                      <Link to={userData.isAuthenticated === true ? '/user/signup/profile' : '/user/signup' }>
                        <div className="imgbox">
                          {" "}
                          <img src={siteurl + IMAGE.trans_31} alt="" />
                          {userData.isAuthenticated === true ? (
                            <img
                              src={userData.tpwUser.user_avatar}
                              className="absoImg"
                              alt=""
                            />
                          ) : (
                            <img
                              src={siteurl + IMAGE.defaultAvatar}
                              className="absoImg"
                              alt=""
                            />
                          )}
                        </div>
                        <span className="user_name">
                          {userData.isAuthenticated === true
                            ? userData.tpwUser.user_display_name
                            : "Join Now"}
                        </span>
                        </Link>
                        {userData.isAuthenticated === false &&
                        <Link to='/user/login' className="signInStyle" ><span className="sign-in">Sign In</span></Link>
                        }
                    </div>
                    <ul>
                      <li>
                        <a
                          href={siteurl}
                          className="trans"
                          title="Create A Post"
                        >
                          <img
                            src={siteurl + "/src/assets/images/pencil.svg"}
                            alt=""
                          />
                          Create A Post
                        </a>
                      </li>
                      <li>
                        <a href={siteurl} className="trans" title="Favorites">
                          <img
                            src={siteurl + "/src/assets/images/star_icon.svg"}
                            alt=""
                          />
                          Favorites
                        </a>
                      </li>
                      <li>
                        <a href={siteurl} className="trans" title="Saved Posts">
                          <img
                            src={siteurl + "/src/assets/images/post_icon.svg"}
                            alt=""
                          />
                          Saved Posts
                        </a>
                      </li>
                      <li>
                        <a href={siteurl} className="trans" title="Messages">
                          <img
                            src={siteurl + "/src/assets/images/msg.svg"}
                            alt=""
                          />
                          Messages
                        </a>
                      </li>
                    </ul>
                    <div className="user_set">
                      <ul>
                        {userData.isAuthenticated === true ? (
                          <li>
                            <Link
                              to={"/user/signup/account"}
                              className="trans"
                              title="Account"
                            >
                              Account
                            </Link>
                            
                          </li>
                        ) : (
                          <li>
                            <Link
                              to={"/user/signup"}
                              className="trans"
                              title="Account"
                            >
                              Account
                            </Link>
                          </li>
                        )}
                        <li>
                          <a href={siteurl} className="trans" title="Settings">
                            Settings
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              
              {!isEmpty(logoURL) ? 
                <div className="logo">
                  {" "}
                  <Link to="" className="" title="ThePannerWire">
                    <img src={logoURL} alt="ThePannerWire" />
                  </Link>{" "}
                </div>
              : ''}

              <div id="mobile-menu-toggle">
                {" "}
                <span /> <span /> <span /> <span />{" "}
              </div>
              <div className="search_header">
                <div className="searchbar">
                  {" "}
                  <button
                    onClick={this.handleSearch}
                    className="trans"
                    title="Search"
                  >
                    Search<i className="fa fa-search" aria-hidden="true" />
                  </button>{" "}
                </div>
              </div>
            </div>
          </div>
        </div>
        {pathName !== "saved-posts" ? (
          pathName !== "favorites" ? (
            <div className="custom_nav">
              <div className="container">
                <TopMenu />
              </div>
            </div>
          ) : null
        ) : null}
        <div className="search_desk">
          <Search />
        </div>
      </header>
    );
  }
}

const mapStateToProps = state => {
  return {
    userData: state.authentication,
    //acfData: state.topMenu.acfData,
    page: state.page.item,
    pageLoading: state.page.pageLoading
  };
};

export default connect(
  mapStateToProps,
  null
)(Header);
