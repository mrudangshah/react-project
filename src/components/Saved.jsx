import React, {Component} from 'react';
import { Link } from 'react-router-dom';
import {tpwConfig} from '../config';
import 'react-loading-bar/dist/index.css'

const siteurl = tpwConfig.API_URL;
const useridAPI = '/wp/wp-json/tpw-rest-endpoints/v1/userid?username=';

class Saved extends Component {
  constructor(props){
    super(props)
    this.state = {
      savedPosts: [],
      userID: '',
      progress: true,
      resultLoading: true,
      resultLoadingText: 'Loading...!',
      noSearch: false,
      noSearchResultText: 'No Saved Posts...!',
    }
  }

  componentDidMount() {
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
        that.setState({ 
          userID: userid.id,
          resultLoading: false,
          progress: false,
          noSearch: false,
          });
        that.getSavedPosts(); //Get Saved Posts Data 
    });
  }

  /**
   * Get Saved Posts Data
   */
  getSavedPosts = () => {
    let that = this;
    let savedPostsUrl = `${siteurl}/wp/wp-json/tpw-rest-endpoints/v1/listsavepost?userid=${that.state.userID}`;

    fetch(savedPostsUrl, {
      method:'GET',
      headers: {
        "Content-Type": "application/json"
      },
      credentials: "same-origin",
    })
    .then(function(response) { return response.json(); })
    .then(function(jsonData) {
      return JSON.stringify(jsonData);
    })
    .then(function(jsonStr) {
      if( JSON.parse(jsonStr) != null ){
        that.setState({ 
          savedPosts: JSON.parse(jsonStr),
          noSearch: false,
        });
      } else {
        that.setState({ 
          noSearch: true,
        });
      }
      
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

  getPostsView = () => {
    let { noSearch, noSearchResultText } = this.state;
    let sample_image = siteurl+'/src/assets/images/sample_image.png';
    return <section id="search_cnt" className="profile_sec">
      <div className="bread-crumb">
        <div className="container">
        <Link to={"/member/"+ this.props.route.match.params.username} className="trans"><i className="fa fa-angle-left" aria-hidden="true"></i>Profile</Link>
        <p><img src={ siteurl + "/src/assets/images/save_icon.svg" } alt="" />Saved</p>
        </div>
      </div>
      <div className="container">
      <div className="post_content">
      {this.state.savedPosts.length !== 0 ?
        <ul>
          { this.state.savedPosts.map((item) => { 
            let parsedSlug = item.terms;
            return <li key={item.id}>
            <Link to={`/${parsedSlug[0].slug}/${item.slug}`} className="trans" title=""> 
            <div className="product">
                <div className="imgbox">
                  { item.post_format.length > 0 && item.post_format[0].name  === 'Video'?
                  <video width="305" controls>
                    <source src={item.acf.video.url} type="video/mp4"></source>
                  </video>
                  : item.post_format === false ?
                  <span><img src={ siteurl + "/src/assets/images/trans_305X201.png"} alt="" /><img className="absoImg" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt="" /></span>
                  : <span><img src={ siteurl + "/src/assets/images/trans_305X201.png"} alt="" /><img className="absoImg" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt="" /></span>
                  }
                </div>
                <div className="product_detils">
                  <span className="cat_icon"><img src={""+item.term_icon.url} alt={parsedSlug[0].name} /></span>
                  {/* <span className="more_view"><ion-icon name="more"></ion-icon></span> */}
                  <h4>{item.title}</h4>
                </div>
              </div>
            </Link>
          </li>
          })
          }
        </ul>       
      : noSearch ?
        <section id="user_profile">
          <div className="container"><div className="inner_userprofile">
          <h3>{noSearchResultText}</h3>
        </div></div>
        </section>
      : <section id="user_profile">
          <div className="container"><div className="inner_userprofile">
            <h3>{noSearchResultText}</h3>
        </div></div>
        </section>
      }
          </div>
      </div>
    </section>

  }

  render() {
    let { resultLoading } = this.state;
    return (
      resultLoading ? this.handleResultLoadingText() : this.getPostsView()
    );
  }

}
export default Saved;