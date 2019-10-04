import React, { Component } from "react";
import { connect } from "react-redux";
import { Redirect } from 'react-router-dom';
import { tpwConfig } from "./../../config";
import { SingupAction } from "./../../actions/user/signupAction";
import { IMAGE } from "./../../constants/image";
import { Formik, Form, Field, ErrorMessage } from "formik";
import * as Yup from "yup";
import Alert from "react-bootstrap/Alert";

const siteurl = tpwConfig.API_URL;
var HtmlToReactParser = require("html-to-react").Parser;

const SignupSchema = Yup.object().shape({
  username: Yup.string()
    .min(3, "Too Short!")
    .max(50, "Too Long!")
    .required("Required"),
  email: Yup.string()
    .email("Invalid email")
    .required("Required"),
  password: Yup.string()
    .min(8, "Too Short!")
    .max(13, "Too Long!")
    .required("Required")
});

class Signup extends Component {
  constructor(props) {
    super(props);
    this.state = {
      singupData: {
        username: "",
        email: "",
        password: "",
        errors: {}
      }
    };
    this.handleSignup = this.handleSignup.bind(this);
  }

  authView() {
    const { isRegistered, isValid } = this.props;

    if (isRegistered === true) {
      return <Redirect to="/user/signup/account" />
    } else if (isValid === false) {
      return this.signupView();
    } else {
      return this.signupView();
    }
  }

  handleSignup(event) {
    let that = this;
    const { SingupAction } = that.props;
    event.preventDefault();

    const data = new FormData(event.target);
    let signupInput = {
      username: data.get("username"),
      userpass: data.get("password"),
      useremail: data.get("email")
    };
    that.setState({
      singupData: signupInput
    });
    SingupAction(signupInput);
  }

  signupView = () => {
    var htmlToReactParser = new HtmlToReactParser();
    return (
      <section id="user_login">
        <div className="close_btn">
          <a href={"/"} className="trans" title="Close">
            <ion-icon name="close" />
          </a>
        </div>
        <div className="container">
          <div className="inner_userlogin">
            <div className="signin_block">
              <div className="logo">
                <img src={siteurl + IMAGE.logoWhite} alt="" />
              </div>
              <h1>Create your account</h1>
              <Formik
                initialValues={{
                  username: "",
                  email: "",
                  password: ""
                }}
                validationSchema={SignupSchema}
                render={() => {
                  return (
                    <Form onSubmit={this.handleSignup}>
                      <ul>
                        <li>
                          <div className="custom_group">
                            <Field
                              type="text"
                              name="username"
                              placeholder="Username"
                              className="trans login_input"
                            />
                            <ErrorMessage name="username" />
                          </div>
                        </li>
                        <li>
                          <div className="custom_group">
                            <Field
                              type="email"
                              name="email"
                              placeholder="Email address"
                              className="trans login_input"
                            />
                            <ErrorMessage name="email" />
                          </div>
                        </li>
                        <li>
                          <div className="custom_group">
                            <Field
                              name="password"
                              type="password"
                              placeholder="Set your password"
                              className="trans login_input"
                            />
                            <span className="req">Minimum 8 characters</span>
                            <ErrorMessage name="password" />
                          </div>
                        </li>
                        <li className="sbt_btn">
                          <button
                            type="submit"
                            className="trans white_bg"
                            disabled={!SignupSchema}
                          >
                            Sign Up
                          </button>
                        </li>
                        <li>
                          <div className="custom_group">
                            <p>
                              Already have an account?{" "}
                              <a
                                href={"/user/login"}
                                className="trans"
                                title="Sign In"
                              >
                                Sign In
                              </a>
                              .
                            </p>
                          </div>
                        </li>
                        {this.props.isValid === false && (
                          <li>
                            <div className="custom_group">
                              <Alert variant="warning">
                                {htmlToReactParser.parse(
                                  this.props.errorMessage
                                )}
                              </Alert>
                            </div>
                          </li>
                        )}
                      </ul>
                    </Form>
                  );
                }}
              />
            </div>
          </div>
        </div>
      </section>
    );
  };

  render() {
    return <div>{this.authView()}</div>;
  }
}

const mapStateToProps = state => {
  return {
    isRegistered: state.signup.isRegistered,
    isValid: state.signup.isValid,
    errorMessage: state.signup.error
  };
};

const mapDispatchToProps = dispatch => ({
  SingupAction: signupInput => {
    dispatch(SingupAction(signupInput));
  }
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Signup);
