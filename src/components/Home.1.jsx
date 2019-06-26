import React, {Component} from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { withRouter } from 'react-router'
import {tpwConfig} from '../config';
import { TPW } from './../constants';
import { IMAGE } from './../constants/image';
import _ from 'lodash';
import './../helpers/react-slick.js';
import Slider from "react-slick";
import equalheight from 'equalheight' ;

const siteurl = tpwConfig.API_URL;
const postsAPI = '/wp/wp-json/tpw-rest-endpoints/v1/all_posts';
const communityAPI = '/wp/wp-json/tpw-rest-endpoints/v1/community';
var HtmlToReactParser = require('html-to-react').Parser;

class Home extends Component {
  constructor(props){
    super(props);
    this.state = {
      blogPosts: [],
      communityPosts: [],
      progress: true,
      total:null,
      currentCount:3,
      offset:3,
      list:[],
      isFetching:false,
      title: "Save",
      savedId: [],
    };
    this.loadOnScroll = this.loadOnScroll.bind(this);
    this.getPostsData = this.getPostsData.bind(this);
    this.savePost = this.savePost.bind(this);
  }
  
  componentDidMount () {
    let that = this;
    window.addEventListener('scroll', that.loadOnScroll);
    equalheight('.product .imgbox, .product .product_detils');
  }

  componentWillMount(){
    this.getPostsData();
    this.getCommunityData();
  }

  getPostsData = () => {
    let that = this;
    fetch(siteurl + postsAPI, {
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
      let ary =  JSON.parse(jsonStr).slice(0,that.state.offset);
      that.setState({ 
        blogPosts: ary,
        list: JSON.parse(jsonStr),
        total: JSON.parse(jsonStr).length,
        progress: false,
      });
    }).catch(error => {
      that.setState({
        error: true
      });
    });
  }

  getCommunityData() {
    let that = this;
    fetch(siteurl + communityAPI,{
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
        that.setState({ communityPosts: JSON.parse(jsonStr), progress: false });
      }).catch(error => {
        that.setState({
          error: true
        });
      });
  }

  componentWillUnmount(){
    let that = this;
    window.removeEventListener('scroll', that.loadOnScroll);
  }

