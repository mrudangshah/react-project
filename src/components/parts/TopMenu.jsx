import React, {Component} from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router'
import { Link } from 'react-router-dom';
import { getBlog} from './../../actions/blogAction';

class TopMenu extends Component {
  constructor(props){
    super(props);
    this.state = {};
  }

  getContent = (slug) => {
    const { getBlog, itemPerRow } = this.props;
    getBlog(slug, itemPerRow);
  }

  handleTopMenu = () => {
    const { page } = this.props
    let menuItem = page.topMenu;
    
    return (
      <div className="inner_navbar">
        <ul>
          { menuItem.map((item,index) => { 
          return <li key={index} className={item.classes.join(" ")}>
            {item.acf != false ? <Link to={item.slug} onClick={() => this.getContent(item.slug)}>
            <img src={item.acf.menu_icon.url} alt={item.acf.menu_icon.alt}></img>
            {item.title}</Link> : ''}
            <div className="desk_dwn" >
              <div className="inner_drpdwn">
                <ul>
                { menuItem.map((item,index) => { 
                  return <li key={index} className={item.classes[0]}>
                    {item.acf != false ? <Link to={item.slug} className="trans" title={item.title} onClick={() => this.getContent(item.slug)}>
                       <img src={item.acf.menu_icon.url} className="default" alt={item.acf.menu_icon.alt} />
                      <img src={item.acf.hover_icon.url} className="hover" alt={item.acf.hover_icon.alt} />
                      
                      <p>{item.description}</p>
                    </Link>: ''}
                  </li>;
                })}     
                </ul>
              </div>
            </div>
          </li> ;
          })}
        </ul>
        <div className="desk_dwn mobile_dwn">
          <div className="inner_drpdwn">
            <div className="mobile_search">
              <input type="text" className="search_input" title="Search" placeholder="Search" />
              <button className="trans" title="Search"><i className="fa fa-search" aria-hidden="true"></i></button>
            </div>
            <ul>
            { menuItem.map((item,index) => { 
              return <li key={index} className={item.classes.join(" ")}> 
             {item.acf != false ? <a href={item.slug} className="trans" title={item.title}>
                <img src={item.acf.menu_icon.url} className="default" alt={item.acf.menu_icon.alt} />
                <img src={item.acf.hover_icon.url} className="hover" alt={item.acf.hover_icon.alt} />
                <h4>{item.title}</h4>
                <p>{item.description}</p>
              </a> : ''}
              </li>
              })}
            </ul>
          </div>
        </div>
        </div>
    );
  }

  render() {
    const { menuItem, pageLoading } = this.props
      return (
        pageLoading == false ? this.handleTopMenu() : ''
      );
  }
}

//export default TopMenu;

const mapStateToProps = state => ({
  itemPerRow: state.blog.itemPerRow,
  blogLoading: state.blog.blogLoading,
  pageLoading: state.page.pageLoading,
  page: state.page.item,
});

const mapDispatchToProps = dispatch => ({
  getBlog: (type, offset) => { dispatch(getBlog(type, offset)) },
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TopMenu));