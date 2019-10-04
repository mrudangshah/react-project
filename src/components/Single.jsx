import React, {Component} from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';
import {tpwConfig} from '../config'
import _ from 'lodash';
import { TPW } from './../constants';
import Moment from 'moment';
import Slider from "react-slick";
import { IMAGE } from './../constants/image';
import NotFound  from './NotFound';
import { getSingle, getComment, getRelated } from './../actions/singleAction';
import { getSingleEvent, getEventComment, getRelatedEvents } from './../actions/singleEventAction';

const siteurl = tpwConfig.API_URL;
var HtmlToReactParser = require('html-to-react').Parser;
var htmlToReactParser = new HtmlToReactParser();
let sample_image = siteurl + IMAGE.sample_image;

const settings = {
  dots: false,
  infinite: true,
  speed: 300,
  slidesToShow: 1,
  adaptiveHeight: true
};

class Single extends Component {
  
  constructor(props){
    super(props);
    this.state = {
      visible: 5,
      error: false,
      progress: true,
      loadComment: false,
      collapseComment: false,
      isLoading: true,
      loadingText: 'Loading...'
    };
    this.loadMore = this.loadMore.bind(this);
    this.loadLess = this.loadLess.bind(this);
  }
  
  loadMore() {
    this.setState({ loadComment: true });
    this.setState((prev) => {
      return {visible: prev.visible + 10};
    });
  }
  
  loadLess() {
    this.setState({ collapseComment: true });
    this.setState({ loadComment: false });
    this.setState((prev) => {
      return {visible: prev.visible - 10};
    });
  }

  componentDidMount () {
    window.scrollTo(0, 0);
    let that = this;
    that.setState({
      isLoading: false,
      progress: false
    });
    const { getSingle, getSingleEvent } = that.props
    const path = this.props.route.location.pathname.split('/')[1];
    if( path === 'mark-your-planner' ){
      getSingleEvent(that.props.route.match.params.term);
    } else getSingle(that.props.route.match.params.term);
  }

  getTheDuration = () => {

    const { singleItems } = this.props;
    Moment.locale('en');
    var dt = singleItems.date;
    var startDate = Moment(Moment(dt).format("YYYY-MM-DD[T]HH:mm:ss"));
    var endDate = Moment(Moment().format("YYYY-MM-DD[T]HH:mm:ss"));
    var days = endDate.diff(startDate, 'days');
    var period_of_post, period_suffix ;
    if(days > 7 & days < 30 & days < 365){
      period_of_post = endDate.diff(startDate, 'week');
      period_suffix = (period_of_post < 1) ? 'Week Ago' : 'Weeks Ago';
    }else if(days > 30 & days < 365){
      period_of_post = endDate.diff(startDate, 'month');
      period_suffix = (period_of_post < 1) ? 'Month Ago' : 'Months Ago';
    }else if(days > 365){
      period_of_post = endDate.diff(startDate, 'year');
      period_suffix = (period_of_post < 1) ? 'Year Ago' : 'Years Ago';
    }else{
      period_of_post = days;
      period_suffix = (days < 1) ? 'Day Ago' : 'Days Ago';
    }
    return period_of_post+" "+period_suffix;    
  }

  getEventDuration = () => {
    const { eventData } = this.props;
    Moment.locale('en');
    var dt = eventData.date;
    var startDate = Moment(Moment(dt).format("YYYY-MM-DD[T]HH:mm:ss"));
    var endDate = Moment(Moment().format("YYYY-MM-DD[T]HH:mm:ss"));
    var days = endDate.diff(startDate, 'days');
    var period_of_post, period_suffix ;
    if(days > 7 & days < 30 & days < 365){
      period_of_post = endDate.diff(startDate, 'week');
      period_suffix = (period_of_post < 1) ? 'Week Ago' : 'Weeks Ago';
    }else if(days > 30 & days < 365){
      period_of_post = endDate.diff(startDate, 'month');
      period_suffix = (period_of_post < 1) ? 'Month Ago' : 'Months Ago';
    }else if(days > 365){
      period_of_post = endDate.diff(startDate, 'year');
      period_suffix = (period_of_post < 1) ? 'Year Ago' : 'Years Ago';
    }else{
      period_of_post = days;
      period_suffix = (days < 1) ? 'Day Ago' : 'Days Ago';
    }
    return period_of_post+" "+period_suffix;    
  }

