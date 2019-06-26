<?php
/**
 * Save user in user table
 *
 * @param none
 * @return endpoint returns a WordPress Rest API Endpoint
 * @since 0.1.8
 */

function tpw_save_user(WP_REST_Request $request) {
	
  $user_login   =   $request->get_param('username');
  $user_pass    =   $request->get_param('userpass');
  $user_email   =   $request->get_param('useremail');
  $date_time 	  = 	date("Y-m-d g:i:s");
  
  if( !empty($user_login) && !empty($user_pass) && !empty($user_email) ){
    
        global $wpdb;

        $tablename = $wpdb->prefix.'users';

        $exists = $wpdb->get_var( $wpdb->prepare(
            "SELECT COUNT(*) FROM $tablename WHERE user_login = %s OR user_email = %s",  $user_login , $user_email
        ) );

        $status = ! $exists ? true: false;

        $user_md5_pass = md5($user_pass);

        if ( ! $exists ) {
            $wpdb->query( 
              $wpdb->insert( $tablename, array(
                'user_login'  		=> $user_login,
                'user_pass'   		=> $user_md5_pass, 
                'user_email'  		=> $user_email,
                'user_registered'	=> $date_time,
             ),
                array( '%s', '%s' ,'%s', '%s') 
              ) 
              
            );
            
            $user_details = new stdClass();
            $user_details->status = $status;
            $user_details->id = $wpdb->insert_id;
            $user_details->user_login = $user_login;
            $user_details->user_pass = md5($user_pass);
            $user_details->user_email = $user_email;
            $user_details->user_registered = $date_time;

        
        } else {
     
           return new WP_Error( 'error', 'User is not created. Username or Email is alredy exisit please enter another one.', array( 'main_status' => $status, 'status' => 403  ) );
        } 

       return $user_details;
    
  } elseif ( empty($user_login) ) {

    return new WP_Error( 'empty_username', '<strong>ERROR</strong>: The username field is empty.', array( 'status' => 403  ) );


  } elseif ( empty($user_pass) ) {

    return new WP_Error( 'empty_password', '<strong>ERROR</strong>: The password field is empty.', array( 'status' => 403  ) );

  } else {

    return new WP_Error( 'empty_email', '<strong>ERROR</strong>: The Email field is empty', array( 'status' => 403  ) );

  }

  return $user_details;


}
/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', function () {
  register_rest_route( 'tpw-rest-endpoints/v1', '/saveuser', array(
      'methods' => 'POST',
      'callback' => 'tpw_save_user'
  ));
});
