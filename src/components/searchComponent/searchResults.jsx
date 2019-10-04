import React from 'react';
import { connect } from 'react-redux';
import {Link, withRouter} from 'react-router-dom';
import { tpwConfig } from '../../config';
import _ from 'lodash';
import $ from 'jquery';
import 'react-loading-bar/dist/index.css'
import { IMAGE } from './../../constants/image';
import Equalizer from 'equalizer';
import { TPW } from './../../constants';

const siteurl = tpwConfig.API_URL;
const bbAPI = TPW.BbAPI;
const allPostAPI = TPW.SearchAPI;
var HtmlToReactParser = require('html-to-react').Parser;

class SearchResults extends React.Component {

  constructor(props) {
   
    super(props);
    
    this.state = {
      searchData: [],
      bbMembers: [],
      resultType: 'member',
      sortLabel: 'Newest First',
      isLocation : false,
      progress: true,
      searchedPropsWord : '',
      resultLoading: false,
      resultLoadingText: 'Loading...!',
      noSearchResultText: 'No search Results found...!'
    };
    
    this.searchMember = this.searchMember.bind(this);
    this.searchPost = this.searchPost.bind(this);
    this.sortResults = this.sortResults.bind(this);
  }

  componentDidMount () {
    this.searchMember();
    Equalizer('.post_content ul>li').align();
  }

  componentDidUpdate() {
    $('#search_cnt .search_tab ul li').on('click', function() {
      $('li.active').removeClass('active');
      $(this).addClass('active');
    });
  }

  componentWillReceiveProps(nextProps){
    if(nextProps.route.match.params.term !== this.props.route.match.params.term){
      this.setState({ searchedPropsWord: nextProps.route.match.params.term });
      this.searchMember(nextProps.route.match.params.term);
    }
  }

  searchMember(searchWord) {
    let that = this;
    let searchTerm = this.props.route.match.params.term;
    
    var searchParam = searchWord && typeof(searchWord) !== 'object' ? searchWord : searchTerm;
    that.setState({ 
      isLocation: false,
      progress: true,
      bbMembers: [],
      resultType: 'member',
      resultLoading: true
    });
    
    let memberUrl = siteurl + bbAPI + '?search=' + searchParam;
    
    fetch( memberUrl , {
        method: "GET",
        headers: {
          "Content-Type": "application/json"
        },
        credentials: "same-origin"
      })
      .then(function(response) { return response.json(); })
      .then(function(jsonData) {
        return JSON.stringify(jsonData);
      })
      .then(function(jsonStr) {  
        that.setState({ 
          bbMembers: JSON.parse(jsonStr),
          progress: false,
          resultLoading: false
        });
      });    
  }

  searchPost(categoryName) {
    
    let that = this;
    let is_location = (categoryName === 'mark-your-planner') ? true : false;
    
    that.setState({ 
      isLocation: is_location,
      progress: true,
      bbMembers: [],
      resultType: 'post',
      resultLoading: true
    });

    const searchvalues = that.props.route.match.params.term;

    let extendedTerm = categoryName ? '&category_name='+categoryName : "";
    let postUrl = siteurl + allPostAPI + '?search=' + searchvalues + extendedTerm;

    fetch( postUrl )
    .then(function(response) { return response.json(); })
    .then(function(jsonData) {
      return JSON.stringify(jsonData);
    })
    .then(function(jsonStr) {      
      that.setState({ 
        bbMembers: JSON.parse(jsonStr),
        progress: false,
        resultLoading: false
      });
    });    
  }

  sortResults() {
    var results = this.state.bbMembers;
    let sort_label = '';
    if(this.state.sortLabel === 'Newest First') {
      sort_label = 'Oldest First';
      results.sort(function(a,b){
        return new Date(a.date) - new Date(b.date);
      })
    } else if(this.state.sortLabel === 'Oldest First') {
      sort_label = 'Newest First';
      results.sort(function(a,b){
        return new Date(b.date) - new Date(a.date);
      })
    }
    this.setState({ sortLabel: sort_label, bbMembers: results});
  }

