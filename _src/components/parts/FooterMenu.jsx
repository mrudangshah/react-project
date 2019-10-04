import React, {Component} from 'react';
import { connect } from "react-redux";
import {Link} from 'react-router-dom';

class FooterMenu extends Component {
  constructor(props){
    super(props);
    this.state = {
    };
  }
  componentDidMount () {
    
  }

  handleMenu = () => {
    const { page } = this.props;
    let footer_menu = page.footerMenu;
    return (
      footer_menu.map((item,index) => {
        return (
          <ul key={index}>
            <li className={item.classes}>
              <Link to={item.slug}>{item.title}</Link>
            </li>
          </ul>
        )
      })
    );
  }

  render() {
    const { pageLoading } = this.props;
    return (pageLoading === false ? this.handleMenu() : '');
  }
}

const mapStateToProps = state => {
  return {
    page: state.page.item,
    pageLoading: state.page.pageLoading
  };
};

export default connect(
  mapStateToProps,
  null
)(FooterMenu);

//export default FooterMenu;
