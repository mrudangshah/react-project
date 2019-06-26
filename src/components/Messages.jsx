import React, {Component} from 'react';
import {tpwConfig} from '../config';
import 'react-loading-bar/dist/index.css';

const siteurl = tpwConfig.API_URL;
const messagesAPI = '/wp/wp-json/buddypress/v1/messages';

class Messages extends Component{
  constructor(props){
    super(props);
    this.state = {
      messagesData: []
    }
  }

  componentDidMount(){
    //console.log(endUsername + password );

    let that = this;
    fetch(siteurl + messagesAPI , {
      method:'GET',
      headers: { "Content-Type": "application/json" },
      credentials: "same-origin" })
      .then(function(response) { return response.json(); })
      .then(function(jsonData) {
        return JSON.stringify(jsonData);
      })
      .then(function(jsonStr) {
        console.log(JSON.stringify(jsonStr));
        that.setState({ messagesData: JSON.stringify(jsonStr) });
    });
  }

  getMessagesView = () => {
    return <div className="container">
      <div className="scroll-wrapper scroller scrollbar-inner">
        <div className="scroller scrollbar-inner scroll-content scroll-scrolly_visible" >
        <div className="threads-list">
        { this.state.messagesData.map((item) => { 
         return <div className="thread " data-id="1" data-message="8" data-href="http://172.10.29.111/reacttpw/wp/members/admin/bp-messages/?thread_id=1"> 
          <div className="imgbox "> 
            <a href="http://172.10.29.111/reacttpw/wp/members/johnbasic/">
            <span className="avatar bbpm-avatar" data-user-id="27" >
            <img src="http://172.10.29.111/reacttpw/wp/wp-content/uploads/2019/04/defaultavatar.svg" width="" height="" alt="Avatar" className="absoImg" data-user-id="27" />
            </span></a> 
          </div> 
          <div className="info"> 
            <h4 className="name">John Basic</h4> 
            <h4>Test Message</h4> 
            <p>Three Images... </p> 
          </div> 
        </div>
        })
        }
        </div>
        </div>
      </div>
    </div>
  }

  render() {
    return (
      this.getMessagesView()
    );
  }

}
export default Messages;