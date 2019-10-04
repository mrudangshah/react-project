import React, { Component } from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router'
import { Link } from 'react-router-dom';
import _ from 'lodash';
import isEmpty from 'lodash/isEmpty';
import { tpwConfig } from '../config';
import { TPW } from './../constants';
import { IMAGE } from './../constants/image';
import { getBlog, getOffsetData } from './../actions/blogAction';
import { getEvents } from './../actions/eventAction';
import NotFound  from './NotFound';
import LazyLoad from 'react-lazyload';
import Placeholder from '../components/Placeholder';

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
      type: null,
      loadingText: 'Loading...',
      isLoading: true,
    };

    this.loadOnScroll = this.loadOnScroll.bind(this);
    this.savePost = this.savePost.bind(this);

    this.props.history.listen((location, action) => {
      this.setState({ type: location.pathname, progress: true });
    });
  }

  componentDidMount() {
    //window.addEventListener('scroll', this.loadOnScroll);
    let that = this;
    that.setState({isLoading: false})
    const { getEvents } = this.props;
    const blogType = '/' + this.props.route.match.params.blog;
    this.setState({ type: blogType });
    if( blogType === '/mark-your-planner' ){
      getEvents(); //Call the events
    } else { this.getBlogContent(blogType); }
  }

  getBlogContent = (type) => {
    const { getBlog, itemPerRow } = this.props;
    getBlog(type, itemPerRow);    
  }

  // componentWillUnmount() {
  //   window.removeEventListener('scroll', this.loadOnScroll);
  // }

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
      <div className="d-flex justify-content-center p-5"><h3>{'No Records Found...!!!'}</h3></div>
      </div></div></section>
  }

  notFound = () => {
    return <section id="blog not-found">
      <div className="inner_blog"><div className="col_blog">
      <div className="inner_col_blog">{<NotFound/>}</div>
      </div></div></section>
  }

  loadingRecord = () => { return <div className="d-flex justify-content-center p-5"><h6 className="font-weight-bolder">{this.state.loadingText}</h6></div> }

  getblogTitle = () => {
    const { type } = this.state;
    const { blogData, eventData } = this.props;
    if( type !== '/mark-your-planner'){
      return(
        blogData.length > 0 ? 
          <div className="blog_title" style={{ 'background': blogData[0].background_color }}>
            <h1><img src={ blogData[0].cat_icon_white !== null && blogData[0].cat_icon_white.url} alt="category_icon" />{blogData[0].terms[0].name}</h1>
            { !isEmpty(blogData[0].terms[0].description) && <p>{blogData[0].terms[0].description}</p> }
          </div> : ''
      )
    } else{
      return(
       eventData.length > 0 && <div className="blog_title" style={{ 'background': eventData[0].event_bg_color }} >
          <h1><img src={ eventData[0].event_white_icon && eventData[0].event_white_icon.url } alt="" />{eventData[0].terms[0].name}</h1>
          { !isEmpty(eventData[0].terms[0].description) && <p>{eventData[0].terms[0].description}</p> }
      </div>
    )}
  }

  getblogData = () => {
    const { type, isLoading } = this.state;
    const { blogData } = this.props;

    return(
    blogData.map((item,index) => {
      let boundItemClick = this.savePost.bind(this, item);
      return <LazyLoad key={index} height={800}>
      <div key={index} className="blog_cnt">
        <div className={[index %2 === 0 ? 'col_blog' : 'col_blog float-right']}>
          <div className="inner_col_blog height_auto">
          { item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
            <video poster = { item.acf.video !== false && item.acf.video.sizes.large } controls>
              <source src={item.acf.video.url} type="video/mp4"></source>
            </video>
            : type === '/the-spread' ?
                item.post_format === false && item.acf !==null ? <Link to={`${type}/${item.slug}`}><img className="img_respon" src={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.url : sample_image : ''} alt="blog_image" /></Link>
                : item.post_format === false && item.acf === null ? !isLoading && <Link to={`${type}/${item.slug}`}><img className="img_respon" src={ sample_image } alt="blog_image" /></Link>
                : item.post_format[0].name === 'Gallery' ? <Link to={`${type}/${item.slug}`}><img className="img_respon" src={item.acf ? item.acf.image_gallery ? item.acf.image_gallery[0].image.url : sample_image : ''} alt="blog_image" /></Link>
            : !isLoading && <Link to={`${type}/${item.slug}`}><img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.sizes.medium_large : sample_image : sample_image } alt="blog_image" /></Link> : <Link to={`${type}/${item.slug}`}><img className="img_respon" src={item.acf ? item.acf.single_featured_image ? item.acf.single_featured_image.sizes.medium_large : sample_image : sample_image } alt="blog_image" /></Link>
          }
          </div>
        </div>
        <div className={[index %2 === 0 ? 'col_blog' : 'col_blog float-left']}>
          <div className="inner_col_blog pad_around">
            <div className="main_blog_dtls">
              <div className="blog_dtls" style={{'borderColor': blogData[0].background_color}}>
                <div className="blog_dtltitle" style={{'color': blogData[0].background_color}}><img src={ item.cat_icon !==null && item.cat_icon.url} alt="cat_icon" />{item.terms[0].name}</div>
                { item.post_format.length > 0 && item.post_format[0].name === 'Video' ? <div className="post_type">Video</div> : '' }
                <Link to={`${type}/${item.slug}`}><h2>{htmlToReactParser.parse(item.title)}</h2></Link>
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
                <Link to={"/member/"+ item.user_login} className="trans" title={item.author}>
                  <img src={item.author_avatar} className="absoImg_hover" alt="" />
                </Link>
                { item.post_format.length > 0 && item.post_format[0].name === 'Video' ?
                  <Link to={`${type}/${item.slug}`} className="trans" title="Watch Now" style={{'color': blogData[0].background_color}}>Watch Now</Link>
                  : <Link to={`${type}/${item.slug}`} className="trans" title="View Post" style={{'color': blogData[0].background_color}}>View Post</Link>
                }
                </div>
                <div className="save_share_btn ">
                  <ul>
                    <li>
                      <button className="trans" title="Save" value={item.id} data-id={item.id} onClick={boundItemClick}>
                        {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={ item.term_saved_icon !==null && item.term_saved_icon.url } alt="saved_icon" /> : <img className="svg" src={ item.term_save_icon !== null && item.term_save_icon.url } alt="save_icon" />
                          : item.save_post_status === true ? <img className="svg" src={ item.term_saved_icon !==null && item.term_saved_icon.url} alt="saved_icon" /> : <img className="svg" src={ item.term_save_icon !==null && item.term_save_icon.url} alt="save_icon" />}
                        <span style={{'color': blogData[0].background_color}}>Save</span>
                    </button>
                    </li>
                    <li>
                      <button className="trans" title="Share">
                        <img className="svg" src={ item.term_share_icon !==null && item.term_share_icon.url } alt="share_icon" /><span style={{'color': blogData[0].background_color}}>Share</span></button>
                    </li>
                  </ul>
                </div>
                <div className="feedmore_menu">
                    <ion-icon name="ios-more" id="feedmore"></ion-icon>
                    <ul className="feedmore_dropdown">
                      <li><a href="#!">Edit</a></li>
                      <li><a href="#!">Delete</a></li>
                      <li><a href="#!">Report</a></li>
                    </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </LazyLoad>
    }))
  }

  wireView = () => {
    const { blogData, blogLoading } = this.props;
    if(blogData.length !== 0 ) {
    return (
      <section id="blog">
      {
        blogLoading === false ?
          <div className="inner_blog">
            { this.getblogTitle() }
            { this.getblogData() }
          </div>
        : this.loadingRecord()
      }
      </section>
    );
    } else{ 
      return( 
        blogLoading === false ?
        this.noRecord() 
        : this.loadingRecord()
      )
    }
  }

  markPlannerView = () => {
    const { type } = this.state;
    const { eventData, eventLoading } = this.props;
    
    if(eventData.length !== 0 ) {
    return (
      <section id="blog">
        {
          eventLoading === false ?
            <div className="inner_blog">
              { this.getblogTitle() }
              { eventData.map((item, index) => {
                let boundItemClick = this.savePost.bind(this, item);
                  return <LazyLoad key={index} height={800} >
                  <div key={index} className="blog_cnt">
                    <div className={[index %2 === 0 ? 'col_blog' : 'col_blog float-right']}>
                      <div className="inner_col_blog height_auto">
                        <Link to={`${type}/${item.slug}`}><img className="img_respon" src={item.media ? item.media.large : sample_image } alt={item.title} /></Link>
                      </div>
                    </div>
                    <div className={[index %2 === 0 ? 'col_blog' : 'col_blog float-left']}>
                      <div className="inner_col_blog pad_around">
                        <div className="main_blog_dtls">
                          <div className="blog_dtls" style={{'border-color': item.event_bg_color}}>
                            <div className="blog_dtltitle" style={{'color': item.event_bg_color}}>
                              <img src={ item.event_cat_icon && item.event_cat_icon.url} alt="" />{item.terms[0].name}
                            </div>
                            <div className="post_type">Event</div>
                            <Link to={`${type}/${item.slug}`}><h2>{htmlToReactParser.parse(item.title)}</h2></Link>
                            <p>{htmlToReactParser.parse(_.truncate(item.excerpt, {'length': TPW.EXCERPT_LENGTH}))}</p>
                            <div className="blog_author">
                              <div className="imgbox">
                                <img src={siteurl + IMAGE.trans_50} alt="Mark Your Planner" />
                                <img src={item.author_avatar} className="absoImg" alt="" />
                              </div>
                              <span>{item.author}</span>
                            </div>
                            <div className="readmore">
                              <Link to={"/member/"+ item.user_login} className="trans" title={item.author}>
                                <img src={item.author_avatar} className="absoImg_hover" alt="" />
                              </Link>
                              <Link to={`${type}/${item.slug}`} className="trans" title="Learn More" style={{'color': item.event_bg_color}}>Learn More</Link>
                            </div>
                            <div className="save_share_btn">
                              <ul>
                                <li>
                                  <button className="trans" title="Save" data-id={item.id} onClick={boundItemClick}>
                                    {item.save_post_status === false ? this.state.savedId.includes(item.id) ? <img className="svg" src={siteurl + IMAGE.save_plnnner_opaque} alt="Save" /> : <img className="svg" src={siteurl + IMAGE.save_plnnner} alt="Save" />
                                      : item.save_post_status === true ? <img className="svg" src={siteurl + IMAGE.save_plnnner_opaque} alt="Save" /> : <img className="svg" src={siteurl + IMAGE.save_plnnner} alt="Save" />}
                                    <span style={{'color': item.event_bg_color}}>Save</span>
                                  </button>
                                </li>
                                <li>
                                  <button className="trans" title="Share">
                                    <img className="svg" src={siteurl + IMAGE.share_planner} alt="Share" /><span style={{'color': item.event_bg_color}}>Share</span></button>
                                </li>
                              </ul>
                            </div>
                            <div className="feedmore_menu" >
                              <ion-icon name="ios-more" id="feedmore"></ion-icon>
                              <ul className="feedmore_dropdown">
                                <li><a href="#!">Edit</a></li>
                                <li><a href="#!">Delete</a></li>
                                <li><a href="#!">Report</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  </LazyLoad>
              })}
            </div>
            : this.loadingRecord()
        }
      </section>
    );
    } else{ 
      return( 
        eventLoading === false ?
        this.noRecord() 
        : this.loadingRecord()
      )
    }
  }

  ultimateHaulView = () => {
    const { blogData, blogLoading } = this.props;
    if(blogData.length !== 0 ) {
      return (
        <section id="blog">
          {
            blogLoading === false ?
              <div className="inner_blog">
                { this.getblogTitle() }
                { this.getblogData() }
                { this.loadContent() }
              </div>
            : this.loadingRecord()
          }
        </section>
      );
    } else{
      return( 
        blogLoading === false ?
        this.noRecord() 
        : this.loadingRecord()
      )
    }
  }

  planConnectView = () => {
    const { blogData, blogLoading } = this.props;
    if(blogData.length !== 0 ) {
    return (
      <section id="blog">
      {
        blogLoading === false ?
          <div className="inner_blog">
            { this.getblogTitle() }
            { this.getblogData() }
          </div>
        : this.loadingRecord()
      }
      </section>
    )
    } else{
      return( 
        blogLoading === false ?
        this.noRecord() 
        : this.loadingRecord()
      )
    }
  }

  spreadView = () => {
    const { blogData, blogLoading } = this.props;
    if(blogData.length !== 0 ) {
    return (
      <section id="blog">
        {
          blogLoading === false ?
            <div className="inner_blog">
              { this.getblogTitle() }
              { this.getblogData() }
              { this.loadContent() }
            </div>
          : this.loadingRecord()
        }
      </section>
    );
    } else{
      return( 
        blogLoading === false ?
        this.noRecord() 
        : this.loadingRecord()
      )
    }
  }

  render() {
    const { type } = this.state;

    return (
      <React.Fragment>
        {
          type === '/on-the-wire' ? this.wireView() :
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