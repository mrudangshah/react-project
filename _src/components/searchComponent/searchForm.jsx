import React, {Component} from 'react';
import {withRouter} from 'react-router-dom';
import $ from 'jquery';
class SearchForm extends Component {
  constructor(props) {
    super(props);
    this.state = { 
      results : [], 
    };
  }
  
  componentDidMount() {
    if ( this.props.isSearch) {
        this.searchInput.focus();
        const tempValue = this.props.searchTerm;
        this.searchInput.value = '';
        this.searchInput.value = tempValue;
    }
  }

  handleSearch(event) {
    this.setState({results: event.target.value});
  }

  submit(event) {
    event.preventDefault();
    const searchTerm = this.state.results;
    $('#search_cnt .search_tab ul li.active').removeClass('active');
    $('#search_cnt .search_tab ul li:first').addClass('active');
    $(".search_desk").slideUp();
    $(".custom_nav .inner_navbar").removeClass("search_open");
    if ( searchTerm ) {
        this.props.history.push(`/search/${searchTerm}`);
    } else {
        this.props.history.push('/');
    }
  }

  render() {
    return (
      <div className="container">
      <div className="inner_search"> <span className="close_search"></span>
        <h2>Search</h2>
        <div className="desk_searchbox">
        <form onSubmit={this.submit.bind(this)} className="search-form">
          <input type="search"
                 value={this.props.searchTerm}
                 ref={(input) => this.searchInput = input}
                 onChange={this.handleSearch.bind(this)}
                 className="search_input"
                 placeholder="Username or Search Term"
                 title="Search" />
            <button className="search_btn" ><i className="fa fa-search" aria-hidden="true"></i></button>
        </form>
        </div>
      </div>
      </div>
    )
  }

}
export default withRouter(SearchForm);