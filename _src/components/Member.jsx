import React, {Component} from 'react';
import axios from 'axios';
import { connect } from 'react-redux';
import { withRouter } from 'react-router'
import { Link } from 'react-router-dom';
import {tpwConfig} from '../config';
import { IMAGE } from './../constants/image';
import $ from 'jquery';

const base64 = require('base-64');

const siteurl = tpwConfig.API_URL;
const useridAPI = '/wp/wp-json/tpw-rest-endpoints/v1/userid?username=';
const memberPostsAPI = '/wp/wp-json/tpw-rest-endpoints/v1/post/members/';
const membersAPI = '/wp/wp-json/buddypress/v1/members/';
const endUsername = tpwConfig.ADMIN_USERNAME;
const password = tpwConfig.ADMIN_PASSWORD;
const sectionStyle = {
  backgroundImage: `url(${siteurl}/src/assets/images/banner_img1.png)`
};
var HtmlToReactParser = require('html-to-react').Parser;

class Member extends Component {
  constructor(props){
    super(props);
    this.state = {
      userData: [],
      userID: '',
      memberData: [],
      memberId: '',
      memberPosts: [],
      membershipID: '',
      membershipName: null,
      progress: true,
      resultLoading: true,
      resultLoadingText: 'Loading...!',
      noSearch: false,
      noSearchResultText: 'User Not Found...!',
      membershipStatus: false,
      is_fav: false,
    };
    this.followPeople = this.followPeople.bind(this);
  }

  componentDidMount () {
    let that = this;
    const username = this.props.route.match.params.username;
    
    fetch(siteurl + useridAPI + username , {
      method: "GET",
      headers: {
        "Content-Type": "application/json"
      },
      credentials: "same-origin" })
      .then(function(response) { return response.json(); })
      .then(function(jsonData) {
        return JSON.stringify(jsonData);
      })
      .then(function(jsonStr) {
        let userid = JSON.parse(jsonStr);
        if (userid!=null){
          that.setState({ 
            userID: userid.id,
            resultLoading: false,
            //progress: false,
           });
           if(that.state.resultLoading === false){
            that.getMembershipID(); //Get MemberShipId
            that.getMember(); //Get Members
           }
        } else{
          that.setState({ resultLoading: false, noSearch: true });
        }
    });
  }

  /**
   * Add active class on category tabs
   */
  componentDidUpdate() {
    $('#search_cnt .search_tab ul li').on('click', function() {
      $('li.active').removeClass('active');
      $(this).addClass('active');
    });
  }

  /**
   * Get MemeberShipID
   */
  getMembershipID() {

    let that = this;
    let mmembersUrl = `${siteurl}/wp/wp-json/mp/v1/members/${that.state.userID}`;

    axios(mmembersUrl, {
      auth: {
        username: endUsername,
        password: password
      }
    })
    .then(function(response) { 
      var jsonStr = JSON.stringify(response.data);      
      let membership = JSON.parse(jsonStr);
      if((membership.recent_subscriptions).length !== 0 ){
        let memberShipId = membership.recent_subscriptions[0].membership;
        that.setState({ membershipID: memberShipId, membershipStatus: false });
        that.getMembershipName(memberShipId);
      } else{
        that.setState({ membershipStatus: true, resultLoading: false, });
      }
    });
  }

  /**
   * Get MemeberShipName
   */
  getMembershipName(memberShipId) {
    let that = this;
    let membershipsUrl = `${siteurl}/wp/wp-json/mp/v1/memberships/${memberShipId}`;
    let headers = new Headers();
    headers.set('Authorization', 'Basic ' + base64.encode(endUsername + ":" + password));
       
    fetch(membershipsUrl, {
      method:'GET',
      headers: headers,
      credentials: "same-origin",
    })
    .then(function(response) { return response.json(); })
    .then(function(jsonData) {
      return JSON.stringify(jsonData);
    })
    .then(function(jsonStr) {
      if( JSON.parse(jsonStr) != null ){
        let memName = JSON.parse(jsonStr);
        that.setState({ membershipName: memName.title });
      }
    });
  }

