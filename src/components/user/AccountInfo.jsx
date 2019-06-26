import React, {Component} from 'react';
import { connect } from 'react-redux';
import { Redirect } from 'react-router-dom';
import { tpwConfig } from './../../config';
import { IMAGE } from './../../constants/image';
import { TPW } from './../../constants/index';
import { AccountAction } from '../../actions/user/accountAction';
import { CheckNewUser } from '../../actions/user/signupAction';
import { Formik, Form, Field, ErrorMessage } from 'formik';
import * as Yup from 'yup';

const siteurl = tpwConfig.API_URL;
const phoneRegExp = /^((\\+[1-9]{1,4}[ \\-]*)|(\\([0-9]{2,3}\\)[ \\-]*)|([0-9]{2,4})[ \\-]*)*?[0-9]{3,4}?[ \\-]*[0-9]{3,4}?$/
const dateRegex = /^([0-9]{2})\/([0-9]{2})\/([0-9]{4})$/
const accountInfoSchema = Yup.object().shape({
  name: Yup.string()
    .min(3, 'Too Short!')
    .required('Name is Required'),
  phone: Yup.string()
    .matches(phoneRegExp, 'Phone number not valid'),
  bio: Yup.string()
  .max(150, 'Input reached to the maximum value'),
  email: Yup.string()
    .email('Invalid email')
    .required('Required'),
  birthdate: Yup.string().matches(dateRegex,'Invalid Date')
});