  getComments = () => {
    const { commentData, singleItems }  = this.props;
    return(
    <React.Fragment>
    <div className="comments_list">
      { commentData.length === 0 ? <h3 className="nocomments" >No Comments yet. Start a conversation!</h3>
      : <React.Fragment>
      <h3>{commentData.length} Comments 
      { this.state.loadComment ?
        <button onClick={this.loadLess} type="button" className="trans load_less" title="Load More Comments"><i className="fa fa-caret-up" aria-hidden="true"></i></button>
        : this.state.collapseComment ? null
        : ''
      }
      </h3>
      <ul>
      { commentData.slice(0, this.state.visible).map((item,index) => { 
        let commentTime = item.date;
        let startTime = Moment(Moment(commentTime).format("YYYY-MM-DD[T]HH:mm:ss"));
        let endTime = Moment(Moment().format("YYYY-MM-DD[T]HH:mm:ss"));
        let timeResult = Moment.duration(endTime.diff(startTime));
        let hours = timeResult.asHours();
        let hr = parseInt(hours);
        let commentResult, commentPostfix;
        if(hr > 24){ commentResult = parseInt(hr/24); commentPostfix="days" } else{ commentResult = hr; commentPostfix = 'h' }

        return <li key={index}>
          <div className="comments_box">
            <div className="imgbox"><img src={ siteurl + IMAGE.trans_50 } alt="" />
            <img className="absoImg" src={item.author_avatar_urls[24]} alt="author_avatar" />
            </div>
            <h4>{item.author_name}</h4>
            <p>{htmlToReactParser.parse(item.content.rendered)}</p>
            <div className="reply_links"> 
              <span>{commentResult}{commentPostfix}</span> 
              <span><a href="#!" className="trans" title="Reply">Reply</a></span>
            </div>
          </div>
        </li>;
      })
      }
      </ul>
      {this.state.visible < commentData.length &&
        <div className="load_more">
          <button onClick={this.loadMore} type="button" className="trans" title="Load More Comments">Load More Comments <i className="fa fa-caret-down" aria-hidden="true"></i></button>
        </div>
      }
      </React.Fragment>
      }
    </div>
    <div className="add_cmnts">
    <div className="add_innercmnts">
      <div className="imgbox"><img src={ siteurl + IMAGE.trans_50 } alt="" /> <img src={ singleItems.author_avatar } className="absoImg" alt="" /></div>
        <input type="text" className="trans custom_text" title="Add a Comment" placeholder="Add a Comment" />
        <button className="send_btn trans">Send</button>
      </div>
    </div>
    </React.Fragment>
    )
  }

