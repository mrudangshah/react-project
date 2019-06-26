import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import {IMAGE} from '../constants/image';
import {tpwConfig} from '../config';

const siteurl = tpwConfig.API_URL;
const buttonStyle = {
  textAlign: 'center',
  background: '#0071a0',
  fontsize: '14px',
  lineHeight: 'normal',
  color: '#ffffff',
  fontWeight: '400',
  cursor: 'pointer',
}
const buttonDiv = {
  paddingBottom: '20px',
}

export default class NotFound extends Component {

  render() {
    return (
      <div className="justify-content-center">
        <div className="col-md-12 text-center">
          <img src={siteurl+IMAGE.page_not_found} alt="" />
        </div>
        <div className="col-md-12 text-center" style={buttonDiv} >
          <Link to="/" className="btn btn-primary btn-lg" style={buttonStyle} >
            Back to Home
          </Link>
        </div>
      </div>
    );
  }
}