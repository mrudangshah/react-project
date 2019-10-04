import React from 'react';
import { IMAGE } from '../constants/image';
import { tpwConfig } from '../config';

const siteurl = tpwConfig.API_URL;

export default function Placeholder() {
  return (
    <div className="placeholder">
      <div className="spinner">
        <img src={ siteurl+IMAGE.loading } alt="loader"/>
      </div>
    </div>
  );
}