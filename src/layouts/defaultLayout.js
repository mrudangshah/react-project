import React, { Component } from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import Header from './../components/Header';
import Footer from './../components/Footer';

class DefaultLayout extends Component {
    render() {
        const Component = this.props.component;
        const route = this.props.route;
        const { loading } = this.props;
        
        return (
            <div className="wrapper">
                <Header route={route}/>
                <Component route={route}/>
                <Footer />
                { loading ? <div className="loading">Loading&#8230;</div> : '' }
            </div>
        );
    }
}

const mapStateToProps = state => ({
    loading: state.page.loading
});

export default withRouter(connect(mapStateToProps, null)(DefaultLayout));