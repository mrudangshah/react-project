import React, {Component} from 'react';
import { connect } from "react-redux";
import FooterMenu from './parts/FooterMenu';
import { TPW } from './../constants';
import { tpwConfig } from './../config';


class Footer extends Component {
  
  render() {
    const { page, pageLoading } = this.props;
    return (
      <footer id="footer">
        <div className="main_footer">
          <div className="container">
              <div className="inner_mainfooter">
                <div className="leftbar_footer">
                	<h4 className="news_title">Newsletter</h4>
                	<div className="newslatter">
                  {/* newsletter */}
                  <form method="post" action={tpwConfig.API_URL+"?na=s"}> <input type="hidden" name="nlang" value="" /> <input type="hidden" name="nr" value="page" /> <input className="news_input tnp-email" type="email" name="ne" placeholder="Email Address" required /><input className="news_btn trans tnp-submit" type="submit" value="SUBSCRIBE" /></form>
                  </div>
                  <p>Get the latest planner news, events and<br></br>more delivered right to your inbox.</p>
                </div>
                <div className="right_footer">
                  <div className="footer_nav">
                    <FooterMenu />
                    <ul className="social-icons">
                    <li><a href={pageLoading === false ? page.acf.instagram_url : TPW.INSTAGRAM_LINK} target="_blank" className="trans" title="Instagram" rel="noopener noreferrer"><i className="fab fa-instagram"></i></a></li>
                    <li><a href={pageLoading === false ? page.acf.facebook_url : TPW.FACEBOOK_LINK} target="_blank" className="trans" title="Facebook" rel="noopener noreferrer"><i className="fab fa-facebook-square"></i></a></li>
                    </ul>
                    </div>
                </div>
              </div>
            </div>
          </div>
          <div className="end_footer">
            <div className="container">
                <div className="inner_endfooter">
                    <ul>
                      <li>&copy; The Planner Wire</li>
                      <li><a href="https://javascript:void(0);" className="trans" title="Terms of use">Terms of use</a></li>
                      <li><a href="https://javascript:void(0);" className="trans" title="Privacy Policy">Privacy Policy</a></li>
                    </ul>
                </div>
              </div>
          </div>
      </footer>
    );
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
)(Footer);

//export default Footer;