  getEventComments = () => {
    const { eventComment, eventData } = this.props;
    return(
    <React.Fragment>
      <div className="comments_list">
      { eventComment.length === 0 ? <h3 className="nocomments" >No Comments yet. Start a conversation!</h3>
      : <React.Fragment>
        <h3>{eventComment.length} Comments
        { this.state.loadComment ?
          <button onClick={this.loadLess} type="button" className="trans load_less" title="Load More Comments"><i className="fa fa-caret-up" aria-hidden="true"></i></button>
          : this.state.collapseComment ? null
          : ''
        }</h3>
        <ul>
        { eventComment.slice(0, this.state.visible).map((item,index) => { 
          let commentTime = item.date;
          let startTime = Moment(Moment(commentTime).format("YYYY-MM-DD[T]HH:mm:ss"));
          let endTime = Moment(Moment().format("YYYY-MM-DD[T]HH:mm:ss"));
          let timeResult = Moment.duration(endTime.diff(startTime));
          let hours = timeResult.asHours();
          let hr = parseInt(hours);
          let commentResult, commentPostfix;
          if(hr > 24){ commentResult = parseInt(hr/24); commentPostfix="days" } else{ commentResult = hr; commentPostfix = 'h' }

          return <li key={index}>
            <div className="comments_box">
              <div className="imgbox">
              <img src={ siteurl + IMAGE.trans_50 } alt="" /> 
              <img className="absoImg" src={item.author_avatar_urls[24]} alt="author_avatar" />
              </div>
              <h4>{item.author_name}</h4>
              <p>{htmlToReactParser.parse(item.content.rendered)}</p>
              <div className="reply_links"> 
                <span>{commentResult} {commentPostfix}</span> 
                <span><a href="#!" className="trans" title="Reply">Reply</a></span> 
              </div>
            </div>
          </li>;
          })
        }
        </ul>
        { this.state.visible < eventComment.length &&
        <div className="load_more">
          <button onClick={this.loadMore} type="button" className="trans" title="Load More Comments">Load More Comments <i className="fa fa-caret-down" aria-hidden="true"></i></button>
        </div>
        }
      </React.Fragment>
      }
      </div>
      <div className="add_cmnts">
        <div className="add_innercmnts">
          <div className="imgbox"><img src={ siteurl + IMAGE.trans_50 } alt="" /> <img src={ eventData.author_avatar } className="absoImg" alt="" /></div>
          <input type="text" className="trans custom_text" title="Add a Comment" placeholder="Add a Comment" />
          <button className="send_btn trans">Send</button>
        </div>
      </div>
    </React.Fragment>
    )
  }

  loadingRecord = () => {
    return <section id="blog not-found">
      <div className="d-flex justify-content-center p-5"><h6 className="font-weight-bolder">{this.state.loadingText}</h6></div>
      </section>
  }

  notFound = () => {
    return <section id="blog not-found">
      <div className="inner_blog"><div className="col_blog">
      <div className="inner_col_blog">{<NotFound/>}</div>
      </div></div></section>
  }

