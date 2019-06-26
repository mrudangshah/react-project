import React, {Component} from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';
import {tpwConfig} from '../config'
import Moment from 'moment';
import Slider from "react-slick";
import { TPW } from './../constants/';
import { IMAGE } from './../constants/image';
import isEmpty from 'lodash/isEmpty';
import NotFound  from './NotFound';
import { getSingle, getComment, getRelated } from './../actions/singleAction';

const siteurl = tpwConfig.API_URL;
var HtmlToReactParser = require('html-to-react').Parser;
let sample_image = siteurl + IMAGE.sample_image;

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
    const { getSingle } = that.props
    getSingle(that.props.route.match.params.term);
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

  noRecord = () => {
    return <section id="blog not-found">
      <div className="inner_blog"><div className="col_blog">
      <div className="inner_col_blog">{<p>Records are Loading</p>}</div>
      </div></div></section>
  }

  notFound = () => {
    return <section id="blog not-found">
      <div className="inner_blog"><div className="col_blog">
      <div className="inner_col_blog">{<NotFound/>}</div>
      </div></div></section>
  }

  singleView = () => {
    const { isLoading } = this.state;
    const { singleItems, singleLoading, commentData, morePosts } = this.props;
    const path = this.props.route.location.pathname.split('/')[1];
    var htmlToReactParser = new HtmlToReactParser();
    
    Moment.locale('en');
    let info_date = (Moment(singleItems.info_date).format("ddd, MMM DD, YYYY"));

    const settings = {
      dots: false,
      infinite: true,
      speed: 300,
      slidesToShow: 1,
      adaptiveHeight: true
    };

    return (
    path === 'on-the-wire' ?
    singleLoading === false ?
    <div>
      <section id="post_dtls" className="onthewire">
        <div className="container">
        <div className="inner_postdtls">
          <div className="image_block">
            <div className="imgbox">
              { singleItems.post_format.length > 0 && singleItems.post_format[0].name  === 'Video'?
                <video controls>
                  <source src={singleItems.acf ? singleItems.acf.video? singleItems.acf.video.url:'' : ''} type="video/mp4"></source>
                </video>
                : singleItems.post_format === false ?
                !isLoading && <span><img src={ siteurl + IMAGE.trans_915 } alt="" /><img className="absoImg" src={ singleItems.acf ? singleItems.acf.single_featured_image ? singleItems.acf.single_featured_image.url : sample_image :'' } alt={ 'Blog Image' } /></span>
                : !isLoading && <span><img src={ siteurl + IMAGE.trans_915 } alt="" /><img className="absoImg" src={ singleItems.acf ? singleItems.acf.single_featured_image ? singleItems.acf.single_featured_image.url : sample_image :'' } alt={ 'Blog Image' } /></span>
              }
            </div>
          </div>
          <div className="post_title_dtls">
            <div className="blog_dtltitle"><img src={singleItems.category_icon.url} alt={singleItems.category_icon.alt} />{singleItems.category_names[0]}</div>
            <h2>{htmlToReactParser.parse(singleItems.title)}</h2>
            <div className="blog_author">
              <div className="imgbox"> <img src={ siteurl + IMAGE.trans_50 } alt="" /> <img src={ singleItems.author_avatar } className="absoImg" alt="" /> </div>
              <span>{singleItems.author_nicename}</span> <span>{this.getTheDuration()}</span> </div>
          </div>
          <div className="body_postdtls">
            {htmlToReactParser.parse(singleItems.content)}
          </div>
          { commentData.length === 0 ?
            <div className="comments_list">
            <h3 className="nocomments" >No Comments yet. Start a conversation!</h3>
            </div>
            :
          <div className="comments_list">
            <h3>{commentData.length} Comments
            { this.state.loadComment ?
              
              <button onClick={this.loadLess} type="button" className="trans load_less" title="Load More Comments"><i className="fa fa-caret-up" aria-hidden="true"></i></button>
              : this.state.collapseComment ? null
              : ''
            }</h3>
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
                    {/* <span><a href="#!" className="trans" title="Reply">Reply</a></span>  */}
                  </div>
                </div>
              </li>;
              })
              }
            </ul>
            {this.state.visible < commentData.length &&
            <div className="load_more"><button onClick={this.loadMore} type="button" className="trans" title="Load More Comments">Load More Comments <i className="fa fa-caret-down" aria-hidden="true"></i></button></div>
            }
            </div>
          }
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
                        <span className="cat_icon"><img src={siteurl + "/src/assets/images/wire_icon.svg"} alt="On the Wire" /></span>
                          <span className="more_view">
                          {/* <ion-icon name="more"></ion-icon> */}
                          </span>
                          <h4>{htmlToReactParser.parse(item.title)}</h4>
                          <div className="lover_block">
                            <div className="imgbox"><img src={siteurl + IMAGE.trans_31 } alt="" /> <img src={item.author_avatar} className="absoImg"  alt="" /></div>
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
    </div>
    : this.noRecord()
    
    : path === 'mark-your-planner' ?
    singleLoading === false ?
    <div>
      <section id="post_dtls" className="makeyourplanner">
        <div className="container">
          <div className="inner_postdtls">
              <div className="image_block">
              <div className="imgbox">
                <img src={ siteurl + IMAGE.trans_915 } alt="" />
                { !isLoading && <img src={ singleItems.acf ? singleItems.acf.single_featured_image ? singleItems.acf.single_featured_image.url : sample_image :'' } className="absoImg" alt={ 'Blog Image' } /> }
              </div></div>
              <div className="post_title_dtls">
              <div className="blog_dtltitle"><img src={singleItems.category_icon.url} alt={singleItems.category_icon.alt} />{singleItems.category_names}</div>
              <h2>{htmlToReactParser.parse(singleItems.title)}</h2>
              <div className="blog_author">
                <div className="imgbox"> <img src={ siteurl + IMAGE.trans_50 } alt="" /> 
                <img src={ singleItems.author_avatar} className="absoImg" alt="" /> </div>
                <span>{singleItems.author_nicename}</span> <span>{this.getTheDuration()}</span> </div>
            </div>
            <div className="body_postdtls">
              <div className="row">
                <div className="col-md-5 col-sm-12 order-sm-2">
                    <div className="event_info">
                        { info_date && singleItems.acf.info_start_time && singleItems.acf.info_end_time ?
                        <div className="event_block">
                          <span className="title">Date & Time</span>
                          <p>{info_date} {singleItems.acf.info_start_time + '-' + singleItems.acf.info_end_time}</p>
                        </div>
                        : null }
                        { singleItems.acf.info_location ?
                        <div className="event_block">
                          <span className="title">Location</span>
                            <p>{singleItems.acf.info_location}</p>
                        </div>
                        : null }
                        { singleItems.acf.featured_guest_speaker ?
                        <div className="event_block">
                          <span className="title">Featured Guest and Speakers</span>
                            <p>{singleItems.acf.featured_guest_speaker}</p>
                        </div>
                        : null} 
                        {singleItems.acf.sponsored_by ? 
                        <div className="event_block">
                          <span className="title">Sponsored By</span>
                            <p>{singleItems.acf.sponsored_by}</p>
                        </div>
                        : null }
                        {singleItems.acf.info_website ?
                        <div className="event_block">
                          <span className="title">Website</span>
                            <p><a href={singleItems.acf.info_website} className="trans" title={singleItems.acf.info_website} target="_blank" rel="noopener noreferrer">{singleItems.acf.info_website}</a></p>
                        </div>
                        : null }
                        { info_date && singleItems.info_start_time && singleItems.info_end_time ?
                        <a href="#!" className="trans blue_btn order-sm-1" title="REGISTER">REGISTER</a>
                        : null }                    
                      </div>
                  </div>
                  <div className="col-md-7 col-sm-12 order-sm-1">
                    { htmlToReactParser.parse(singleItems.content) }
                  </div>
                </div>
            </div>
            { commentData.length === 0 ?
              <div className="comments_list">
              <h3 className="nocomments" >No Comments yet. Start a conversation!</h3>
              </div>
              : <div className="comments_list">
              <h3>{commentData.length} Comments
              {this.state.visible > commentData.length &&
                <button onClick={this.loadLess} type="button" className="trans load_less" title="Load More Comments"><i className="fa fa-caret-up" aria-hidden="true"></i></button>
              }</h3>
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
                    <div className="imgbox">
                    <img src={ siteurl + IMAGE.trans_50 } alt="" /> 
                    <img className="absoImg" src={item.author_avatar_urls[24]} alt="author_avatar" />
                    </div>
                    <h4>{item.author_name}</h4>
                    <p>{htmlToReactParser.parse(item.content.rendered)}</p>
                    <div className="reply_links"> 
                      <span>{commentResult}{commentPostfix}</span> 
                      {/* <span><a href="#!" className="trans" title="Reply">Reply</a></span>  */}
                    </div>
                  </div>
                </li>;
                })
                }
              </ul>
              {this.state.visible < commentData.length &&
              <div className="load_more"><button onClick={this.loadMore} type="button" className="trans" title="Load More Comments">Load More Comments <i className="fa fa-caret-down" aria-hidden="true"></i></button></div>
              }
              </div>
            }
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
                      <img src={ siteurl + IMAGE.trans_305 } alt="" />
                      <img src={ item.acf ? item.acf.single_featured_image? item.acf.single_featured_image.url:sample_image:'' } className="absoImg" alt="" />
                    </div>
                      <div className="product_detils">
                        <span className="cat_icon"><img src={siteurl + "/src/assets/images/plnnner_icon.svg"} alt="Mark Your Planner" /></span>
                          <span className="more_view">
                          {/* <ion-icon name="more"></ion-icon> */}
                          </span>
                          <h4>{htmlToReactParser.parse(item.title)}</h4>
                          <div className="lover_block">
                            <div className="imgbox"><img src={siteurl + IMAGE.trans_31 } alt="" /> <img src={item.author_avatar} className="absoImg"  alt="" /></div>
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
    </div>
    : this.noRecord()
    
    : path === 'the-ultimate-haul' ?
    singleLoading === false ?
    <div>
      <section id="post_dtls" className="theultimatehau">
        <div className="container">
          <div className="inner_postdtls">
            <strong><div className="image_block">
            <div className="imgbox">
            { singleItems.post_format.length > 0 && singleItems.post_format[0].name  === 'Video'?
              <video controls>
                <source src={singleItems.acf ? singleItems.acf.video? singleItems.acf.video.url:'' : ''} type="video/mp4"></source>
              </video>
              : singleItems.post_format === false ?
              !isLoading && <span><img src={ siteurl + IMAGE.trans_915 } alt="" /><img className="absoImg" src={ singleItems.acf ? singleItems.acf.single_featured_image ? singleItems.acf.single_featured_image.url : sample_image :'' } alt={ 'Blog Image' } /></span>
              : !isLoading && <span><img src={ siteurl + IMAGE.trans_915 } alt="" /><img className="absoImg" src={ singleItems.acf ? singleItems.acf.single_featured_image ? singleItems.acf.single_featured_image.url : sample_image :'' } alt={ 'Blog Image' } /></span>
            }
            </div></div></strong>
            <div className="post_title_dtls">
              <div className="blog_dtltitle"><img src={singleItems.category_icon.url} alt={singleItems.category_icon.alt} />{singleItems.category_names[0]}</div>
              <h2>{ htmlToReactParser.parse(singleItems.title) }</h2>
              <div className="blog_author">
                <div className="imgbox"> <img src={ siteurl + IMAGE.trans_50 } alt="" /> <img src={singleItems.author_avatar} className="absoImg" alt="" /> </div>
                <span>{singleItems.author_nicename}</span> <span>{this.getTheDuration()}</span> </div>
            </div>
            <div className="see_post">
              <h3 className="title">Shop This Post<i className="fas fa-chevron-down"></i></h3>
              <div className="toggle_slider" >
                <div className="post_slider">
                  <ul>
                    <li>
                      <div className="see_postblock">
                        <div className="imgbox"><img src={ siteurl + IMAGE.trans_70 } alt="" /> <img src={ siteurl + "/src/assets/images/post_img1.png"} className="absoImg" alt="" /></div>
                        <div className="prod_name"><a href="#!" className="trans" title="Pink Planner">Pink Planner</a></div>
                        <div className="prod_price">44.99</div>
                        <div className="shop_link"><a href="#!" className="trans" title="Shop">Shop<i className="fas fa-caret-right"></i></a></div>
                      </div>
                    </li>
                  </ul>
              </div>
              </div>
            </div>
            <div className="body_postdtls">
              { htmlToReactParser.parse(singleItems.content) }
            </div>
            { commentData.length === 0 ?
          <div className="comments_list">
          <h3 className="nocomments" >No Comments yet. Start a conversation!</h3>
          </div>
          : <div className="comments_list">
          <h3>{commentData.length} Comments
          {this.state.visible > commentData.length &&
            <button onClick={this.loadLess} type="button" className="trans load_less" title="Load More Comments"><i className="fa fa-caret-up" aria-hidden="true"></i></button>
          }</h3>
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
                <div className="imgbox">
                  <img src={ siteurl + IMAGE.trans_50} alt="" /> 
                  <img className="absoImg" src={item.author_avatar_urls[24]} alt="author_avatar" />
                </div>
                <h4>{item.author_name}</h4>
                <p>{htmlToReactParser.parse(item.content.rendered.replace)}</p>
                <div className="reply_links"> 
                  <span>{commentResult}{commentPostfix}</span> 
                  {/* <span><a href="#!" className="trans" title="Reply">Reply</a></span>  */}
                </div>
              </div>
            </li>;
            })
            }
          </ul>
          { this.state.visible < commentData.length &&
          <div className="load_more"><button onClick={this.loadMore} type="button" className="trans" title="Load More Comments">Load More Comments <i className="fa fa-caret-down" aria-hidden="true"></i></button></div>
          }
          </div> 
        }
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
                      <span className="cat_icon"><img src={siteurl + "/src/assets/images/haul_icon.svg"} alt="Ultimate Haul" /></span>
                        <span className="more_view">
                        {/* <ion-icon name="more"></ion-icon> */}
                        </span>
                        <h4>{htmlToReactParser.parse(item.title)}</h4>
                        <div className="lover_block">
                          <div className="imgbox"><img src={siteurl + IMAGE.trans_31 } alt="" /> <img src={item.author_avatar} className="absoImg"  alt="" /></div>
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
    </div>
    : this.noRecord()
    
    : path === 'plan-connect-inspire' ?
    singleLoading === false ?
    <div>
      <section id="post_dtls" className="planconceptinspire">
        <div className="container">
          <div className="inner_postdtls">
            <strong><div className="image_block">
            <div className="imgbox">
            { singleItems.post_format.length > 0 && singleItems.post_format[0].name  === 'Video'?
              <video controls>
                <source src={ singleItems.acf ? singleItems.acf.video? singleItems.acf.video.url:'' : '' } type="video/mp4"></source>
              </video>
              : singleItems.post_format === false ?
              !isLoading && <span><img src={ siteurl + IMAGE.trans_915 } alt="" /><img className="absoImg" src={ singleItems.acf ? singleItems.acf.single_featured_image ? singleItems.acf.single_featured_image.url : sample_image :'' } alt={ 'Blog Image' } /></span>
              : !isLoading && <span><img src={ siteurl + IMAGE.trans_915 } alt="" /><img className="absoImg" src={ singleItems.acf ? singleItems.acf.single_featured_image ? singleItems.acf.single_featured_image.url : sample_image :'' } alt={ 'Blog Image' } /></span>
            }
            </div></div></strong>
            <div className="post_title_dtls">
              <div className="blog_dtltitle"><img src={singleItems.category_icon.url} alt={singleItems.category_icon.alt} />{ singleItems.category_names[0] }</div>
              <h2>{ htmlToReactParser.parse(singleItems.title) }</h2>
              <div className="blog_author">
                <div className="imgbox"> <img src={ siteurl + IMAGE.trans_50 } alt="" /> 
                <img src={ singleItems.author_avatar } className="absoImg" alt="" /> 
              </div>
                <span>{ singleItems.author_nicename }</span> <span>{this.getTheDuration()}</span> </div>
            </div>
            <div className="body_postdtls">
              { htmlToReactParser.parse(singleItems.content) }
            </div>
            { commentData.length === 0 ?
              <div className="comments_list">
                <h3 className="nocomments" >No Comments yet. Start a conversation!</h3>
              </div>
              : <div className="comments_list">
              <h3>{commentData.length} Comments
              {this.state.visible > commentData.length &&
                <button onClick={this.loadLess} type="button" className="trans load_less" title="Load More Comments"><i className="fa fa-caret-up" aria-hidden="true"></i></button>
              }</h3>
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
                  <div className="imgbox">
                    <img src={ siteurl + IMAGE.trans_50} alt="" /> 
                    <img className="absoImg" src={item.author_avatar_urls[24]} alt="author_avatar" />
                  </div>
                  <h4>{item.author_name}</h4>
                  <p>{htmlToReactParser.parse(item.content.rendered.replace)}</p>
                  <div className="reply_links"> 
                    <span>{commentResult}{commentPostfix}</span> 
                    {/* <span><a href="#!" className="trans" title="Reply">Reply</a></span>  */}
                  </div>
                </div>
                </li>;
                })
              }
              </ul>
              {this.state.visible < commentData.length &&
              <div className="load_more"><button onClick={this.loadMore} type="button" className="trans" title="Load More Comments">Load More Comments <i className="fa fa-caret-down" aria-hidden="true"></i></button></div>
              }
              </div> 
            }
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
                        <span className="cat_icon"><img src={siteurl + "/src/assets/images/plan_inspire_icon.svg"} alt="Plan, Connect, Inspire" /></span>
                          <span className="more_view">
                          {/* <ion-icon name="more"></ion-icon> */}
                          </span>
                          <h4>{htmlToReactParser.parse(item.title)}</h4>
                          <div className="lover_block">
                            <div className="imgbox"><img src={siteurl + IMAGE.trans_31 } alt="" /> <img src={item.author_avatar} className="absoImg"  alt="" /></div>
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
    </div>          
    : this.noRecord()

    : path === 'the-spread' ?
    singleLoading === false ?
    <div>
      <section id="post_dtls" className="thespread">
        <div className="container">
          <div className="inner_postdtls">
            <div className="image_block sliders">
            { singleItems.post_format.length > 0 && singleItems.post_format[0].name  === 'Video'?
              <video controls>
                <source src={ singleItems.acf ? singleItems.acf.video? singleItems.acf.video.url:'' : '' } type="video/mp4"></source>
              </video>
              : singleItems.post_format[0].name === 'Gallery' && singleItems.acf.image_gallery.length > 0 ? 
              <ul>
              <Slider {...settings}>
                { singleItems.acf.image_gallery.map((item) => {
                return <li>
                  <div className="imgbox">
                    <img src={ siteurl + IMAGE.trans_915 } alt="" />
                    { !isLoading && <img src={item.image.url} className="absoImg" alt="" /> }
                  </div>
                </li>
                }) }
              </Slider>
              </ul>
            : <div className="imgbox">
                <img src={ siteurl + IMAGE.trans_915 } alt="" /><img src={sample_image} className="absoImg" alt="sampleImage" />
              </div>
            }
            </div>
            <div className="post_title_dtls">
              <div className="blog_dtltitle"><img src={ singleItems.category_icon.url } alt={ singleItems.category_icon.alt } />{ singleItems.category_names[0] }</div>
              <h2>{ htmlToReactParser.parse(singleItems.title) }</h2>
              <div className="blog_author">
                <div className="imgbox"> <img src={ siteurl + IMAGE.trans_50 } alt="" /> <img src={ singleItems.author_avatar} className="absoImg" alt="" /> </div>
                <span>{ singleItems.author_nicename }</span> <span>{ this.getTheDuration() }</span> </div>
            </div>
            <div className="body_postdtls">
              { htmlToReactParser.parse(singleItems.content) }
            </div>
            { commentData.length === 0 ?
            <div className="comments_list">
            <h3 className="nocomments" >No Comments yet. Start a conversation!</h3>
            </div>
            : <div className="comments_list">
            <h3>{commentData.length} Comments
            {this.state.visible > commentData.length &&
              <button onClick={this.loadLess} type="button" className="trans load_less" title="Load More Comments"><i className="fa fa-caret-up" aria-hidden="true"></i></button>
            }</h3>
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
                <div className="imgbox">
                  <img src={ siteurl + IMAGE.trans_50 } alt="" /> 
                  <img className="absoImg" src={item.author_avatar_urls[24]} alt="author_avatar" />
                </div>
                <h4>{item.author_name}</h4>
                <p>{htmlToReactParser.parse(item.content.rendered.replace)}</p>
                <div className="reply_links"> 
                  <span>{commentResult}{commentPostfix}</span> 
                  {/* <span><a href="#!" className="trans" title="Reply">Reply</a></span>  */}
                </div>
              </div>
              </li>;
              })
            }
            </ul>
            {this.state.visible < commentData.length &&
            <div className="load_more"><button onClick={this.loadMore} type="button" className="trans" title="Load More Comments">Load More Comments <i className="fa fa-caret-down" aria-hidden="true"></i></button></div>
            }
            </div> 
            }
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
                        <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.image_gallery[0]? item.acf.image_gallery[0].image.url:sample_image:'' } className="absoImg" alt={item.acf ? item.acf.image_gallery? item.acf.image_gallery[0].image.alt:'sample_image':''} /></span>
                        : <span><img src={ siteurl + IMAGE.trans_305 } alt="" /><img src={ item.acf ? item.acf.image_gallery[0]? item.acf.image_gallery[0].image.url:sample_image:'' } className="absoImg" alt={item.acf ? item.acf.image_gallery? item.acf.image_gallery[0].image.alt:'sample_image':''} /></span>
                      }                        
                      </div>
                        <div className="product_detils">
                          <span className="cat_icon"><img src={siteurl + "/src/assets/images/spread.svg"} alt="The Spread" /></span>
                            <span className="more_view">
                            {/* <ion-icon name="more"></ion-icon> */}
                            </span>
                            <h4>{ htmlToReactParser.parse(item.title) }</h4>
                            <div className="lover_block">
                              <div className="imgbox"><img src={siteurl + IMAGE.trans_31 } alt="" /> <img src={item.author_avatar} className="absoImg"  alt="" /></div>
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
    </div>
    : this.noRecord()
    
    : path === 'sponsored' ?
    singleLoading === false ?
    <div>
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
            <div className="blog_dtltitle"><img src={ singleItems.category_icon.url } alt={ singleItems.category_icon.alt } />{ singleItems.category_names[0] }</div>
            <h2>{ htmlToReactParser.parse(singleItems.title) }</h2>
            <div className="blog_author">
              <div className="imgbox"> <img src={ siteurl + IMAGE.trans_50 } alt="" /> <img src={ singleItems.author_avatar } className="absoImg" alt="" /> </div>
              <span>{ singleItems.author_nicename }</span> <span>{this.getTheDuration()}</span> </div>
          </div>
          <div className="body_postdtls">
            { htmlToReactParser.parse(singleItems.content) }
          </div>
          { commentData.length === 0 ?
            <div className="comments_list">
            <h3 className="nocomments" >No Comments yet. Start a conversation!</h3>
            </div>
            :
          <div className="comments_list">
            <h3>{commentData.length} Comments
            { this.state.loadComment ?
              
              <button onClick={this.loadLess} type="button" className="trans load_less" title="Load More Comments"><i className="fa fa-caret-up" aria-hidden="true"></i></button>
              : this.state.collapseComment ? null
              : ''
            }</h3>
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
                    {/* <span><a href="#!" className="trans" title="Reply">Reply</a></span>  */}
                  </div>
                </div>
              </li>;
              })
              }
            </ul>
            {this.state.visible < commentData.length &&
            <div className="load_more"><button onClick={this.loadMore} type="button" className="trans" title="Load More Comments">Load More Comments <i className="fa fa-caret-down" aria-hidden="true"></i></button></div>
            }
            </div>
          }
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
                        <span className="cat_icon"><img src={siteurl + "/src/assets/images/wire_icon.svg"} alt="On the Wire" /></span>
                          <span className="more_view">
                          {/* <ion-icon name="more"></ion-icon> */}
                          </span>
                          <h4>{htmlToReactParser.parse(item.title)}</h4>
                          <div className="lover_block">
                            <div className="imgbox"><img src={siteurl + IMAGE.trans_31 } alt="" /> <img src={item.author_avatar} className="absoImg"  alt="" /></div>
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
      </div>

    : this.noRecord()

    : this.notFound()
    )
  }

  render() {
    const { singleLoading } = this.props;
    const type = this.props.route.location.pathname.split('/')[1];
    return (
      <div>
        {singleLoading == false ? this.singleView() : '' }
      </div>
    );
  }


}

const mapStateToProps = state => ({
  blogLoading: state.blog.blogLoading,
  singleLoading: state.singleData.singleLoading,
  singleItems: state.singleData.singleItems,
  postID: state.singleData.pID,
  commentData: state.singleData.comments,
  morePosts: state.singleData.relatedPosts
})

const mapDispatchToProps = dispatch => ({
  getSingle: (postSlug) => { dispatch(getSingle(postSlug)) },
  getComment: () => { dispatch(getComment()) },
  getRelated: () => { dispatch(getRelated()) },
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Single));