class AccountInfo extends Component {
  constructor(props) {
    super(props) 
    
    this.state = {
      currentStep: 1,
      userAccountData: {},
      step_visiblity: true
    }
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillMount() {
    const { CheckNewUser } = this.props
    CheckNewUser();
  }

  authView() {
    let is_Auth = this.props.isRegistered;
    if(is_Auth === true){
     return <Redirect to={TPW.ACCOUNT_LAST} />
    } else{
      return this.AccountInfoView();
    }
  }

  handleFileUpload = (event) => {
    this.setState({profileThumb: event.currentTarget.files[0]})
  };
  
  handleSubmit = event => {
    let that = this;
    const { AccountAction } = that.props;
    event.preventDefault();
    const data = new FormData(event.target);
    that.setState({userAccountData: data})
    AccountAction(data)
  }

  _next = () => {
    let currentStep = this.state.currentStep
    currentStep = currentStep >= 2 ? 3: currentStep + 1
    this.setState({
      currentStep: currentStep
    })
  }

  _prev = () => {
    let currentStep = this.state.currentStep
    currentStep = currentStep <= 1? 1: currentStep - 1
    this.setState({
      currentStep: currentStep
    })
  }

  _back = () => {
    let currentStep = this.state.currentStep
    currentStep = currentStep >= 2 ? currentStep - 1 : 3
    this.setState({
      currentStep: currentStep
    })
  }

  _skip = () => {
    localStorage.removeItem('new_user'); //Remove the new_user on the skip of page
    this.props.route.history.push(TPW.ACCOUNT_LAST);
  }

  AccountInfoView = () => {
    const {userData} = this.props

    return (
      <section id="account_sec" className="second_form">
      <div className="container">
      <React.Fragment>
        <Formik
          //initialValues={{name:'', email: '', phone: '', bio: '' }}
          //validationSchema={accountInfoSchema}
          render={() => {
          return(
        <Form onSubmit={this.handleSubmit} name="frm_account_registration" id="frm_account_registration">
        <input type="hidden" name="userid" value={userData.id} />
        <Step1 
          {...this.state}
          {...this.props}
          handleFileUpload={this.handleFileUpload} 
          _next = {this._next}
          _skip = {this._skip}
         />
        <Step2 
          {...this.state}
          _back = {this._back}
          _next = {this._next}
          _skip = {this._skip}
        />
        <Step3 
         {...this.state}
         _back = {this._back}
         _skip = {this._skip}
         handleSubmit = {this.handleSubmit}
         />
        </Form>
        );
      }}
      />
      </React.Fragment>
      </div>
    </section>
    )
  }

  render() {    

    return (
      <div>{this.authView()}</div>
    )
  }
}

function Step1(props)  {
  return(
    <React.Fragment>
    <div className={"inner_account " + (props.currentStep === 1 ? 'show' : 'hide')} id="step-1">
      <h2 className="accsec_title">Create your account</h2>
      <div className="upload">
          <label htmlFor="profile">
            <div className="imgbox">
              <img src={siteurl + IMAGE.trans_116} alt="" /> 
              { props.profileThumb ? <img src={props.profileThumb && URL.createObjectURL(props.profileThumb)} className="absoImg" alt="" /> : 
                <img src={siteurl + IMAGE.defaultAvatar } className="absoImg" alt="" /> }
            </div>
          </label>
          <input id="profile" name="profile_image" type="file" accept="image/*" onChange={props.handleFileUpload}/>
          <span className="guide_leb">Add your avatar</span>
        </div>
      <h3 className="form_title">Personal Information</h3>
      <div className="reg_form">
        <ul>
          <li>
            <div className="custom_group">
              <Field type="text" name="name" className="trans text_input" placeholder="Enter your name" />
              <label className="label_two">Name</label>
              <ErrorMessage name="name" />
            </div>
          </li>
          <li>
            <div className="custom_group">
              <Field type="text" name="display_name" className="trans text_input" placeholder="Enter display name" />
              <label className="label_two">Display Name</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="text" name="username" className="trans text_input" placeholder="Pick a username" value={props.userData.user_login} readOnly/>
              <label className="label_two">Username</label>
            </div>
          </li>
          <li>
            <div className="custom_group cutom_textarea">
              <textarea name="bio" className="trans text_input" placeholder="Tell us a little about yourself." ></textarea>
              <label className="label_two">Bio <span className="right_text">150</span></label>
              <ErrorMessage name="bio" />
            </div>
          </li>
          <li>
            <div className="custom_group">
              <Field type="text" name="location" className="trans text_input" placeholder="Where are you located?" />
              <label className="label_two">Location</label>
            </div>
            <div className="req">Location info is used to recommend events in your area.</div>
          </li>
          <li>
            <div className="custom_group">
              <input type="text" name="email" className="trans text_input" placeholder="laura.clark123@gmail.com" value={props.userData.user_email} readOnly/>
              <label className="label_two">Email</label>
              <ErrorMessage name="email" />
            </div>
            <div className="req">We’ve sent an email to the address above. Please click the link in the message to
              confirm. <a href="#!" className="trans" title="Resend Confirmation">Resend Confirmation</a>.</div>
          </li>
          <li>
            <div className="custom_group">
              <Field type="text" name="phone" className="trans text_input" placeholder="Enter your phone number" />
              <label className="label_two">Phone</label>
              <ErrorMessage name="phone" />
            </div>
          </li>
          <li>
            <div className="custom_group">
              <label className="label_two">Gender</label>
              <Field name="gender" component="select" className="trans text_input" placeholder="Gender Optional" >
                <option value="" label="Select a Gender" />
                <option value="male" label="Male" />
                <option value="female" label="Female" />
              </Field>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <Field type="text" name="birthdate" className="trans text_input" placeholder="Add your date of birth" />
              <label className="label_two">Birth Date</label>
              <ErrorMessage name="birthdate" />
            </div>
            <div className="req">The Planner Wire’s minimum age is 14 years old.</div>
          </li>
          {/* <li className="update_link">
            <div className="custom_group">
              <a href="#" className="trans" title="Update Password">Update Password <i className="fas fa-lock"></i></a>
            </div>
          </li> */}
          <li className="sbt_btn">
            	<div className="custom_group">
                <button className="trans next_btn" type="button" onClick={props._next}>
                  NEXT
                </button>
              </div>
          </li>

          <li className="close_link">
            <div className="custom_group">
                <button className="trans" title="Close" onClick={props._skip}>Close</button>
              </div>
          </li>
        </ul>

      </div>
      <div className="custom_pagination">
        <ul>
          <li><p className="trans active">1</p></li>
          <li><p className="trans">2</p></li>
          <li><p className="trans">3</p></li>
        </ul>
      </div>
    </div>
    </React.Fragment>
  );
}

function Step2(props) {
  return(
    <div className={"inner_account " + (props.currentStep === 2 ? 'show' : 'hide')} id="step-2">
      <h2 className="accsec_title">Add your other networks</h2>
      <p className="accsec_dscr">Connect The Planner Wire with your other social media accounts for<br></br> cross-network
        sharing and more.</p>
      <h3 className="form_title">Additional Networks</h3>
      <div className="reg_form">
        <ul>
          <li>
            <div className="custom_group">
              <input type="url" name="website" className="trans text_input" placeholder="Add your website" value={props.website} onChange={props.handleChange} />
              <label className="label_two">Website</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="url" name="youtube" className="trans text_input" placeholder="Add your YouTube channel" value={props.youtube} onChange={props.handleChange}/>
              <label className="label_two">YouTube</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="url" name="instagram" className="trans text_input" placeholder="Add your Instagram username" value={props.instagram} onChange={props.handleChange} />
              <label className="label_two">Instagram</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="url" name="facebook" className="trans text_input" placeholder="Add your Facebook username" value={props.facebook} onChange={props.handleChange} />
              <label className="label_two">Facebook</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="url" name="twitter" className="trans text_input" placeholder="Add your Twitter username" value={props.twitter} onChange={props.handleChange} />
              <label className="label_two">Twitter</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="url" name="pinterest" className="trans text_input" placeholder="Add your Pinterest username" value={props.pinterest} onChange={props.handleChange} />
              <label className="label_two">Pinterest</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="url" name="whatsapp" className="trans text_input" placeholder="Add your Whatsapp username" value={props.whatsapp} onChange={props.handleChange} />
              <label className="label_two">Whatsapp</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="url" name="etsy" className="trans text_input" placeholder="Add your Etsy shop" value={props.etsy} onChange={props.handleChange} />
              <label className="label_two">Etsy</label>
            </div>
          </li>

          <li className="stb_btn half">
            <div className="custom_group">
                <button className="trans back_btn" type="button" title="Back" onClick={props._back}>Back</button>
            </div>
          </li>

          <li className="stb_btn half">
            	<div className="custom_group">
                	<button className="trans next_btn" type="button" title="Next" onClick={props._next}>Next</button>
            	</div>            	
          </li>

          <li className="skip_link">
            <div className="custom_group">
                <button className="trans" title="Skip" onClick={props._skip}>Skip</button>
              </div>
          </li>

        </ul>
      </div>
      <div className="custom_pagination">
        <ul>
          <li><p className="trans">1</p></li>
          <li><p className="trans active">2</p></li>
          <li><p className="trans">3</p></li>
        </ul>
      </div>
    </div>
  );
}

function Step3(props) {
  return(
    <React.Fragment>
    <div className={"inner_account " + (props.currentStep === 3 ? 'show' : 'hide')} id="step-3">
      <h2 className="accsec_title">Add payment info</h2>
      <p className="accsec_dscr">Your payment info will be used to purchase event tickets and subscriptions.<br></br>
        Adding payment information is optional.</p>
      <h3 className="form_title">Payment Information</h3>
      <div className="reg_form">
        <ul>
          <li>
            <div className="custom_group">
              <input type="text" name="card_number" className="trans text_input" placeholder="Enter card number" value={props.card_number} onChange={props.handleChange} />
              <label className="label_two">Card Number</label>
            </div>
          </li>
          <li className="half">
            <div className="custom_group">
              <input type="text" name="expirationdate" className="trans text_input" placeholder="Expiration date" value={props.expirationdate} onChange={props.handleChange} />
              <label className="label_two">Expiration</label>
            </div>
          </li>
          <li className="half">
            <div className="custom_group">
              <input type="text" name="cvc_cvv" className="trans text_input" placeholder="Enter Code" value={props.cvc_cvv} onChange={props.handleChange} />
              <label className="label_two">CVC / CVV <span className="right_text">Where to find this</span></label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="text" name="name_on_card" className="trans text_input" placeholder="Laura Clark" value={props.name_on_card} onChange={props.handleChange} />
              <label className="label_two">Name on card</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="text" name="phone_number" className="trans text_input" placeholder="Enter your phone number" value={props.phone_number} onChange={props.handleChange} />
              <label className="label_two">Phone number</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="text" name="street_address" className="trans text_input" placeholder="Enter your street address" value={props.street_address} onChange={props.handleChange} />
              <label className="label_two">Street address</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="text" name="apt_unit_suite" className="trans text_input"
                placeholder="Apartment, unit or suite number (optional)" value={props.apt_unit_suite} onChange={props.handleChange} />
              <label className="label_two">Apt, Unit, Suite</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="text" name="city" className="trans text_input" placeholder="Enter your City" value={props.city} onChange={props.handleChange} />
              <label className="label_two">City</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="text" name="state" className="trans text_input" placeholder="Enter your State" value={props.state} onChange={props.handleChange} />
              <label className="label_two">State</label>
            </div>
          </li>
          <li>
            <div className="custom_group">
              <input type="text" name="zip" className="trans text_input" placeholder="Enter your ZIP code" value={props.zip} onChange={props.handleChange} />
              <label className="label_two">ZIP</label>
            </div>
          </li>

          <li className="stb_btn half">
            <div className="custom_group">
                <button className="trans back_btn" type="button" title="Back" onClick={props._back}>Back</button>
            </div>
          </li>

          <li className="stb_btn half">
            <div className="custom_group">
                <button className="trans next_btn" title="Finish" type="submit">FINISH</button>
            </div>            
          </li>

          <li className="skip_link">
            <div className="custom_group">
                <button className="trans" title="Skip" onClick={props._skip}>Skip</button>
              </div>
          </li>

        </ul>
      </div>
      <div className="custom_pagination">
        <ul>
          <li><p className="trans">1</p></li>
          <li><p className="trans">2</p></li>
          <li><p className="trans active">3</p></li>
        </ul>
      </div>
    </div>
    {/* <button className="btn btn-success btn-block">Sign up</button> */}
    </React.Fragment>
  );
}

const mapStateToProps = (state) => {
  return {
    isRegistered: state.accountInfo.isRegistered,
    userData: state.signup.user
  };
}

const mapDispatchToProps = dispatch => ({
  AccountAction: (accountInputs) => { dispatch(AccountAction(accountInputs)) },
  CheckNewUser: () => { dispatch(CheckNewUser()) }
})

export default connect(mapStateToProps, mapDispatchToProps)(AccountInfo);