  getSingleView = () => {
    const { isLoading } = this.state;
    const { getSingle, singleItems, singleLoading, morePosts } = this.props;
    const path = this.props.route.location.pathname.split('/')[1];

    if( singleLoading === false){
      return(
        <React.Fragment>
          <section id="post_dtls">
            <div className="container">
            <div className="inner_postdtls">
              <div className="image_block">
                <div className="imgbox">
                  { singleItems.post_format.length > 0 && singleItems.post_format[0].name  === 'Video'?
                    <video poster = { singleItems.acf.video !== false && singleItems.acf.video.sizes.large } controls>
                      <source src={singleItems.acf ? singleItems.acf.video? singleItems.acf.video.url:'' : ''} type="video/mp4"></source>
                    </video>
                    : path === '/the-spread' ?
                     singleItems.post_format === false && singleItems.acf !==null ? !isLoading && <span><img src={ siteurl + IMAGE.trans_915 } alt="" /><img className="absoImg" src={ singleItems.acf ? singleItems.acf.single_featured_image ? singleItems.acf.single_featured_image.url : sample_image : sample_image } alt='Blog'/></span>
                     : singleItems.post_format[0].name === 'Gallery' ? <img className="img_respon" src={singleItems.acf ? singleItems.acf.image_gallery ? singleItems.acf.image_gallery[0].image.url : sample_image : ''} alt="blog_image" />
                     : !isLoading && <span><img src={ siteurl + IMAGE.trans_915 } alt="" /><img className="absoImg" src={ sample_image } alt='Blog'/></span> : <img className="img_respon" src={singleItems.acf ? singleItems.acf.single_featured_image ? singleItems.acf.single_featured_image.url : sample_image : sample_image } alt="blog_image" />
                  }
                </div>
              </div>
              <div className="post_title_dtls">
                <div className="blog_dtltitle" style={{'color': singleItems.background_color}}><img src={ singleItems.category_icon !==null && singleItems.category_icon.url} alt="" />{singleItems.category_names[0]}</div>
                <h2>{htmlToReactParser.parse(singleItems.title)}</h2>
                <div className="blog_author">
                <div className="imgbox"> 
                  <Link to={"/member/"+ singleItems.user_login} className="trans" title={singleItems.author}>
                    <img src={ siteurl + IMAGE.trans_50 } alt="" />
                    <img src={ singleItems.author_avatar } className="absoImg" alt="" /> 
                  </Link>
                  </div>
                  <Link to={"/member/"+ singleItems.user_login} className="trans" title={singleItems.author}>
                    <span>{singleItems.author}</span>
                  </Link>
                  <span>{this.getTheDuration()}</span>
                </div>
              </div>
              <div className="postdtls_links">
                <div className="feedmore_menu" >
                  <ion-icon name="ios-more" id="feedmore"></ion-icon>
                  <ul className="feedmore_dropdown">
                    <li><a href="#!">Edit</a></li>
                    <li><a href="#!">Delete</a></li>
                    <li><a href="#!">Report</a></li>
                  </ul>
                </div>
                <ul>
                  <li className="cmnts"><a href="#!" className="trans" title="Comments"><img src={ siteurl + IMAGE.comments_gray} alt="" />Comments</a></li>
                  <li className="save"><a href="#!" className="trans" title="Save"><img src={ siteurl + IMAGE.save_gray} alt="" />Save</a></li>
                  <li className="share"><a href="#!" className="trans" title="Share"><img src={ siteurl + IMAGE.share_icon_gray} alt="" />Share</a></li>
                </ul>
              </div>
              <div className="body_postdtls">
                {htmlToReactParser.parse(singleItems.content)}
              </div>
              { this.getComments() }
            </div>
            </div>
          </section>
          <section id="morelove_product">
            <div className="container">
              <div className="inner_morelove">
                <h2 className="title">More to love</h2>
                { morePosts.length === 0 ?
                  <h3 className="nocomments" >No related posts!</h3>
                  : <ul>
                    { morePosts.map((item) => { 
                      return <li key={item.id}>
                      
                      <div className="product">
                        <div className="imgbox">
                        { item.post_format === 'video' ?
                          <video controls>
                            <source src={item.acf ? item.acf.video? item.acf.video.url:'' : ''} type="video/mp4"></source>
                          </video>
                          : item.post_format === false ?
                          <Link to={`/${path}/${item.slug}`} className="trans" title="" onClick={() => getSingle(item.slug)}><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:sample_image } className="absoImg" alt="" /></Link>
                          : <Link to={`/${path}/${item.slug}`} className="trans" title="" onClick={() => getSingle(item.slug)}><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:sample_image } className="absoImg" alt="" /></Link>
                        }
                        </div>
                          <div className="product_detils">
                            <span className="cat_icon"><img src={ item.term_icon && item.term_icon.url } alt="" /></span>
                            <div className="feedmore_menu related">
                              <ion-icon name="ios-more" id="feedmore"></ion-icon>
                              <ul className="feedmore_dropdown">
                                <li><a href="#!">Edit</a></li>
                                <li><a href="#!">Delete</a></li>
                                <li><a href="#!">Report</a></li>
                              </ul>
                            </div>
                            <Link to={`/${path}/${item.slug}`} className="trans" title="" onClick={() => getSingle(item.slug)}><h4>{htmlToReactParser.parse(item.title)}</h4></Link>
                              <div className="lover_block">
                              <Link to={"/member/"+ item.user_login} className="trans" title={item.name}>
                                <div className="imgbox">
                                  <img src={siteurl + IMAGE.trans_31 } alt="" /> <img src={item.author_avatar} className="absoImg"  alt="" />
                                </div>
                                <span className="name">{item.author}</span>
                              </Link>
                              </div>
                          </div>
                        </div>
                    </li>
                      })
                    }
                  </ul>
                }
              </div>
            </div>
          </section>
        </React.Fragment>
      )
    } else return ( this.loadingRecord() )
  }

  plannerView = () => {
    const { isLoading } = this.state;
    const { getSingleEvent, eventLoading, eventData, eventMorePosts } = this.props;
    const path = this.props.route.location.pathname.split('/')[1];
    if( eventLoading === false ){
      Moment.locale('en');
      let event_info_date = (Moment(eventData.event_datetime.DTT_EVT_start).format("ddd, MMM DD, YYYY"));
      let event_start_time = (Moment(eventData.event_datetime.DTT_EVT_start).format("hh:mm A"));
      let event_end_time = (Moment(eventData.event_datetime.DTT_EVT_end).format("hh:mm A"));
      return(
      <React.Fragment>
      <section id="post_dtls" className="makeyourplanner">
        <div className="container">
          <div className="inner_postdtls">
            <div className="image_block">
            <div className="imgbox">
              <img src={ siteurl + IMAGE.trans_915 } alt="" />
              { !isLoading && <img src={ eventData.media ? eventData.media.large : sample_image } className="absoImg" alt='Blog' /> }
            </div></div>
            <div className="post_title_dtls">
            {/* <div className="blog_dtltitle"><img src={singleItems.category_icon.url} alt={singleItems.category_icon.alt} />{singleItems.category_names}</div> */}
              <h2>{htmlToReactParser.parse(eventData.title)}</h2>
              <div className="blog_author">
              <div className="imgbox">
              <Link to={"/member/"+ eventData.user_login} className="trans" title={eventData.author}>
                <img src={ siteurl + IMAGE.trans_50 } alt="" /> 
                <img src={ eventData.author_avatar} className="absoImg" alt="" />
              </Link>
              </div>
              <Link to={"/member/"+ eventData.user_login} className="trans" title={eventData.author}>
                <span>{eventData.author}</span>
              </Link> 
              <span>{this.getEventDuration()}</span>
            </div>
            </div>
            <div className="postdtls_links">
              <div className="feedmore_menu" >
                <ion-icon name="ios-more" id="feedmore"></ion-icon>
                <ul className="feedmore_dropdown">
                  <li><a href="#!">Edit</a></li>
                  <li><a href="#!">Delete</a></li>
                  <li><a href="#!">Report</a></li>
                </ul>
              </div>
              <ul>
                <li className="cmnts"><a href="#!" className="trans" title="Comments"><img src={ siteurl + IMAGE.comments_gray} alt="" />Comments</a></li>
                <li className="save"><a href="#!" className="trans" title="Save"><img src={ siteurl + IMAGE.save_gray} alt="" />Save</a></li>
                <li className="share"><a href="#!" className="trans" title="Share"><img src={ siteurl + IMAGE.share_icon_gray} alt="" />Share</a></li>
              </ul>
            </div>
            <div className="body_postdtls">
              <div className="row">
                <div className="col-md-5 col-sm-12 order-sm-2">
                    <div className="event_info">
                        { event_info_date && event_start_time && event_end_time ?
                        <div className="event_block">
                          <span className="title">Date & Time</span>
                          <p>{event_info_date} { event_start_time + '-' + event_end_time }</p>
                        </div>
                        : null }
                        { eventData.event_venue_details.VNU_address ?
                        <div className="event_block">
                          <span className="title">Location</span>
                            <p><span>{ eventData.event_venue_details.VNU_address }</span><span>{ eventData.event_venue_details.VNU_city }</span></p>
                        </div>
                        : null }
                        { eventData.acf.featured_guest_speaker ?
                        <div className="event_block">
                          <span className="title">Featured Guest and Speakers</span>
                            <p>{eventData.acf.featured_guest_speaker}</p>
                        </div>
                        : null} 
                        { eventData.acf.sponsored_by ? 
                        <div className="event_block">
                          <span className="title">Sponsored By</span>
                            <p>{ eventData.acf.sponsored_by}</p>
                        </div>
                        : null }
                        { eventData.acf.info_website ?
                        <div className="event_block">
                          <span className="title">Website</span>
                            <p><a href={ eventData.acf.info_website} className="trans" title={ eventData.acf.info_website} target="_blank" rel="noopener noreferrer">{ _.truncate( eventData.acf.info_website, {'length': TPW.LINK_EXCERPT_LENGTH} ) }</a></p>
                        </div>
                        : null }
                        { event_info_date && event_start_time && event_end_time ?
                        <a href="#!" className="trans blue_btn order-sm-1" title="REGISTER">REGISTER</a>
                        : null }                    
                      </div>
                  </div>
                  <div className="col-md-7 col-sm-12 order-sm-1">
                    { htmlToReactParser.parse(eventData.content) }
                  </div>
                </div>
            </div>
            { this.getEventComments() }
          </div>
        </div>
      </section>
      <section id="morelove_product">
        <div className="container">
          <div className="inner_morelove">
            <h2 className="title">More to love</h2>
            { eventMorePosts.length === 0 ?
              <h3 className="nocomments" >No related posts!</h3>
              : <ul>
                { eventMorePosts.map((item) => { 
                  return <li key={item.id}>
                  <div className="product">
                    <div className="imgbox">
                    <Link to={`/${path}/${item.slug}`} className="trans" title="" onClick={() => getSingleEvent(item.slug)}>
                      <img src={ siteurl + IMAGE.trans_305 } alt="" />
                      <img src={ item.media ? item.media.large : sample_image } className="absoImg" alt="" />
                    </Link>
                    </div>
                      <div className="product_detils">
                        <span className="cat_icon"><img src={siteurl + "/src/assets/images/plnnner_icon.svg"} alt="Mark Your Planner" /></span>
                          <div className="feedmore_menu related">
                            <ion-icon name="ios-more" id="feedmore"></ion-icon>
                            <ul className="feedmore_dropdown">
                              <li><a href="#!">Edit</a></li>
                              <li><a href="#!">Delete</a></li>
                              <li><a href="#!">Report</a></li>
                            </ul>
                          </div>
                          <Link to={`/${path}/${item.slug}`} className="trans" title="" onClick={() => getSingleEvent(item.slug)}> 
                            <h4>{htmlToReactParser.parse(item.title)}</h4>
                          </Link>
                          <div className="lover_block">
                            <div className="imgbox">
                            <Link to={"/member/"+ item.user_login} className="trans" title={item.name}>
                              <img src={siteurl + IMAGE.trans_31 } alt="" />
                              <img src={item.author_avatar} className="absoImg"  alt="" />
                            </Link>
                            </div>
                            <span className="name">{item.author}</span>
                        </div>
                      </div>
                    </div>
                </li>
                })
                }
              </ul>
            }
          </div>
        </div>
      </section>
      </React.Fragment>
      )
    } else return(this.loadingRecord())
  }

  sponsoredView = () => {
    const { isLoading } = this.state;
    const { singleItems, singleLoading, morePosts } = this.props;
    const path = this.props.route.location.pathname.split('/')[1];

    if( singleLoading === false ){
      return( 
      <React.Fragment>
        <section id="post_dtls" className="onthewire">
        <div className="container">
        <div className="inner_postdtls">
          <div className="image_block">
            <div className="imgbox">
              { singleItems.acf.image_or_video.value  === 'video' ?
                <video controls>
                  <source src={singleItems.acf ? singleItems.acf.sponsored_video ? singleItems.acf.sponsored_video.url:'' : ''} type="video/mp4"></source>
                </video>
                : singleItems.acf.image_or_video.value  === 'image' ?
                  
                  singleItems.acf.single_image_or_gallery.value  === 'featured_image' ?
                    !isLoading && <span>
                      <img src={ siteurl + IMAGE.trans_915 } alt="" />
                      <img className="absoImg" src={ singleItems.acf ? singleItems.acf.single_featured_image? singleItems.acf.single_featured_image.url:sample_image:'' } alt={ 'Sponsored' } />
                      </span>
                  : singleItems.acf.single_image_or_gallery.value  === 'image_gallery' ?
                    singleItems.acf.image_gallery.length > 0 ? 
                    <ul>
                    <Slider {...settings}>
                      { singleItems.acf.image_gallery.map((item) => {
                      return <li>
                        <div className="imgbox">
                          <img src={ siteurl + IMAGE.trans_915 } alt="" />
                          { !isLoading && <img src={item.images_repeater.url} className="absoImg" alt="" /> }
                        </div>
                      </li>
                      }) }
                    </Slider>
                    </ul>
                  : <div className="imgbox">
                      <img src={ siteurl + IMAGE.trans_915 } alt="" />
                      <img src={sample_image} className="absoImg" alt="sampleImage" />
                    </div>
                  : ''
                : ''
              }
            </div>
          </div>
          <div className="post_title_dtls">
            <div className="blog_dtltitle spopsored">{ singleItems.category_names[0] }</div>
            <h2>{ htmlToReactParser.parse(singleItems.title) }</h2>
            <div className="blog_author">
              <div className="imgbox"> 
              <Link to={"/member/"+ singleItems.user_login} className="trans" title={singleItems.author}>
                <img src={ siteurl + IMAGE.trans_50 } alt="" /> <img src={ singleItems.author_avatar } className="absoImg" alt="" /> 
              </Link>
              </div>
              <Link to={"/member/"+ singleItems.user_login} className="trans" title={singleItems.author}>
              <span>{ singleItems.author }</span> 
              </Link>
              <span>{this.getTheDuration()}</span>
            </div>
          </div>
          <div className="body_postdtls">
            { htmlToReactParser.parse(singleItems.content) }
          </div>
          { this.getComments() }
          </div>
        </div>
      </section>
      <section id="morelove_product">
        <div className="container">
          <div className="inner_morelove">
            <h2 className="title">More to love</h2>
            { morePosts.length === 0 ?
              <h3 className="nocomments" >No related posts!</h3>
              : <ul>
                { morePosts.map((item) => { 
                  return <li key={item.id}>
                  <Link to={`/${path}/${item.slug}`} className="trans" title=""> 
                  <div className="product">
                    <div className="imgbox">
                    { item.post_format === 'video' ?
                      <video controls>
                        <source src={item.acf ? item.acf.video? item.acf.video.url:'' : ''} type="video/mp4"></source>
                      </video>
                      : item.post_format === false ?
                      <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } className="absoImg" alt="" /></span>                      
                      : <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } className="absoImg" alt="" /></span>
                    }
                    </div>
                      <div className="product_detils">
                        {/* <span className="cat_icon"><img src={siteurl + "/src/assets/images/wire_icon.svg"} alt="On the Wire" /></span> */}
                          <span className="more_view">
                          <ion-icon name="more"></ion-icon>
                          </span>
                          <h4>{htmlToReactParser.parse(item.title)}</h4>
                          <div className="lover_block">
                            <div className="imgbox">
                            <Link to={"/member/"+ item.user_login} className="trans" title={item.name}>
                              <img src={siteurl + IMAGE.trans_31 } alt="" />
                              <img src={item.author_avatar} className="absoImg"  alt="" />
                            </Link>
                            </div>
                            <span className="name">{item.author_nicename}</span>
                        </div>
                      </div>
                    </div>
                  </Link>
                </li>
                  })
                }
              </ul>
              }
            </div>
          </div>
        </section>
      </React.Fragment>
      )
    } else return( this.loadingRecord() )
  }

  render() {
    const type = this.props.route.location.pathname.split('/')[1];
    return (
      <React.Fragment>
        {
          type === 'on-the-wire' ? this.getSingleView() :
            type === 'mark-your-planner' ? this.plannerView() :
              type === 'the-ultimate-haul' ? this.getSingleView() :
                type === 'plan-connect-inspire' ? this.getSingleView() :
                  type === 'the-spread' ? this.getSingleView() :
                    type === 'sponsored' ? this.sponsoredView() :
                    this.notFound()
        }
      </React.Fragment>
    );
  }

}

const mapStateToProps = state => ({
  blogLoading: state.blog.blogLoading,
  singleLoading: state.singleData.singleLoading,
  singleItems: state.singleData.singleItems,
  postID: state.singleData.pID,
  commentData: state.singleData.comments,
  morePosts: state.singleData.relatedPosts,
  eventData: state.singleEvent.eventItems,
  eventComment: state.singleEvent.comments,
  eventLoading: state.singleEvent.eventLoading,
  eventMorePosts: state.singleEvent.relatedEvents
})

const mapDispatchToProps = dispatch => ({
  getSingle: (postSlug) => { dispatch(getSingle(postSlug)) },
  getComment: () => { dispatch(getComment()) },
  getRelated: () => { dispatch(getRelated()) },
  getSingleEvent: (eventSlug)  => { dispatch( getSingleEvent(eventSlug) ) },
  getEventComment: () => { dispatch(getEventComment()) },
  getRelatedEvents: () => { dispatch(getRelatedEvents()) }
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Single));