  /**
   * Get MemeberData
   */
  getMember () {
    let that = this;

    //const { members } = this.props
    
    fetch(siteurl + membersAPI + that.state.userID, {
      method: "GET",
      headers: {
        "Content-Type": "application/json"
      },
      credentials: "same-origin" })
    .then(function(response) { return response.json(); })
    .then(function(jsonData) {
      return JSON.stringify(jsonData);
    })
    .then(function(jsonStr) {
      let memId = JSON.parse(jsonStr);
      that.setState({ memberId: memId.id });
      that.setState({ memberData: JSON.parse(jsonStr) });
      that.callApi();
      that.callCatApi();
    });
  }
  
  /**
   * Get members posts data
   */
  callApi() {
    let that = this;

    fetch(siteurl + memberPostsAPI + that.state.memberId, {
      method: "GET",
      headers: {
        "Content-Type": "application/json"
      },
      credentials: "same-origin" })
    .then(function(response) { return response.json(); })
    .then(function(jsonData) {
      return JSON.stringify(jsonData);
    })
    .then(function(jsonStr) {
      that.setState({ memberPosts: JSON.parse(jsonStr) });
    }).catch(error => {
      this.setState({
        error: true
      });
    });
  }

  /**
   * Get members posts data with category id
   */
  callCatApi(categoryName) {
    //this.setState({ progress: true });
    let extendedTerm = categoryName ? '/cat/'+categoryName : "";
    let that = this;
    fetch(siteurl + memberPostsAPI + that.state.memberId + extendedTerm, {
      method: "GET",
      headers: {
        "Content-Type": "application/json"
      },
      credentials: "same-origin" })
    .then(function(response) { return response.json(); })
    .then(function(jsonData) {
      return JSON.stringify(jsonData);
    })
    .then(function(jsonStr) {
      that.setState({ memberPosts: JSON.parse(jsonStr) });
      that.setState({ progress: false });
    });
  }


  /**
   * Handle ResultLoading Text
   */
  handleResultLoadingText () {
    let { resultLoadingText } = this.state;
    return <section id="user_profile">
      <div className="container"><div className="inner_userprofile">
        <h3>{resultLoadingText}</h3>
      </div></div>
      </section>
  }

  followPeople = (item, e) => {
    let followPeopleAPI = siteurl + '/wp/wp-json/tpw-rest-endpoints/v1/savefavuser?favuserid='+item.id+'&username=tpwadmin';
    fetch( followPeopleAPI  , {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    })
    .then(this.setState({ is_fav: true }))
  }

