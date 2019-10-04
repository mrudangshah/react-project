import React, {Component} from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import {tpwConfig} from './../../config';
import { IMAGE } from './../../constants/image';

var HtmlToReactParser = require("html-to-react").Parser;
const siteurl = tpwConfig.API_URL;
var htmlToReactParser = new HtmlToReactParser();

class AccountLast extends Component {
    constructor(props) {
        super(props);

        this.state = {}
    }

    componentWillMount() {}

    render() {    

        return (
            <section id="user_login" className="lastpage">
                <div className="close_btn">
                    <Link to={tpwConfig.HOME_PAGE} className="trans" title="Close">
                        <ion-icon name="close" />
                    </Link>
                </div>

                <div className="container">
                    <div className="inner_userlogin">
                        <div className="signin_block">
                            <div className="logo">
                                <img src={siteurl + IMAGE.logoWhite} alt="" />
                            </div>
                            <h1>{`You’re all set!`}</h1>
                            <p>{htmlToReactParser.parse(
                                  `Your new account is ready<br> to go. Click below to start<br> your journey.`
                                )}</p>
                            <div className="btn_block" >
                                <Link to={tpwConfig.HOME_PAGE} className="trans white_bg">{`EXPLORE`}</Link>
                            </div>
                        </div>
                    </div>
                </div>
            </section>   
        )
      }
}

export default connect(null, null)(AccountLast);