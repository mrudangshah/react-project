import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Redirect } from 'react-router-dom';
import { tpwConfig } from './../../config';
import { LoginAction } from './../../actions/user/userAction';
import { IMAGE } from './../../constants/image';
import Alert from 'react-bootstrap/Alert'
import { Formik, Form, Field, ErrorMessage } from 'formik';
import * as Yup from 'yup';

const siteurl = tpwConfig.API_URL;
var HtmlToReactParser = require('html-to-react').Parser;

const LoginSchema = Yup.object().shape({
  username: Yup.string()
    .min(3, 'Too Short!')
    .max(50, 'Too Long!')
    .required('Required'),
  email: Yup.string()
    .email('Invalid email')
    .required('Required'),
  password: Yup.string()
    .min(8, 'Too Short!')
    .max(13, 'Too Long!')
    .required('Required'),
});


class Login extends Component {
  constructor() {
    super();
    this.state = {
      loginData: {
        username: '',
        password: '',
      }
    };
    this.handleLogin = this.handleLogin.bind(this);
  }

  /**REDIRECT THE HOME IF THE USER IS LOGGED IN**/
  authView() {
    let is_Auth = this.props.isAuthenticated;
    if (is_Auth === true) {
      //this.props.route.history.push(tpwConfig.HOME_PAGE);
      return <Redirect to={tpwConfig.HOME_PAGE} />
    } else {
      return this.loginView();
    }
  }

  handleLogin(event) {
    let that = this;
    const { LoginAction } = that.props;
    event.preventDefault();

    const data = new FormData(event.target);

    let loginInput = {
      username: data.get('username'),
      password: data.get('password'),
    }

    that.setState({
      loginData: loginInput,
    })

    LoginAction(loginInput)
  }

  loginView = () => {
    var htmlToReactParser = new HtmlToReactParser();
    return (
      <section id="user_login">
        <div className="close_btn"><a href={'/'} className="trans" title="Close"><ion-icon name="close"></ion-icon></a></div>
        <div className="container">
          <div className="inner_userlogin">
            <div className="signin_block">
              <div className="logo"><img src={siteurl + IMAGE.logoWhite} alt="" /></div>
              <h1>WELCOME!</h1>
              <Formik
                initialValues={{
                  username: '',
                  email: '',
                  password: ''
                }}
                validationSchema={LoginSchema}
                render={() => {
                  return (
                    <Form onSubmit={this.handleLogin}>
                      <ul>
                        <li>
                          <div className="custom_group">
                            <Field type="text" name="username" className="trans login_input" title="Username" placeholder="Username" />
                            <ErrorMessage name="username" />
                          </div>
                        </li>
                        <li>
                          <div className="custom_group">
                            <Field type="password" name="password" className="trans login_input" title="Password" placeholder="Password" />
                            <ErrorMessage name="password" />
                          </div>
                        </li>
                        <li className="sbt_btn" >
                          <button className="trans white_bg" title="LOG IN" >LOG IN</button>
                        </li>
                        <li>
                          <div className="custom_group">
                            <p>Don’t have an account yet? <a href={'/user/signup'} className="trans" title="Sign Up">Sign Up</a>.</p>
                            {this.props.message.isValid === false &&
                              <Alert variant="warning">{htmlToReactParser.parse(this.props.message.error)}</Alert>
                            }
                          </div>
                        </li>
                      </ul>
                    </Form>
                  );
                }}
              />
              <p className="forgot_psswd" ><a href="#!" className="trans" title="Forgot your password?">Forgot your password?</a></p>
            </div>
          </div>
        </div>
      </section>
    );
  }

  render() {
    return (
      <div>{this.authView()}</div>
    )
  }

}

const mapStateToProps = (state) => {
  return {
    isAuthenticated: state.authentication.isAuthenticated,
    message: state.authentication
  };
}

const mapDispatchToProps = dispatch => ({
  LoginAction: (loginInput) => { dispatch(LoginAction(loginInput)) },
})
export default connect(mapStateToProps, mapDispatchToProps)(Login);