  /**
   * Get Member View
   */
  getMemberView() {
    let { userID, membershipName, memberData, resultLoadingText, noSearch, noSearchResultText, membershipStatus } = this.state;
    let parsed = memberData.avatar_urls;
    var author_avatar = ( typeof parsed === 'object') ? parsed.full : null;
    let sample_image = siteurl+IMAGE.sample_image; // Please keep dynamic
    let boundItemClick = this.followPeople.bind(this, memberData);
    let loginUserName = 'tpwadmin';
    let currentUserName = this.props.route.match.params.username;
    var htmlToReactParser = new HtmlToReactParser();

    let basicView = <div>
      <section id="user_profile" className="no_banner" >
        <div className="container">
            <div className="inner_userprofile">
                <div className="profile_pic" >
                    <div className="imgbox">
                      <img src={ siteurl + IMAGE.trans_195 } alt="" />
                      <img src={author_avatar ? author_avatar : siteurl+ IMAGE.defaultAvatar } className="absoImg"  alt="" />
                    </div>
                    <div className="profiler_name">{memberData.name}</div>
                    <div className="profiler_type">{memberData.user_role}</div>
                </div>
                <div className="profiler_cnt">
                  <div className="profiler_sbtlink">
                    <ul>
                      <li>
                        {loginUserName === currentUserName ? 
                          <Link to={"/member/"+ loginUserName + "/favorites"} className="trans" title="Favorite" data-id={memberData.id}><img src={ siteurl + "/src/assets/images/Favorite-grey.svg"} alt="" /> Favorites</Link>
                          : <Link to="#!" className="trans" title="Favorite" data-id={memberData.id} onClick={boundItemClick}>
                          { this.state.is_fav === true ? <img src={ siteurl + "/src/assets/images/fav-opaque.png"} alt="" />: <img src={ siteurl + "/src/assets/images/Favorite-grey.svg"} alt="" /> }
                          Favorites
                          </Link>
                        }
                      </li>
                      <li><Link to={"/member/"+ currentUserName + "/messages"} className="trans" title="Messages"><img src={ siteurl + "/src/assets/images/message.svg"} alt="" /> Messages</Link></li>
                      <li><Link to={"/member/"+ currentUserName + "/saved-posts"} className="trans" title="Saved"><img src={ siteurl + "/src/assets/images/save_icon-grey.svg"} alt="" /> Saved</Link></li>
                      <li><Link to="#!" className="trans" title="Account"><img src={ siteurl + "/src/assets/images/account.svg"} alt="" /> Account</Link></li>
                      <li><Link to="#!" className="trans" title="Settings"><img src={ siteurl + "/src/assets/images/setting.svg"} alt="" /> Settings</Link></li>
                    </ul>
                  </div>
                  <div className="profiler_bio">
                    <p>{memberData.user_description}</p>
                  </div>
                  <div className="profiler_links" >
                    <div className="click_links">
                        <Link to="#!" className="trans" title="Links">Links <i className="fa fa-angle-down" aria-hidden="true"></i></Link> 
                    </div>
                  </div>         
                </div>
              </div>
          </div>
      </section>
      <section id="search_cnt" className="profile_sec basic" >
      <div className="container">
        <div className="inner_searchcnt">
          <div className="post_content">
          {this.state.memberPosts.length !== 0 ?
            <ul>
              { this.state.memberPosts.map((item) => { 
                let parsedSlug = item.terms;
                return <li key={item.id}>
                <Link to={`/${parsedSlug[0].slug}/${item.slug}`} className="trans" title=""> 
                <div className="product">
                    <div className="imgbox">
                      {/* <img src={ siteurl + IMAGE.trans_305 } alt="" /> */}
                      { item.post_format.length > 0 && item.post_format[0].name  === 'Video'?
                      <video controls>
                        <source src={item.acf.video.url} type="video/mp4"></source>
                      </video>
                      : item.post_format === false ?
                      <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img className="absoImg" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt="" /></span>
                      : <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img className="absoImg" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt="" /></span>
                      }
                      {/* <img src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:'' : ''} className="absoImg" alt="" /> */}
                    </div>
                    <div className="product_detils">
                      <span className="cat_icon"><img src={""+item.cat_icon.url} alt={parsedSlug[0].name} /></span>
                      {/* <span className="more_view"><ion-icon name="more"></ion-icon></span> */}
                      <h4>{htmlToReactParser.parse(item.title)}</h4>
                    </div>
                  </div>
                </Link>
              </li>
              })
              }
            </ul>       
          : <h3>No Posts with this user...!</h3>
          }
          </div>
        </div>
      </div>
    </section>
    </div>

    let premiumView = <div>
      <section className="banner">
          <div className="container">
              <div className="inner_banner" style={sectionStyle}></div>
            </div>
        </section> 
        <section id="user_profile" >
          <div className="container">
              <div className="inner_userprofile">
                  <div className="profile_pic" >
                      <div className="imgbox">
                        <img src={ siteurl + IMAGE.trans_195 } alt="" />
                        <img src={author_avatar ? author_avatar : siteurl+IMAGE.defaultAvatar  } className="absoImg"  alt="" />
                      </div>
                      <div className="profiler_name">{memberData.name}</div>
                      <div className="profiler_type">{memberData.user_role}</div>
                  </div>
                  <div className="profiler_cnt">
                    <div className="profiler_sbtlink">
                      <ul>
                        <li>
                          {loginUserName === currentUserName ? 
                            <Link to={"/member/"+ loginUserName + "/favorites"} className="trans" title="Favorite" data-id={memberData.id}><img src={ siteurl + "/src/assets/images/Favorite-grey.svg"} alt="" /> Favorites</Link>
                            : <Link to="#!" className="trans" title="Favorite" data-id={memberData.id} onClick={boundItemClick}>
                            { this.state.is_fav === true ? <img src={ siteurl + "/src/assets/images/fav-opaque.png"} alt="" />: <img src={ siteurl + "/src/assets/images/Favorite-grey.svg"} alt="" /> }
                            Favorites
                            </Link>
                          }
                        </li>
                        <li><Link to={"/member/"+ currentUserName + "/messages"} className="trans" title="Messages"><img src={ siteurl + "/src/assets/images/message.svg"} alt="" /> Messages</Link></li>
                        { membershipName !== 'External' &&
                        <span>
                        <li><Link to={"/member/"+ currentUserName + "/saved-posts"} className="trans" title="Saved"><img src={ siteurl + "/src/assets/images/save_icon-grey.svg"} alt="" /> Saved</Link></li>
                        <li><Link to="#!" className="trans" title="My Planner"><img src={ siteurl + "/src/assets/images/planner_profile_tab.svg"} alt="" />My Planner</Link></li>
                        </span>
                        }
                        { (membershipName !== 'External' && membershipName === 'Premium') &&
                        <li><Link to="#!" className="trans" title="Insights"><img src={ siteurl + "/src/assets/images/insight_icon.svg"} alt="" />Insights</Link></li>
                        }
                        { (membershipName === 'Brand Sponsor' || membershipName === 'Brand Partner') &&
                        <li><Link to="#!" className="trans" title="Enterprise"><img src={ siteurl + "/src/assets/images/enterprise_profile_tab.svg"} alt="" />Enterprise</Link></li>
                        }
                        { membershipName !== 'External' &&
                        <span>
                        <li><Link to="#!" className="trans" title="Account"><img src={ siteurl + "/src/assets/images/account.svg"} alt="" /> Account</Link></li>
                        <li><Link to="#!" className="trans" title="Settings"><img src={ siteurl + "/src/assets/images/setting.svg"} alt="" /> Settings</Link></li>
                        </span>}
                      </ul>
                    </div>
                    <div className="profiler_bio">
                      <p>{memberData.user_description}</p>
                    </div>
                    <div className="profiler_links" >
                      <div className="click_links">
                          <Link to="#!" className="trans" title="Links">Links <i className="fa fa-angle-down" aria-hidden="true"></i></Link> 
                      </div>
                    </div>         
                  </div>
                </div>
            </div>
        </section>
        <section id="search_cnt" className="profile_sec" >
          <div className="container">
            <div className="inner_searchcnt">
              <div className="search_tab">
              <ul>
                <li className="active"><Link to="#!" onClick={() => this.callCatApi()} className="trans" title="All Posts"><img src={ siteurl + "/src/assets/images/tabsicons/all_gray_tab.png"} className="default" alt="" /> <img src={ siteurl + "/src/assets/images/tabsicons/all_green_tab.png"} className="hover" alt="" /> All</Link></li>
                  { 
                    // this.state.categoryData.map((item,index) => { 
                    //   if(item.id !== 1) {
                    //     return <li key={index}><Link to="#!" onClick={() => this.callCatApi(item.id)} className="trans" title={item.name}><img src={ siteurl + "/src/assets/images/tabsicons/wire_icon_gray_tab.svg"} className="default" alt=""/> <img src={ siteurl + "/src/assets/images/tabsicons/wire_icon_green_tab.svg"} className="hover"  alt="" />{item.name}</Link></li>
                    //   }
                    // })
                  }
                <li><Link to="#!" onClick={() => this.callCatApi('on-the-wire')} className="trans" title="On The Wire"><img src={ siteurl + "/src/assets/images/tabsicons/wire_icon_gray_tab.svg"} className="default" alt=""/> <img src={ siteurl + "/src/assets/images/tabsicons/wire_icon_green_tab.svg"} className="hover"  alt="" /> On The Wire</Link></li>
                <li><Link to="#!" onClick={() => this.callCatApi('mark-your-planner')} className="trans" id="location" title="Mark Your Planner"> <img src={ siteurl + "/src/assets/images/tabsicons/plnnner_icon_gray_tab.svg"} className="default" alt="" /> <img src={ siteurl + "/src/assets/images/tabsicons/plnnner_icon_green_tab.svg"} className="hover"  alt="" /> Mark Your Planner</Link></li>
                <li><Link to="#!" onClick={() => this.callCatApi('the-ultimate-haul')} className="trans" title="The Ultimate Haul"> <img src={ siteurl + "/src/assets/images/tabsicons/haul_icon_gray_tab.svg"} className="default" alt="" /> <img src={ siteurl + "/src/assets/images/tabsicons/haul_icon_green_tab.svg"} className="hover" alt="" /> The Ultimate Haul</Link></li>
                <li><Link to="#!" onClick={() => this.callCatApi('plan-connect-inspire')} className="trans" title="Plan, Connect, Inspire"><img src={ siteurl + "/src/assets/images/tabsicons/plan_inspire_icon_gray_tab.svg"} className="default" alt="" /><img src={ siteurl + "/src/assets/images/tabsicons/plan_inspire_icon_green_tab.svg"} className="hover"  alt="" />Plan, Connect, Inspire</Link></li>
                <li><Link to="#!" onClick={() => this.callCatApi('the-spread')} className="trans" title="The Spread"><img src={ siteurl + "/src/assets/images/tabsicons/spread_gray_tab.svg"} className="default" alt="" /><img src={ siteurl + "/src/assets/images/tabsicons/spread_green_tab.svg"} className="hover" alt="" /> The Spread</Link></li>  
              </ul> 
              </div>
              <div className="post_content">
              {this.state.memberPosts.length !== 0 ?
                <ul>
                  { this.state.memberPosts.map((item) => { 
                    let parsedSlug = item.terms;
                    
                    return <li key={item.id}>
                    <Link to={`/${parsedSlug[0].slug}/${item.slug}`} className="trans" title=""> 
                    <div className="product">
                        <div className="imgbox">
                        { item.post_format.length > 0 && item.post_format[0].name  === 'Video'?
                          <video controls>
                            <source src={item.acf.video.url} type="video/mp4"></source>
                          </video>
                          : item.post_format === false ?
                          <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img className="absoImg" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt="" /></span>
                          : <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img className="absoImg" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt="" /></span>
                        }
                          {/* <img src={ siteurl + IMAGE.trans_305 } alt="" />
                          <img className="absoImg" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt="" /> */}
                        </div>
                        <div className="product_detils">
                          <span className="cat_icon"><img src={""+item.cat_icon.url} alt={parsedSlug[0].name} /></span>
                          {/* <span className="more_view"><ion-icon name="more"></ion-icon></span> */}
                          <h4>{htmlToReactParser.parse(item.title)}</h4>
                        </div>
                      </div>
                    </Link>
                  </li>
                  })
                  }
                </ul>       
              : <h3>No Posts with this user...!</h3>
              }
              </div>
            </div>
          </div>
        </section>
    </div>

    if(userID && (membershipName === 'Basic' || membershipStatus )){
      return basicView;
    } else if(userID && (membershipName === 'Premium' || membershipName === 'Brand Partner' || membershipName === 'Brand Sponsor' || membershipName === 'External' )){
      return premiumView;
    }
    else{
      if(noSearch){
        return <section id="user_profile">
        <div className="container"><div className="inner_userprofile">
          <h3>{noSearchResultText}</h3>
        </div></div>
        </section>
      } else{
        return <section id="user_profile">
        <div className="container"><div className="inner_userprofile">
          <h3>{resultLoadingText}</h3>
        </div></div>
        </section>
      }
    }
  }

  render() {

    return (
      this.getMemberView()
    );
  }
  
}

const mapStateToProps = state => ({});

const mapDispatchToProps = dispatch => ({
  
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Member));

//export default Member;