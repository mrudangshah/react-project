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
import { getHomeItems } from './../actions/homeAction';
import Moment from 'moment';
import isEmpty from 'lodash/isEmpty';

const siteurl = tpwConfig.API_URL;
var HtmlToReactParser = require('html-to-react').Parser;
var htmlToReactParser = new HtmlToReactParser();
let sample_image = siteurl+ IMAGE.sample_image;

const sliderSettings = { 
  dots: false,
  infinite: false,
  speed: 300,
  slidesToShow: 4,
  slidesToScroll: 1,
  responsive: [{
      breakpoint: 1024,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        infinite: true,
        dots: false
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
  ]
}

class Home extends Component {
  constructor(props){
    super(props);
    this.state = {
      blogPosts: [],
      total:null,
      currentCount:3,
      offset:3,
      list:[],
      isFetching:false,
      title: "Save",
      savedId: [],
    };
    this.savePost = this.savePost.bind(this);
  }
  
  componentDidMount () {
    let that = this;
    window.addEventListener('scroll', that.loadOnScroll);
    equalheight('.product .imgbox, .product .product_detils');
  }

  componentWillMount(){
    const { getHomeItems } = this.props;
    getHomeItems();
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

  getHomeContent = () => {
    const { homeItems, signupItems, pageLoading } = this.props;
    const that = this;

    return (<section id="blog">
      <div className="inner_blog">
      
      {Object.keys(homeItems).map(function(type) {
          return <div key={type}>{
            type === 'twoPosts' ? that.getTwoPostContent(homeItems[type]) :
              type === 'sponsoredPosts' ? 
                (( !isEmpty( homeItems.sponsoredPosts[0] ) ) && that.getSponsorPostContent(homeItems[type]) ) :
                type === 'onePosts' ? that.getOnePostContent(homeItems[type]) :
                  type === 'communityPosts' ? that.getCommunityPostContent(homeItems[type]) :
                    type === 'threePosts' ? that.getThreePostContent(homeItems[type]) :
                      this.noRecord()
          }</div>;
      })}

      </div>
      { pageLoading === false && 
      <div className="singup-pannel" style={{ 'background':' url('+signupItems.signup_background_image.url+') no-repeat center ' }}>
        <div className="container">
          <h2>{signupItems.signup_heading}</h2>
          <p>{signupItems.signup_sub_title}</p>
          <Link to="/user/signup" className="trans blue_bg" title="Sign Me Up">Sign Me Up</Link>
          <div className="custom_group"><p>Already a Member? <a href="/user/login" className="trans" title="Sign In"> Sign In </a>.</p></div>
        </div>
      </div>
      }
    </section>);
  }

  /**
   * POST CONTENT
   */
  getTwoPostContent = (itemObj) => {
    return (      
      itemObj.map((item, index) => {
        let boundItemClick = this.savePost.bind(this, item);
        console.log(index)
        return <div key={index} className="blog_cnt">
            <div className={[index %2 === 0 ? 'col_blog' : 'col_blog float-right']}>
              <div className="inner_col_blog">
              {item.terms[0].slug === 'the-spread' ?
                  item.acf.image_gallery !== false ?
                  <img className="img_respon" src={item.acf.image_gallery[0].image.url} alt={'blogImage'} />
                : item.post_format.length > 0 && item.post_format[0].name  === 'Video' ? 
                  <video controls>
                    <source src={item.acf.video.url} type="video/mp4"></source>
                  </video>
                : <img className="img_respon" src={sample_image} alt={'blogImage'} /> : ''
              }
              { item.terms[0].slug !== 'the-spread' ?
               item.post_format.length > 0 && item.post_format[0].name  === 'Video' ?
                <video controls>
                  <source src={item.acf.video.url} type="video/mp4"></source>
                </video>
              : item.post_format === false ?
              <img className="img_respon" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt={item.acf.single_featured_image.alt} />
              : '' : ''
              }
              </div>
            </div>
            <div className={'col_blog'}>
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
                          { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ item.term_saved_icon.url } alt="Save" /> : <img className="svg" src={ item.term_save_icon.url } alt="Save" />
                            : item.save_post_status === true ? <img className="svg" src={ item.term_saved_icon.url } alt="Saved" /> : <img className="svg" src={ item.term_save_icon.url } alt="Save" /> }
                          Save
                          </button>
                        </li>
                        <li>
                          <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                          <img className="svg" src={ item.term_share_icon.url } alt="Share" />Share</button> 
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
      })    
    );
  }


  /**
   * POST CONTENT
   */
  getOnePostContent = (itemObj) => {
    const {homeItems} = this.props; 

    return (      
      itemObj.map((item, index) => {
        let boundItemClick = this.savePost.bind(this, item);
        return <div key={index} className="blog_cnt">
            
            <div className={ ( !isEmpty(homeItems.sponsoredPosts[0]) ) ? 'col_blog float-right' : 'col_blog'}>
              <div className="inner_col_blog">
              {item.terms[0].slug === 'the-spread' ?
                  item.acf.image_gallery !== false ?
                  <img className="img_respon" src={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.url : sample_image : ''} alt={'blogImage'} />
                : item.post_format.length > 0 && item.post_format[0].name  === 'Video' ? 
                  <video controls>
                    <source src={item.acf.video.url} type="video/mp4"></source>
                  </video>
                : <img className="img_respon" src={sample_image} alt={'blogImage'} /> : ''
              }
              { item.terms[0].slug !== 'the-spread' ?
               item.post_format.length > 0 && item.post_format[0].name  === 'Video' ?
                <video controls>
                  <source src={item.acf.video.url} type="video/mp4"></source>
                </video>
              : item.post_format === false ?
              <img className="img_respon" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt={item.acf.single_featured_image.alt} />
              : '' : ''
              }
              </div>
            </div>
            
            <div className={[index %2 === 0 ? 'col_blog' : 'col_blog float-right']}>
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
                          { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ item.term_saved_icon.url } alt="Save" /> : <img className="svg" src={ item.term_save_icon.url } alt="Save" />
                            : item.save_post_status === true ? <img className="svg" src={ item.term_saved_icon.url } alt="Saved" /> : <img className="svg" src={ item.term_save_icon.url } alt="Save" /> }
                          Save
                          </button>
                        </li>
                        <li>
                          <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                          <img className="svg" src={ item.term_share_icon.url } alt="On The Wire" />Share</button> 
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
      })    
    );
  }

  /**
   * POST CONTENT
   */
  getThreePostContent = (itemObj) => {
    return (      
      itemObj.map((item, index) => {
        let boundItemClick = this.savePost.bind(this, item);
        
        return <div key={index} className="blog_cnt">
            <div className={[index %2 === 0 ? 'col_blog' : 'col_blog float-right']}>
              <div className="inner_col_blog">
              {item.terms[0].slug === 'the-spread' ?
                  item.acf.image_gallery !== false ?
                  <img className="img_respon" src={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.url : sample_image : ''} alt={'blogImage'} />
                : item.post_format.length > 0 && item.post_format[0].name  === 'Video' ? 
                  <video controls>
                    <source src={item.acf.video.url} type="video/mp4"></source>
                  </video>
                : <img className="img_respon" src={sample_image} alt={'blogImage'} /> : ''
              }
              { item.terms[0].slug !== 'the-spread' ?
               item.post_format.length > 0 && item.post_format[0].name  === 'Video' ?
                <video controls>
                  <source src={item.acf.video.url} type="video/mp4"></source>
                </video>
              : item.post_format === false ?
              <img className="img_respon" src={item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } alt={item.acf.single_featured_image.alt} />
              : '' : ''
              }
              </div>
            </div>
            
            <div className={'col_blog'}>
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
                          { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ item.term_saved_icon.url } alt="Saved" /> : <img className="svg" src={ item.term_save_icon.url } alt="Save" />
                            : item.save_post_status === true ? <img className="svg" src={ item.term_saved_icon.url } alt="Saved" /> : <img className="svg" src={ item.term_save_icon.url } alt="Save" /> }
                          Save
                          </button>
                        </li>
                        <li>
                          <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                          <img className="svg" src={ item.term_share_icon.url } alt="Share" />Share</button> 
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
      })    
    );
  }


  /**
   * SPONSER CONTENT
   */
  getSponsorPostContent = (itemObj) => {
    return (      
      itemObj.map((item, index) => {
        let boundItemClick = this.savePost.bind(this, item);
        return <div key={index} className="blog_cnt">
            <div className={[index %2 === 0 ? 'col_blog' : 'col_blog float-right']}>
              <div className="inner_col_blog height_auto">
                { 
                  item.acf.image_or_video.value === 'video'?
                  <video controls>
                    <source src={item.acf.sponsored_video.url} type="video/mp4"></source>
                  </video>
                  : item.acf.image_or_video.value === 'image' ?
                    
                    item.acf.single_image_or_gallery.value  === 'featured_image' ?
                    <img className="img_respon" src={item.acf.single_featured_image.url} alt={`Sponsered`} />

                    : item.acf.single_image_or_gallery.value  === 'image_gallery' ?
                    <img className="img_respon" src={item.acf.image_gallery[0].images_repeater.url} alt={`Sponsered`} />
                  : ''   :''
                }
              </div>
            </div>
            <div className={[index %2 === 0 ? 'col_blog' : 'col_blog float-right']}>
              <div className="inner_col_blog pad_around">
                <div className="main_blog_dtls">
                  <div className="blog_dtls" style={{ 'borderColor': item.term_color }}>
                    <div className="blog_dtltitle sponsored" style={{ 'color': item.term_color }}>{item.terms[0].name}</div>
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
                          { item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ item.term_saved_icon.url } alt="Saved" /> : <img className="svg" src={ item.term_save_icon.url } alt="Save" /> 
                          : item.save_post_status === true ? <img className="svg" src={ item.term_saved_icon.url } alt="Saved" /> : <img className="svg" src={ item.term_save_icon.url } alt="Save" /> }
                          Save
                          </button>
                        </li>
                        <li>
                          <button className="trans" title="Share" style={{ 'color': item.term_color }}>
                          <img className="svg" src={ item.term_share_icon.url } alt="Share" />Share</button> 
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
      })    
    );
  }

  /**
   * Community Content
   */
  getCommunityPostContent = (itemObj) => {
    
    return <section id="morelove_product"> 
      <div className="container">
        <div className="inner_morelove">
            <h2 className="title">From the Community</h2>
            { itemObj.length !== 0 &&
            <ul>
            <Slider {...sliderSettings}>
              { itemObj.map((item) => {
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
    const { homeLoading, homeItems } = this.props;
    return (
      <div>
        {/* {this.getPostsView()} */}
        {/* {this.getCommunityView()} */}
        {homeLoading == false ? this.getHomeContent() : ''}
      </div> 
      
    );
  }
}
//export default Home;

const mapStateToProps = state => ({
  homeItems: state.homeData.homeItems,
  homeLoading: state.homeData.homeLoading,
  signupItems: state.page.item.acf,
  pageLoading: state.page.pageLoading,
});

const mapDispatchToProps = dispatch => ({
  getHomeItems: () => { dispatch(getHomeItems()) },
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Home));