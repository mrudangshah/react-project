import React, { Component } from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router'
import { Link } from 'react-router-dom';
import _ from 'lodash';
import { tpwConfig } from '../config';
import { TPW } from './../constants';
import { IMAGE } from './../constants/image';
import { getBlog, getOffsetData } from './../actions/blogAction';
import { getEvents } from './../actions/eventAction';
import NotFound  from './NotFound';

const siteurl = tpwConfig.API_URL;
var HtmlToReactParser = require('html-to-react').Parser;
let htmlToReactParser = new HtmlToReactParser(); //Get content of the editor
let sample_image = siteurl + IMAGE.sample_image;

class Blog extends Component {
  constructor(props) {
    super(props);

    this.state = {
      currentCount: 3,
      isFetching: false,
      progress: true,
      title: "Save",
      savedId: [],
      type: null
    };

    this.loadOnScroll = this.loadOnScroll.bind(this);
    this.savePost = this.savePost.bind(this);

    //Here ya go
    this.props.history.listen((location, action) => {
      this.setState({ type: location.pathname, progress: true });
    });
  }

  componentWillMount() {
    const { getEvents } = this.props;
    const blogType = '/' + this.props.route.match.params.blog;
    console.log(blogType)
    this.setState({ type: blogType });
    if( blogType === '/mark-your-planner' ){
      getEvents(); //Call the events
    } else { this.getBlogContent(blogType); }
  }
  
  componentDidMount() {
    window.addEventListener('scroll', this.loadOnScroll);
  }

  getBlogContent = (type) => {
    const { getBlog, itemPerRow } = this.props;
    getBlog(type, itemPerRow);    
  }

  componentWillUnmount() {
    window.removeEventListener('scroll', this.loadOnScroll);
  }