  loadOnScroll = (e) =>{
    let that = this;
    //If all the content loaded
    if(that.state.currentCount >= that.state.total) return;

    //Get div at the bottom of the content
    var el = document.getElementById('content-end');

    if(el) {
      var rect = el.getBoundingClientRect();
      var isAtEnd = (
          rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) && /*or $(window).height() */
          rect.right <= (window.innerWidth || document.documentElement.clientWidth) /*or $(window).width() */
      );

      //User at the end of content. load more content
      if(isAtEnd){
        //If content list is still loading do not request for another content list.
        if(that.state.isFetching) return
        that.setState({isFetching:true});
          var count = that.state.currentCount + that.state.offset
          if(that.state.currentCount <= that.state.total){
            that.setState({
              isFetching:false,
              currentCount:count,
              blogPosts: that.state.list.slice(0, count)
            })
          }
      }
    }
  }

  savePost = (item, e) => {
    if( item.save_post_status === false ){
      this.state.savedId.push(item.id);
      this.setState({ title: "Post Saved" })
      let savePostsAPI = siteurl + '/wp/wp-json/tpw-rest-endpoints/v1/savepost?username=tpwadmin&dataid='+item.id;
      fetch( savePostsAPI  , {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          name: 'tpwadmin',
        })
      })
    }
  }

  getPostsView () {
    var htmlToReactParser = new HtmlToReactParser();
    let sample_image = siteurl+ IMAGE.sample_image;
    return <section id="blog">
      <div className="inner_blog">
      { this.state.blogPosts.map((item,index) => {
        let boundItemClick = this.savePost.bind(this, item);
        if (index %2 === 0) {
          //condition for on-the-wire category
          if(item.terms[0].slug === 'on-the-wire') {
            return <div key={index} className="blog_cnt">
              <div className="col_blog">
                <div className="inner_col_blog">
                  { item.post_format.length > 0 && item.post_format[0].name  === 'Video'?
                    <video controls>
                      <source src={item.acf.video.url} type="video/mp4"></source>
                    </video>
                    : item.post_format === false ?
                    <img className="img_respon" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt={item.acf.single_featured_image.alt} />
                    : <img className="img_respon" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt={item.acf.single_featured_image.alt} />
                  }
                </div>
              </div>
              <div className="col_blog">
                <div className="inner_col_blog pad_around">
                <div className="main_blog_dtls">
                  <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                    <div className="blog_dtltitle" style={{ 'color': item.term_color }}><img src={item.term_icon.url} alt={item.term_icon.alt} />{item.terms[0].name}</div>
                    { item.post_format.length > 0 && item.post_format[0].name  === 'Video'?
                    <div className="post_type">Video</div>
                    : ''
                    }
                    <h2>{htmlToReactParser.parse(item.title)}</h2>
                    <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                    <div className="blog_author">
                      <div className="imgbox">
                        <img src={siteurl + IMAGE.trans_50 } alt="" />
                        <img src={item.author_avatar} className="absoImg" alt=""/>
                      </div>
                      <span>{item.author}</span>
                    </div>
                    <div className="readmore">
                    { item.post_format.length > 0 && item.post_format[0].name  === 'Video'?
                    <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="Watch Now" style={{ 'color': item.term_color }}>Watch Now</Link>
                    : <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="View Post" style={{ 'color': item.term_color }}>View Post</Link>
                    }
                    </div>
                    <div className="save_share_btn">
                      <ul>
                        <li>
                          <button className="trans save_blog" title="Save" data-id={item.id} onClick={boundItemClick} style={{ 'color': item.term_color }}>
                          { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ siteurl + IMAGE.save_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save } alt="On The Wire" />
                            : item.save_post_status === true ? <img className="svg" src={ siteurl + IMAGE.save_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save } alt="On The Wire" /> }
                          Save
                          </button>
                        </li>
                          <li>
                            <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                            <img className="svg" src={ siteurl + IMAGE.share } alt="On The Wire" />Share</button> 
                          </li>
                        </ul>
                    </div>
                  </div>
                </div>
                </div>
              </div>
            </div>
          }
          //condition for Mark YOur Planner category
          else if(item.terms[0].slug === 'mark-your-planner') {
            return <div key={index} className="blog_cnt">
            <div className="col_blog">
              <div className="inner_col_blog">
                <img className="img_respon" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:''} alt={item.acf.single_featured_image.alt} />
              </div>
            </div>
            <div className="col_blog">
                <div className="inner_col_blog pad_around">
                <div className="main_blog_dtls">
                  <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                    <div className="blog_dtltitle" style={{ 'color': item.term_color }}><img src={item.term_icon.url} alt={item.term_icon.alt} />{item.terms[0].name}</div>
                    <div className="post_type">Event</div>
                    <h2>{htmlToReactParser.parse(item.title)}</h2>
                    <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                    <div className="blog_author">
                      <div className="imgbox">
                        <img src={siteurl + IMAGE.trans_50 } alt="Mark Your Planner" />
                        <img src={item.author_avatar} className="absoImg" alt=""/>
                      </div>
                      <span>{item.author}</span>
                    </div>
                    <div className="readmore">
                      <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="Learn More" style={{ 'color': item.term_color }}>Learn More</Link>
                    </div>
                    <div className="save_share_btn">
                      <ul>
                        <li>
                          <button className="trans" title="Save" onClick={boundItemClick} style={{ 'color': item.term_color }}>
                          { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ siteurl + IMAGE.save_plnnner_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_plnnner } alt="On The Wire" />
                            : item.save_post_status === true ? <img className="svg" src={ siteurl + IMAGE.save_plnnner_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_plnnner } alt="On The Wire" /> }
                          Save
                          </button> 
                        </li>
                          <li>
                            <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                            <img className="svg" src={ siteurl + IMAGE.share_planner } alt="On The Wire" />Share</button> 
                          </li>
                        </ul>
                    </div>
                  </div>
                </div>
                </div>
              </div>
            </div>
          }
          //condition for the-ultimate-haul category
          else if(item.terms[0].slug === 'the-ultimate-haul') {
            return <div key={index} className="blog_cnt">
            <div className="col_blog">
              <div className="inner_col_blog">
              {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                <video controls>
                  <source src={item.acf.video.url} type="video/mp4"></source>
                </video>
                : item.post_format === false ?
                  <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} />
                  : <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} />
              }
              </div>
            </div>
            <div className="col_blog">
              <div className="inner_col_blog pad_around">
              <div className="main_blog_dtls">
                <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                  <div className="blog_dtltitle" style={{ 'color': item.term_color }}><img src={item.term_icon.url} alt={item.term_icon.alt} />{item.terms[0].name}</div>
                  <h2>{htmlToReactParser.parse(item.title)}</h2>
                  <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                  <div className="blog_author">
                    <div className="imgbox">
                      <img src={siteurl + IMAGE.trans_50 } alt="Ultimate Haul" />
                      <img src={item.author_avatar} className="absoImg" alt=""/>
                    </div>
                    <span>{item.author}</span>
                  </div>
                  <div className="readmore">
                    <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="View Post" style={{ 'color': item.term_color }}>View Post</Link>
                  </div>
                  <div className="save_share_btn">
                    <ul>
                      <li>
                        <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick} style={{ 'color': item.term_color }}>
                        { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ siteurl + IMAGE.save_haul_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_haul } alt="On The Wire" />
                          : item.save_post_status === true ? <img className="svg" src={ siteurl + IMAGE.save_haul_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_haul } alt="On The Wire" /> }
                        Save
                        </button> 
                      </li>
                        <li>
                          <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                          <img className="svg" src={ siteurl + IMAGE.share_haul } alt="Share" />Share</button>
                        </li>
                      </ul>
                  </div>
                </div>
              </div>
              </div>
            </div>
            </div>
          }
          //condition for plan-connect-inspire category
          else if(item.terms[0].slug === 'plan-connect-inspire') {
            return <div key={index} className="blog_cnt">
            <div className="col_blog">
              <div className="inner_col_blog">
              {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                <video controls>
                  <source src={item.acf.video.url} type="video/mp4"></source>
                </video>
                : item.post_format === false ?
                  <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} />
                  : <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} />
              }
              </div>
            </div>
            <div className="col_blog">
              <div className="inner_col_blog pad_around">
              <div className="main_blog_dtls">
                <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                  <div className="blog_dtltitle" style={{ 'color': item.term_color }}><img src={item.term_icon.url} alt={item.term_icon.alt} />{item.terms[0].name}</div>
                  <h2>{htmlToReactParser.parse(item.title)}</h2>
                  <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                  <div className="blog_author">
                    <div className="imgbox">
                      <img src={siteurl + IMAGE.trans_50 } alt="Ultimate Haul" />
                      <img src={item.author_avatar} className="absoImg" alt=""/>
                    </div>
                    <span>{item.author}</span>
                  </div>
                  <div className="readmore">
                    <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="View Post" style={{ 'color': item.term_color }}>View Post</Link>
                  </div>
                  <div className="save_share_btn">
                    <ul>
                      <li>
                        <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick} style={{ 'color': item.term_color }}>
                        { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ siteurl + IMAGE.save_inspire_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_inspire } alt="On The Wire" />
                            : item.save_post_status === true ? <img className="svg" src={ siteurl + IMAGE.save_inspire_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_inspire } alt="On The Wire" /> }
                          Save
                        </button> 
                      </li>
                        <li>
                          <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                          <img className="svg" src={ siteurl + IMAGE.share_inspire } alt="Share" />Share</button> 
                        </li>
                      </ul>
                  </div>
                </div>
              </div>
              </div>
            </div>
            </div>
          }
          //condition for the-spread category
          else if(item.terms[0].slug === 'the-spread') {
            return <div key={index} className="blog_cnt">
              <div className="col_blog">
                <div className="inner_col_blog">
                {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                  <video controls>
                    <source src={item.acf.video.url} type="video/mp4"></source>
                  </video>
                  : item.post_format === false ?
                  <img className="img_respon" src={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.url : sample_image : ''} alt={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.alt : 'sample_image' : ''} />                        
                  : <img className="img_respon" src={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.url : sample_image : ''} alt={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.alt : 'sample_image' : ''} />
                }
                </div>
              </div>
              <div className="col_blog">
                <div className="inner_col_blog pad_around">
                <div className="main_blog_dtls">
                  <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                    <div className="blog_dtltitle" style={{ 'color': item.term_color }}><img src={item.term_icon.url} alt={item.term_icon.alt} />{item.terms[0].name}</div>
                    <h2>{htmlToReactParser.parse(item.title)}</h2>
                    <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                    <div className="blog_author">
                      <div className="imgbox">
                        <img src={siteurl + IMAGE.trans_50 } alt="" />
                        <img src={item.author_avatar} className="absoImg" alt=""/>
                      </div>
                      <span>{item.author}</span>
                    </div>
                    <div className="readmore">
                      <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="View Post" style={{ 'color': item.term_color }}>View Post</Link>
                    </div>
                    <div className="save_share_btn">
                      <ul>
                        <li>
                          <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick} style={{ 'color': item.term_color }}>
                          { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ siteurl + IMAGE.save_spread_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_spread } alt="On The Wire" />
                            : item.save_post_status === true ? <img className="svg" src={ siteurl + IMAGE.save_spread_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_spread } alt="On The Wire" /> }
                          Save
                          </button> 
                        </li>
                          <li>
                            <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                            <img className="svg" src={ siteurl + IMAGE.share_spread } alt="Share" />Share</button> 
                          </li>
                        </ul>
                    </div>
                  </div>
                </div>
                </div>
              </div>
              </div>
          } 
        } else{
          //condition for on-the-wire category
          if(item.terms[0].slug === 'on-the-wire') {
            return <div key={index} className="blog_cnt">
              <div className="col_blog float-right">
                <div className="inner_col_blog">
                  { item.post_format.length > 0 && item.post_format[0].name  === 'Video'?
                    <video controls>
                      <source src={item.acf.video.url} type="video/mp4"></source>
                    </video>
                    : item.post_format === false ?
                    <img className="img_respon" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt={item.acf.single_featured_image.alt} />
                    : <img className="img_respon" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt={item.acf.single_featured_image.alt} />
                  }
                </div>
              </div>
              <div className="col_blog float-right">
                <div className="inner_col_blog pad_around">
                <div className="main_blog_dtls">
                  <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                    <div className="blog_dtltitle" style={{ 'color': item.term_color }}><img src={item.term_icon.url} alt={item.term_icon.alt} />{item.terms[0].name}</div>
                    { item.post_format.length > 0 && item.post_format[0].name  === 'Video'?
                    <div className="post_type">Video</div>
                    : ''
                    }
                    <h2>{htmlToReactParser.parse(item.title)}</h2>
                    <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                    <div className="blog_author">
                      <div className="imgbox">
                        <img src={siteurl + IMAGE.trans_50 } alt="" />
                        <img src={item.author_avatar} className="absoImg" alt=""/>
                      </div>
                      <span>{item.author}</span>
                    </div>
                    <div className="readmore">
                    { item.post_format.length > 0 && item.post_format[0].name  === 'Video'?
                    <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="Watch Now">Watch Now</Link>
                    : <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="View Post">View Post</Link>
                    }
                    </div>
                    <div className="save_share_btn">
                      <ul>
                        <li>
                          <button className="trans save_blog" title="Save" data-id={item.id} onClick={boundItemClick} style={{ 'color': item.term_color }}>
                          { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ siteurl + IMAGE.save_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save } alt="On The Wire" />
                            : item.save_post_status === true ? <img className="svg" src={ siteurl + IMAGE.save_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save } alt="On The Wire" /> }
                          Save
                          </button> 
                        </li>
                          <li>
                            <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                            <img className="svg" src={ siteurl + IMAGE.share } alt="Share" />Share</button>
                          </li>
                        </ul>
                    </div>
                  </div>
                </div>
                </div>
              </div>
            </div>
          }
          else if(item.terms[0].slug === 'mark-your-planner') {
            return <div key={index} className="blog_cnt">
            <div className="col_blog float-right">
              <div className="inner_col_blog">
                <img className="img_respon" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:''} alt={item.acf.single_featured_image.alt} />
              </div>
            </div>
            <div className="col_blog float-right">
                <div className="inner_col_blog pad_around">
                <div className="main_blog_dtls">
                  <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                    <div className="blog_dtltitle" style={{ 'color': item.term_color }}><img src={item.term_icon.url} alt={item.term_icon.alt} />{item.terms[0].name}</div>
                    <div className="post_type">Event</div>
                    <h2>{htmlToReactParser.parse(item.title)}</h2>
                    <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                    <div className="blog_author">
                      <div className="imgbox">
                        <img src={siteurl + IMAGE.trans_50 } alt="Mark Your Planner" />
                        <img src={item.author_avatar} className="absoImg" alt=""/>
                      </div>
                      <span>{item.author}</span>
                    </div>
                    <div className="readmore">
                      <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="Learn More" style={{ 'color': item.term_color }}>Learn More</Link>
                    </div>
                    <div className="save_share_btn">
                      <ul>
                        <li>
                          <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick} style={{ 'color': item.term_color }}>
                          { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ siteurl + IMAGE.save_plnnner_opaque } alt="Mark Your Planner" /> : <img className="svg" src={ siteurl + IMAGE.save_plnnner } alt="Mark Your Planner" />
                            : item.save_post_status === true ? <img className="svg" src={ siteurl + IMAGE.save_plnnner_opaque } alt="Mark Your Planner" /> : <img className="svg" src={ siteurl + IMAGE.save_plnnner } alt="Mark Your Planner" /> }
                          Save
                          </button> 
                        </li>
                          <li>
                            <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                            <img className="svg" src={ siteurl + IMAGE.share_planner } alt="Share" />Share</button>
                          </li>
                        </ul>
                    </div>
                  </div>
                </div>
                </div>
              </div>
            </div>
          }
          else if(item.terms[0].slug === 'the-ultimate-haul') {
            return <div key={index} className="blog_cnt">
            <div className="col_blog float-right">
              <div className="inner_col_blog">
              {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                <video controls>
                  <source src={item.acf.video.url} type="video/mp4"></source>
                </video>
                : item.post_format === false ?
                  <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} />
                  : <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} />
              }
              </div>
            </div>
            <div className="col_blog float-right">
              <div className="inner_col_blog pad_around">
              <div className="main_blog_dtls">
                <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                  <div className="blog_dtltitle" style={{ 'color': item.term_color }}><img src={item.term_icon.url} alt={item.term_icon.alt} />{item.terms[0].name}</div>
                  <h2>{htmlToReactParser.parse(item.title)}</h2>
                  <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                  <div className="blog_author">
                    <div className="imgbox">
                      <img src={siteurl + IMAGE.trans_50 } alt="Ultimate Haul" />
                      <img src={item.author_avatar} className="absoImg" alt=""/>
                    </div>
                    <span>{item.author}</span>
                  </div>
                  <div className="readmore">
                    <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="View Post" style={{ 'color': item.term_color }}>View Post</Link>
                  </div>
                  <div className="save_share_btn">
                    <ul>
                      <li>
                        <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick} style={{ 'color': item.term_color }}>
                        { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ siteurl + IMAGE.save_haul_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_haul } alt="On The Wire" />
                            : item.save_post_status === true ? <img className="svg" src={ siteurl + IMAGE.save_haul_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_haul } alt="On The Wire" /> }
                          Save
                        </button> 
                      </li>
                        <li>
                          <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                          <img className="svg" src={ siteurl + IMAGE.share_haul } alt="Share" />Share</button>
                        </li>
                      </ul>
                  </div>
                </div>
              </div>
              </div>
            </div>
            </div>
          }
          //condition for plan-connect-inspire category
          else if(item.terms[0].slug === 'plan-connect-inspire') {
            return <div key={index} className="blog_cnt">
            <div className="col_blog float-right">
              <div className="inner_col_blog">
              {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                <video controls>
                  <source src={item.acf.video.url} type="video/mp4"></source>
                </video>
                : item.post_format === false ?
                  <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} />
                  : <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} />
              }
              </div>
            </div>
            <div className="col_blog float-right">
              <div className="inner_col_blog pad_around">
              <div className="main_blog_dtls">
                <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                  <div className="blog_dtltitle" style={{ 'color': item.term_color }}><img src={item.term_icon.url} alt={item.term_icon.alt} />{item.terms[0].name}</div>
                  <h2>{htmlToReactParser.parse(item.title)}</h2>
                  <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                  <div className="blog_author">
                    <div className="imgbox">
                      <img src={siteurl + IMAGE.trans_50 } alt="Ultimate Haul" />
                      <img src={item.author_avatar} className="absoImg" alt=""/>
                    </div>
                    <span>{item.author}</span>
                  </div>
                  <div className="readmore">
                    <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="View Post" style={{ 'color': item.term_color }}>View Post</Link>
                  </div>
                  <div className="save_share_btn">
                    <ul>
                      <li>
                        <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick} style={{ 'color': item.term_color }}>
                        { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ siteurl + IMAGE.save_inspire_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_inspire } alt="On The Wire" />
                            : item.save_post_status === true ? <img className="svg" src={ siteurl + IMAGE.save_inspire_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_inspire } alt="On The Wire" /> }
                          Save
                        </button>
                      </li>
                        <li>
                          <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                          <img className="svg" src={ siteurl + IMAGE.share_inspire } alt="Share" />Share</button>
                        </li>
                      </ul>
                  </div>
                </div>
              </div>
              </div>
            </div>
            </div>
          }
          //condition for the-spread category
          else if(item.terms[0].slug === 'the-spread') {
            return <div key={index} className="blog_cnt">
              <div className="col_blog float-right">
                <div className="inner_col_blog">
                {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                  <video controls>
                    <source src={item.acf.video.url} type="video/mp4"></source>
                  </video>
                  : item.post_format === false ?
                  <img className="img_respon" src={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.url : sample_image : ''} alt={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.alt : 'sample_image' : ''} />                        
                  : <img className="img_respon" src={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.url : sample_image : ''} alt={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.alt : 'sample_image' : ''} />
                }
                </div>
              </div>
              <div className="col_blog float-right">
                <div className="inner_col_blog pad_around">
                <div className="main_blog_dtls">
                  <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                    <div className="blog_dtltitle" style={{ 'color': item.term_color }}><img src={item.term_icon.url} alt={item.term_icon.alt} />{item.terms[0].name}</div>
                    <h2>{htmlToReactParser.parse(item.title)}</h2>
                    <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                    <div className="blog_author">
                      <div className="imgbox">
                        <img src={siteurl + IMAGE.trans_50 } alt="" />
                        <img src={item.author_avatar} className="absoImg" alt=""/>
                      </div>
                      <span>{item.author}</span>
                    </div>
                    <div className="readmore">
                      <Link to={`${item.terms[0].slug}/${item.slug}`} className="trans" title="View Post" style={{ 'color': item.term_color }}>View Post</Link>
                    </div>
                    <div className="save_share_btn">
                      <ul>
                        <li>
                          <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick} style={{ 'color': item.term_color }}>
                          { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ siteurl + IMAGE.save_spread_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_spread } alt="On The Wire" />
                            : item.save_post_status === true ? <img className="svg" src={ siteurl + IMAGE.save_spread_opaque } alt="On The Wire" /> : <img className="svg" src={ siteurl + IMAGE.save_spread } alt="On The Wire" /> }
                          Save
                          </button> 
                        </li>
                          <li>
                            <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                            <img className="svg" src={ siteurl + IMAGE.share_spread } alt="Share" />Share</button>
                          </li>
                        </ul>
                    </div>
                  </div>
                </div>
                </div>
              </div>
              </div>
          }
        }
       }) }
        <div id="content-end" >
          { (this.state.currentCount <= this.state.total && this.state.isFetching)? <span>Loading Content...!!</span>
            : null
          }
        </div>
      </div>
    </section>
      
  }

  getCommunityView() {
    let sample_image = siteurl+IMAGE.sample_image;
    var htmlToReactParser = new HtmlToReactParser();
    const sliderSettings = { dots: false, speed: 300, slidesToShow: 4 }
    return <section id="morelove_product">
      <div className="container">
        <div className="inner_morelove">
            <h2 className="title">From the Community</h2>
            { this.state.communityPosts.length !== 0 &&
            <ul>
            <Slider {...sliderSettings}>
              { this.state.communityPosts.map((item) => {
                let termSlug = item.terms;
                if( typeof termSlug === 'object'){
                  var termslug = termSlug.slug;
                }
                return <li key={item.id}>
                <Link to={`/${termslug}/${item.slug}`} className="trans" title=""> 
                <div className="product">
                  <div className="imgbox">
                  { termslug === 'on-the-wire' ?
                      item.post_format === 'video' ? 
                      <video controls>
                        <source src={item.acf ? item.acf.video? item.acf.video.url:'' : ''} type="video/mp4"></source>
                      </video>
                      : item.post_format === false ?
                      <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } className="absoImg" alt="" /></span>                      
                      : <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } className="absoImg" alt="" /></span>
                    : termslug === 'mark-your-planner' ?
                      <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } className="absoImg" alt="" /></span>
                    : termslug === 'plan-connect-inspire' ?
                      <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } className="absoImg" alt="" /></span>                    
                    : termslug === 'the-ultimate-haul' ?
                      <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } className="absoImg" alt="" /></span>
                    : termslug === 'the-spread' ?
                      <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.image_gallery[0]? item.acf.image_gallery[0].image.url:sample_image:'' } className="absoImg" alt="" /></span>
                      : null
                    }
                  </div>
                    <div className="product_detils">
                      <span className="cat_icon"><img src={item.term_icon.url} alt={item.term_icon.alt} /></span>
                        <span className="more_view">
                        </span>
                        <h4>{htmlToReactParser.parse(item.title)}</h4>
                        <div className="lover_block">
                          <div className="imgbox"><img src={siteurl + "/src/assets/images/trans_31X31.png"} alt="" /> <img src={item.author_avatar} className="absoImg"  alt="" /></div>
                          <span className="name">{item.author_nicename}</span>
                      </div>
                    </div>
                  </div>
                </Link>
              </li>
                })
              }
            </Slider>
            </ul>
            }
          </div>
        </div>
    </section>
  }

  render() {

    return (
      <div>
        {this.getPostsView()}
        {this.getCommunityView()}
      </div> 
      
    );
  }
}
//export default Home;

const mapStateToProps = state => ({});

const mapDispatchToProps = dispatch => ({})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Home));