  renderSearchResult () {
    let { resultLoading, resultLoadingText, noSearchResultText } = this.state;
    let bbLength = this.state.bbMembers.length
    let sample_image = siteurl+'/src/assets/images/sample_image.png';
    var htmlToReactParser = new HtmlToReactParser();

    if (bbLength > 0) {
       if(this.state.resultType === 'member') {
        let default_avtar = siteurl+IMAGE.defaultAvatar;
        return <div className="search_tab_cnt">
          <ul>
          { this.state.bbMembers.map((item,index) => { 
            return <li key={index}>
              <div className="people_block">
                <div className="imgbox">
                    <img src={ siteurl + IMAGE.trans_201 } alt="" />
                    <img src={item.avatar_urls.full?item.avatar_urls.full:default_avtar} className="absoImg" alt="" /> 
                  </div>
                  <div className="people_prof">{item.user_role}</div>
                  <div className="prople_name" style={{ 'text-align': 'center' }}><a href={"/member/"+ item.user_login} className="trans" title={item.name}>{item.name}</a></div>
                  <div className="people_dscr">
                    <p>{ _.truncate( item.user_description, {'length': '40 '} ) }</p>
                  </div>
              </div>
            </li>
          })
        }
        </ul>
      </div>
      } else if(this.state.resultType === 'post') {
        return <div className="post_content">
          <ul>
            { this.state.bbMembers.map((item,index) => { 
              let catTerms = item.terms;
            	return <li key={index}>
                <Link to={`/${catTerms[0].slug}/${item.slug}`} className="trans" title=""> 
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
                    </div>
                    <div className="product_detils">
                      <span className="cat_icon">
                        <img src={""+item.cat_icon.url} alt={catTerms[0].name} />
                      </span>
                      {/* <span className="more_view"><ion-icon name="more" role="img" className="hydrated" aria-label="more"></ion-icon></span> */}
                      <h4>{htmlToReactParser.parse(item.title)}</h4>
                      <div className="lover_block">
                        <div className="imgbox">
                          <img src={ siteurl + IMAGE.trans_31 } alt="" /> 
                          <img src={ item.author_avatar } className="absoImg" alt="" />
                        </div>
                        <span className="name">{item.author}</span>
                      </div>
                    </div>
                  </div>
                </Link>
              </li>
            })
          }
          </ul>
        </div>
      }
    } else{
       if(resultLoading){
         return <p>{resultLoadingText}</p>
       }else{
          return <p>{noSearchResultText}</p>
       }
    }
  }

  render() {

    return (
      <div>
      <div className="wrapper"> 
        <section id="search_cnt">
          <div className="container">
            <div className="inner_searchcnt">
              <div className="search_tab">
              <ul>
                <li className="active" ><a href="#!" onClick={this.searchMember} className="trans" title="People"><img src={ siteurl + "/src/assets/images/tabsicons/people_gray_tab.svg"} className="default" alt="" /><img src={ siteurl + "/src/assets/images/tabsicons/people_green_tab.svg"} className="hover" alt="" />  People</a></li>
                <li><a href="#!" onClick={() => this.searchPost(0)} className="trans" title="All Posts"><img src={ siteurl + "/src/assets/images/tabsicons/all_gray_tab.png"} className="default" alt="" /> <img src={ siteurl + "/src/assets/images/tabsicons/all_green_tab.png"} className="hover" alt="" /> All Posts</a></li>
                <li><a href="#!" onClick={() => this.searchPost('on-the-wire')} className="trans" title="On The Wire"><img src={ siteurl + "/src/assets/images/tabsicons/wire_icon_gray_tab.svg"} className="default" alt=""/> <img src={ siteurl + "/src/assets/images/tabsicons/wire_icon_green_tab.svg"} className="hover"  alt="" /> On The Wire</a></li>
                <li><a href="#!" onClick={() => this.searchPost('mark-your-planner')} className="trans" id="location" title="Mark Your Planner"> <img src={ siteurl + "/src/assets/images/tabsicons/plnnner_icon_gray_tab.svg"} className="default" alt="" /> <img src={ siteurl + "/src/assets/images/tabsicons/plnnner_icon_green_tab.svg"} className="hover"  alt="" /> Mark Your Planner</a></li>
                <li><a href="#!" onClick={() => this.searchPost('the-ultimate-haul')} className="trans" title="The Ultimate Haul"> <img src={ siteurl + "/src/assets/images/tabsicons/haul_icon_gray_tab.svg"} className="default" alt="" /> <img src={ siteurl + "/src/assets/images/tabsicons/haul_icon_green_tab.svg"} className="hover" alt="" /> The Ultimate Haul</a></li>
                <li><a href="#!" onClick={() => this.searchPost('plan-connect-inspire')} className="trans" title="Plan, Connect, Inspire"><img src={ siteurl + "/src/assets/images/tabsicons/plan_inspire_icon_gray_tab.svg"} className="default" alt="" /><img src={ siteurl + "/src/assets/images/tabsicons/plan_inspire_icon_green_tab.svg"} className="hover"  alt="" />Plan, Connect, Inspire</a></li>
                <li><a href="#!" onClick={() => this.searchPost('the-spread')} className="trans" title="The Spread"><img src={ siteurl + "/src/assets/images/tabsicons/spread_gray_tab.svg"} className="default" alt="" /><img src={ siteurl + "/src/assets/images/tabsicons/spread_green_tab.svg"} className="hover" alt="" /> The Spread</a></li>
              </ul> 
              </div>
            </div>
            <div className="search_links">
              <ul>
                <li>Sort <a href="#!" onClick={this.sortResults} className="trans" title="A-Z">{this.state.sortLabel}</a></li>
              
                {this.state.isLocation ? <li>Locations <a href="#!" className="trans" title="A-Z">All</a></li> : null}
              </ul>
            </div>
          {this.renderSearchResult()}
        </div>
      </section>
      </div>
      </div>
    )
  }
}

const mapDispatchToProps = dispatch => ({})

export default withRouter(connect(null, mapDispatchToProps)(SearchResults));