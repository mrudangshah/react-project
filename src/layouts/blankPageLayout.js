import React, { Component } from 'react';

export default class WithoutMenu extends Component {
    render() {
        const Component = this.props.component;
        const route = this.props.route;
        return (
            <div className="wrapper">
                <Component route={route}/>
            </div>
        );
    }
}