  loadOnScroll = (e) => {
    const { total, list, blogData, getOffsetData, offSetCnt } = this.props;
    const { currentCount } = this.state

    //Get div at the bottom of the content
    var el = document.getElementById('content-end');

    if (el) {
      var rect = el.getBoundingClientRect();
      var isAtEnd = (
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) && /*or $(window).height() */
        rect.right <= (window.innerWidth || document.documentElement.clientWidth) /*or $(window).width() */
      );

      //User at the end of content. load more content
      if (isAtEnd) {
        //If content list is still loading do not request for another content list.
        if (list.length === blogData.length) {
          this.setState({ isFetching: false });
        } else {
          this.setState({ isFetching: true });
          var count = currentCount + offSetCnt
          if (currentCount <= total) {
            getOffsetData(list, count);
          }
        }
      }
    }
  }

  loadContent = () => {
    const { currentCount } = this.state;
    const { total } = this.props;
    return (
      <div id="content-end" >
        { /* Start load more content when this div is visible*/
          (currentCount <= total && this.state.isFetching) ? <span>Loading Content...!!</span>
            : null
        }
      </div>
    )
  }

  savePost = (item, e) => {
    if (item.save_post_status === false) {
      this.state.savedId.push(item.id);
      this.setState({ title: "Post Saved" })
      let savePostsAPI = siteurl + '/wp/wp-json/tpw-rest-endpoints/v1/savepost?username=tpwadmin&dataid=' + item.id;

      fetch(savePostsAPI, {
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

  noRecord = () => {
    return <section id="blog not-found">
      <div className="inner_blog"><div className="col_blog">
      <div className="d-flex justify-content-center"><h3>{'No Records Found...!!!'}</h3></div>
      </div></div></section>
  }

  notFound = () => {
    return <section id="blog not-found">
      <div className="inner_blog"><div className="col_blog">
      <div className="inner_col_blog">{<NotFound/>}</div>
      </div></div></section>
  }

  blogView = () => {
    const { type } = this.state;
    const { blogData, blogLoading } = this.props;
    if(blogData.length !== 0 ) {
    return (
      <section id="blog">
        {
          blogLoading === false ?
            <div className="inner_blog">
              {blogData.length > 0 ? <div className="blog_title" style={{ 'background': blogData[0].background_color }}>
                <h1><img src={"" + blogData[0].cat_icon_white.url} alt={blogData[0].cat_icon_white.title} />{blogData[0].terms[0].name}</h1>
                <p>{blogData[0].terms[0].description}</p>
              </div> : ''}

              {blogData.map((item, index) => {
                let boundItemClick = this.savePost.bind(this, item);
                if (index % 2 === 0) {
                  return <div key={index} className="blog_cnt">
                    <div className="col_blog">
                      <div className="inner_col_blog height_auto">
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
                          <div className="blog_dtls">
                            <div className="blog_dtltitle"><img src={item.cat_icon.url} alt={item.cat_icon.alt} />{item.terms[0].name}</div>
                            {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                              <div className="post_type">Video</div>
                              : ''
                            }
                            <h2>{htmlToReactParser.parse(item.title)}</h2>
                            <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                            <div className="blog_author">
                              <div className="imgbox">
                                <Link to={`/member/${item.author}`}>
                                <img src={siteurl + IMAGE.trans_50} alt="" />
                                <img src={item.author_avatar} className="absoImg" alt={item.author} />
                                </Link>
                              </div>
                              <span>{item.author}</span>
                            </div>
                            <div className="readmore">
                              {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                                <Link to={`${type}/${item.slug}`} className="trans" title="Watch Now">Watch Now</Link>
                                : <Link to={`${type}/${item.slug}`} className="trans" title="View Post">View Post</Link>
                              }
                            </div>
                            <div className="save_share_btn">
                              <ul>
                                <li>
                                  <button className="trans" title="Save" value={item.id} data-id={item.id} onClick={boundItemClick}>
                                    {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={item.term_saved_icon.url} alt={item.term_saved_icon.alt} /> : <img className="svg" src={item.term_save_icon.url} alt={item.term_save_icon.alt} />
                                      : item.save_post_status === true ? <img className="svg" src={item.term_saved_icon.url} alt={item.term_saved_icon.alt} /> : <img className="svg" src={item.term_save_icon.url} alt={item.term_save_icon.url} />}
                                    Save
                                </button>
                                </li>
                                <li>
                                  <button className="trans" title="Share">
                                    <img className="svg" src={item.term_share_icon.url} alt={item.term_share_icon.alt} />Share</button>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>;
                }
                else {
                  return <div key={index} className="blog_cnt">
                    <div className="col_blog float-right">
                      <div className="inner_col_blog height_auto">
                        {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                          <video width="651" controls>
                            <source src={item.acf.video.url} type="video/mp4"></source>
                          </video>
                          : item.post_format === false ?
                            <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} />
                            : <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} />
                        }
                      </div>
                    </div>
                    <div className="col_blog float-left">
                      <div className="inner_col_blog pad_around">
                        <div className="main_blog_dtls">
                          <div className="blog_dtls">
                            <div className="blog_dtltitle"><img src={item.cat_icon.url} alt={item.cat_icon.alt} />{item.terms[0].name}</div>
                            {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                              <div className="post_type">Video</div>
                              : ''
                            }
                            <h2>{htmlToReactParser.parse(item.title)}</h2>
                            <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                            <div className="blog_author">
                              <div className="imgbox">
                                <img src={siteurl + IMAGE.trans_50} alt="" />
                                <img src={item.author_avatar} className="absoImg" alt="" />
                              </div>
                              <span>{item.author}</span>
                            </div>
                            <div className="readmore">
                              {item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                                <Link to={`${type}/${item.slug}`} className="trans" title="Watch Now">Watch Now</Link>
                                : <Link to={`${type}/${item.slug}`} className="trans" title="View Post">View Post</Link>
                              }
                            </div>
                            <div className="save_share_btn">
                              <ul>
                                <li>
                                  <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick}>
                                    {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={siteurl + IMAGE.save_opaque} alt="Save" /> : <img className="svg" src={siteurl + IMAGE.save} alt="Save" />
                                      : item.save_post_status === true ? <img className="svg" src={siteurl + IMAGE.save_opaque} alt="Save" /> : <img className="svg" src={siteurl + IMAGE.save} alt="Save" />}
                                    Save
                              </button>
                                </li>
                                <li>
                                  <button className="trans" title="Share">
                                    <img className="svg" src={siteurl + IMAGE.share} alt="Share" />Share</button>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>;
                }
              })}

              {this.loadContent()}
            </div>
            : ''
        }
      </section>
    );
    } else{ 
      return( 
        blogLoading === false ?
        this.noRecord() 
        : ''
      )
    }
  }

  markPlannerView = () => {
    const { type } = this.state;
    const { eventData, eventLoading } = this.props;
    
    if(eventData.length !== 0 ) {
    return (
      <section id="blog" className="markyourplanner">
        {
          eventLoading === false ?
            <div className="inner_blog">
              {/* {eventData.length > 0 ? <div className="blog_title" style={{ 'background': eventData[0].background_color }} >
                <h1><img src={"" + eventData[0].cat_icon_white.url} alt={eventData[0].cat_icon_white.title} />{eventData[0].terms[0].name}</h1>
                <p>{eventData[0].terms[0].description}</p>
              </div> : ''} */}
              {eventData.length > 0 ? <div className="blog_title" style={{ 'background': eventData[0].background_color }} >
                <h1><img src={siteurl+'/wp/wp-content/uploads/2019/03/plnnner_icon_white.svg'} alt={eventData[0].title} />{eventData[0].terms[0].name}</h1>
                <p>{eventData[0].terms[0].description}</p>
              </div> : ''}
              {eventData.map((item, index) => {
                let boundItemClick = this.savePost.bind(this, item);
                if (index % 2 === 0) {
                  return <div key={index} className="blog_cnt">
                    <div className="col_blog">
                      <div className="inner_col_blog height_auto">
                        {/* <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} /> */}
                        <img className="img_respon" src={item.media ? item.media.medium : sample_image } alt={item.title} />
                      </div>
                    </div>
                    <div className="col_blog">
                      <div className="inner_col_blog pad_around">
                        <div className="main_blog_dtls">
                          <div className="blog_dtls orange">
                            <div className="blog_dtltitle orange">
                              {/* <img src={item.cat_icon.url} alt={item.cat_icon.alt} />{item.terms[0].name} */}
                              <img src={siteurl+'/wp/wp-content/uploads/2019/01/plnnner_icon.svg'} alt={eventData[0].title} />{item.terms[0].name}
                            </div>
                            <div className="post_type">Event</div>
                            <h2>{htmlToReactParser.parse(item.title)}</h2>
                            <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                            <div className="blog_author">
                              <div className="imgbox">
                                <img src={siteurl + IMAGE.trans_50} alt="Mark Your Planner" />
                                <img src={item.author_avatar} className="absoImg" alt="" />
                              </div>
                              <span>{item.author}</span>
                            </div>
                            <div className="readmore">
                              <Link to={`${type}/${item.slug}`} className="trans" title="Learn More">Learn More</Link>
                            </div>
                            <div className="save_share_btn">
                              <ul>
                                <li>
                                  <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick}>
                                    {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={siteurl + IMAGE.save_plnnner_opaque} alt="Save" /> : <img className="svg" src={siteurl + IMAGE.save_plnnner} alt="Save" />
                                      : item.save_post_status === true ? <img className="svg" src={siteurl + IMAGE.save_plnnner_opaque} alt="Save" /> : <img className="svg" src={siteurl + IMAGE.save_plnnner} alt="Save" />}
                                    Save
                        </button>
                                </li>
                                <li>
                                  <button className="trans" title="Share">
                                    <img className="svg" src={siteurl + IMAGE.share_planner} alt="Share" />Share</button>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>;
                }
                else {
                  return <div key={index} className="blog_cnt">
                    <div className="col_blog float-right">
                      <div className="inner_col_blog height_auto">
                        {/* <img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.url : sample_image : ''} alt={item.acf.single_featured_image.alt} /> */}
                        <img className="img_respon" src={item.media ? item.media.medium : sample_image } alt={item.title} />
                      </div>
                    </div>
                    <div className="col_blog float-left">
                      <div className="inner_col_blog pad_around">
                        <div className="main_blog_dtls">
                          <div className="blog_dtls orange">
                            <div className="blog_dtltitle orange">
                              {/* <img src={item.cat_icon.url} alt={item.cat_icon.alt} />{item.terms[0].name} */}
                              <img src={siteurl+'/wp/wp-content/uploads/2019/01/plnnner_icon.svg'} alt={eventData[0].title} />{item.terms[0].name}
                            </div>
                            <div className="post_type">Event</div>
                            <h2>{htmlToReactParser.parse(item.title)}</h2>
                            <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                            <div className="blog_author">
                              <div className="imgbox">
                                <img src={siteurl + IMAGE.trans_50} alt="" />
                                <img src={item.author_avatar} className="absoImg" alt="" />
                              </div>
                              <span>{item.author}</span>
                            </div>
                            <div className="readmore">
                              <Link to={`${type}/${item.slug}`} className="trans" title="Learn More">Learn More</Link>
                            </div>
                            <div className="save_share_btn">
                              <ul>
                                <li>
                                  <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick}>
                                    {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={siteurl + IMAGE.save_plnnner_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_plnnner} alt="On The Wire" />
                                      : item.save_post_status === true ? <img className="svg" src={siteurl + IMAGE.save_plnnner_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_plnnner} alt="On The Wire" />}
                                    Save
                        </button>
                                </li>
                                <li>
                                  <button className="trans" title="Share">
                                    <img className="svg" src={siteurl + IMAGE.share_planner} alt="On The Wire" />Share</button>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>;
                }
              })}
              {this.loadContent()}
            </div>
            : ''
        }
      </section>
    );
    } else{ 
      return( 
        eventLoading === false ?
        this.noRecord() 
        : ''
      )
    }
  }

  ultimateHaulView = () => {
    const { blogData, blogLoading } = this.props;
    if(blogData.length !== 0 ) {
      return (
        <section id="blog" className="theulitmatehaul">
          {
            blogLoading === false ?
              <div className="inner_blog">
                {blogData.length > 0 ? <div className="blog_title" style={{ 'background': blogData[0].background_color }}>
                  <h1><img src={"" + blogData[0].cat_icon_white.url} alt={blogData[0].cat_icon_white.title} />{blogData[0].terms[0].name}</h1>
                  <p>{blogData[0].terms[0].description}</p>
                </div> : ''}
                {blogData.map((item, index) => {
                  let boundItemClick = this.savePost.bind(this, item);
                  if (index % 2 === 0) {
                    return <div key={index} className="blog_cnt">
                      <div className="col_blog">
                        <div className="inner_col_blog height_auto">
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
                            <div className="blog_dtls green">
                              <div className="blog_dtltitle green"><img src={item.cat_icon.url} alt={item.cat_icon.alt} />{item.terms[0].name}</div>
                              <h2>{htmlToReactParser.parse(item.title)}</h2>
                              <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                              <div className="blog_author">
                                <div className="imgbox">
                                  <img src={siteurl + IMAGE.trans_50} alt="Ultimate Haul" />
                                  <img src={item.author_avatar} className="absoImg" alt="" />
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
                                    <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick}>
                                      {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={siteurl + IMAGE.save_haul_opaque} alt="Ultimate Haul" /> : <img className="svg" src={siteurl + IMAGE.save_haul} alt="Ultimate Haul" />
                                        : item.save_post_status === true ? <img className="svg" src={siteurl + IMAGE.save_haul_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_haul} alt="Ultimate Haul" />}
                                      Save
                                    </button>
                                  </li>
                                  <li>
                                    <button className="trans" title="Share">
                                      <img className="svg" src={siteurl + IMAGE.share_haul} alt="Ultimate Haul" />Share</button>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>;
                  }
                  else {
                    return <div key={index} className="blog_cnt">
                      <div className="col_blog float-right">
                        <div className="inner_col_blog height_auto">
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
                      <div className="col_blog float-left">
                        <div className="inner_col_blog pad_around">
                          <div className="main_blog_dtls">
                            <div className="blog_dtls green">
                              <div className="blog_dtltitle green"><img src={item.cat_icon.url} alt={item.cat_icon.alt} />{item.terms[0].name}</div>
                              <h2>{htmlToReactParser.parse(item.title)}</h2>
                              <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                              <div className="blog_author">
                                <div className="imgbox">
                                  <img src={siteurl + IMAGE.trans_50} alt="" />
                                  <img src={item.author_avatar} className="absoImg" alt="" />
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
                                    <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick}>
                                      {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={siteurl + IMAGE.save_haul_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_haul} alt="Ultimate Haul" />
                                        : item.save_post_status === true ? <img className="svg" src={siteurl + IMAGE.save_haul_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_haul} alt="Ultimate Haul" />}
                                      Save
                                    </button>
                                  </li>
                                  <li>
                                    <button to="#!" className="trans" title="Share">
                                      <img className="svg" src={siteurl + IMAGE.share_haul} alt="On The Wire" />Share</button>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>;
                  }
                })}
                {this.loadContent()}
              </div>
              : ''
          }
        </section>
      );
    } else{
      return( 
        blogLoading === false ?
        this.noRecord() 
        : ''
      )
    }
  }

  planConnectView = () => {
    const { blogData, blogLoading } = this.props;
    if(blogData.length !== 0 ) {
    return (
      <section id="blog" className="planconnectinspire">
      {
        blogLoading === false ?
          <div className="inner_blog">
            {blogData.length > 0 ? <div className="blog_title" style={{ 'background': blogData[0].background_color }}>
              <h1><img src={"" + blogData[0].cat_icon_white.url} alt={blogData[0].cat_icon_white.title} />{blogData[0].terms[0].name}</h1>
              <p>{blogData[0].terms[0].description}</p>
            </div> : ''}
            {blogData.map((item, index) => {
              let boundItemClick = this.savePost.bind(this, item);
              if (index % 2 === 0) {
                return <div key={index} className="blog_cnt">
                  <div className="col_blog">
                    <div className="inner_col_blog height_auto">
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
                        <div className="blog_dtls pink">
                          <div className="blog_dtltitle pink"><img src={item.cat_icon.url} alt={item.cat_icon.alt} />{item.terms[0].name}</div>
                          <h2>{htmlToReactParser.parse(item.title)}</h2>
                          <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                          <div className="blog_author">
                            <div className="imgbox">
                              <img src={siteurl + IMAGE.trans_50} alt="Ultimate Haul" />
                              <img src={item.author_avatar} className="absoImg" alt="" />
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
                                <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick}>
                                  {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={siteurl + IMAGE.save_inspire_opaque} alt="Save" /> : <img className="svg" src={siteurl + IMAGE.save_inspire} alt="Save" />
                                    : item.save_post_status === true ? <img className="svg" src={siteurl + IMAGE.save_inspire_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_inspire} alt="Save" />}
                                  Save
                                </button>
                              </li>
                              <li>
                                <button className="trans" title="Share">
                                  <img className="svg" src={siteurl + IMAGE.share_inspire} alt="Share" />Share</button>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>;
              }
              else {
                return <div key={index} className="blog_cnt">
                  <div className="col_blog float-right">
                    <div className="inner_col_blog height_auto">
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
                  <div className="col_blog float-left">
                    <div className="inner_col_blog pad_around">
                      <div className="main_blog_dtls">
                        <div className="blog_dtls pink">
                          <div className="blog_dtltitle pink"><img src={item.cat_icon.url} alt={item.cat_icon.alt} />{item.terms[0].name}</div>
                          <h2>{htmlToReactParser.parse(item.title)}</h2>
                          <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                          <div className="blog_author">
                            <div className="imgbox">
                              <img src={siteurl + IMAGE.trans_50} alt="" />
                              <img src={item.author_avatar} className="absoImg" alt="" />
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
                                <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick}>
                                  {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={siteurl + IMAGE.save_inspire_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_inspire} alt="On The Wire" />
                                    : item.save_post_status === true ? <img className="svg" src={siteurl + IMAGE.save_inspire_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_inspire} alt="On The Wire" />}
                                  Save
                                </button>
                              </li>
                              <li>
                                <button className="trans" title="Share">
                                  <img className="svg" src={siteurl + IMAGE.share_inspire} alt="On The Wire" />Share</button>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>;
              }
            })}
            {this.loadContent()}
          </div>
          : ''
      }
      </section>
    )
    } else{
      return( 
        blogLoading === false ?
        this.noRecord() 
        : ''
      )
    }
  }

  spreadView = () => {
    const { type } = this.state;
    const { blogData, blogLoading } = this.props;
    if(blogData.length !== 0 ) {
    return (
      <section id="blog" className="thespread">
        {
          blogLoading === false ?
            <div className="inner_blog">
              {blogData.length > 0 ? <div className="blog_title" style={{ 'background': blogData[0].background_color }}>
                <h1><img src={"" + blogData[0].cat_icon_white.url} alt={blogData[0].cat_icon_white.title} />{blogData[0].terms[0].name}</h1>
                <p>{blogData[0].terms[0].description}</p>
              </div> : ''}
              {blogData.map((item, index) => {
                let boundItemClick = this.savePost.bind(this, item);
                if (index % 2 === 0) {
                  return <div key={index} className="blog_cnt">
                    <div className="col_blog">
                      <div className="inner_col_blog height_auto">
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
                          <div className="blog_dtls">
                            <div className="blog_dtltitle"><img src={item.cat_icon.url} alt={item.cat_icon.alt} />{item.terms[0].name}</div>
                            <h2>{htmlToReactParser.parse(item.title)}</h2>
                            <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                            <div className="blog_author">
                              <div className="imgbox">
                                <img src={siteurl + IMAGE.trans_50} alt="" />
                                <img src={item.author_avatar} className="absoImg" alt="" />
                              </div>
                              <span>{item.author}</span>
                            </div>
                            <div className="readmore">
                              <Link to={`${type}/${item.slug}`} className="trans" title="View Post">View Post</Link>
                            </div>
                            <div className="save_share_btn">
                              <ul>
                                <li>
                                  <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick}>
                                    {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={siteurl + IMAGE.save_spread_opaque} alt="The Spread" /> : <img className="svg" src={siteurl + IMAGE.save_spread} alt="The Spread" />
                                      : item.save_post_status === true ? <img className="svg" src={siteurl + IMAGE.save_spread_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_spread} alt="On The Wire" />}
                                    Save
                          </button>
                                </li>
                                <li>
                                  <button className="trans" title="Share">
                                    <img className="svg" src={siteurl + IMAGE.share_spread} alt="The Spread" />Share</button>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>;
                }
                else {
                  return <div key={index} className="blog_cnt">
                    <div className="col_blog float-right">
                      <div className="inner_col_blog height_auto">
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
                    <div className="col_blog float-left">
                      <div className="inner_col_blog pad_around">
                        <div className="main_blog_dtls">
                          <div className="blog_dtls">
                            <div className="blog_dtltitle"><img src={item.cat_icon.url} alt={item.cat_icon.alt} />{item.terms[0].name}</div>
                            <h2>{htmlToReactParser.parse(item.title)}</h2>
                            <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                            <div className="blog_author">
                              <div className="imgbox">
                                <img src={siteurl + IMAGE.trans_50} alt="" />
                                <img src={item.author_avatar} className="absoImg" alt="" />
                              </div>
                              <span>{item.author}</span>
                            </div>
                            <div className="readmore">
                              <Link to={`${type}/${item.slug}`} className="trans" title="View Post">View Post</Link>
                            </div>
                            <div className="save_share_btn">
                              <ul>
                                <li>
                                  <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick}>
                                    {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={siteurl + IMAGE.save_spread_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_spread} alt="On The Wire" />
                                      : item.save_post_status === true ? <img className="svg" src={siteurl + IMAGE.save_spread_opaque} alt="On The Wire" /> : <img className="svg" src={siteurl + IMAGE.save_spread} alt="On The Wire" />}
                                    Save
                          </button>
                                </li>
                                <li>
                                  <button className="trans" title="Share">
                                    <img className="svg" src={siteurl + IMAGE.share_spread} alt="On The Wire" />Share</button>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>;
                }
              })}
              {this.loadContent()}
            </div>
            : ''
        }
      </section>
    );
    } else{
      return( 
        blogLoading === false ?
        this.noRecord() 
        : ''
      )
    }
  }

  render() {
    const { type } = this.state;

    return (
      <React.Fragment>
        {
          type === '/on-the-wire' ? this.blogView() :
            type === '/mark-your-planner' ? this.markPlannerView() :
              type === '/the-ultimate-haul' ? this.ultimateHaulView() :
                type === '/plan-connect-inspire' ? this.planConnectView() :
                  type === '/the-spread' ? this.spreadView() :
                    this.notFound()
        }
      </React.Fragment>
    );
  }
}

//export default Blog;

const mapStateToProps = state => ({
  blogData: state.blog.blogData,
  list: state.blog.list,
  total: state.blog.total,
  blogLoading: state.blog.blogLoading,
  itemPerRow: state.blog.itemPerRow,
  offSetCnt: state.blog.offSetCnt,
  eventData: state.event.events,
  eventLoading: state.event.eventLoading
});

const mapDispatchToProps = dispatch => ({
  getBlog: (type, offset) => { dispatch(getBlog(type, offset)) },
  getOffsetData: (type, offset) => { dispatch(getOffsetData(type, offset)) },
  getEvents: () => { dispatch( getEvents() ) }
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Blog));