<?php 
/**
 * Get UserId
 *
 * @param none
 * @return endpoint returns a WordPress Rest API Endpoint
 * @since 0.1.8
 */
function tpw_get_user_id(){

  global $wpdb;

  $user_name = $_GET['username'];
  
  $users = get_user_by('login', $user_name);

  if( !empty($users) ){

    foreach ($users as $key => $user) { 
      $user_details = new stdClass();
      $user_details->id = $user->ID;

      $tablename = $wpdb->prefix.'fav_user';

      $prepared_statement = $wpdb->prepare( 'SELECT `fav_user_id` FROM ' . $tablename . ' WHERE  user_id = %d', $user->ID );
      $fav_user_id = $wpdb->get_col( $prepared_statement ); 


      $user_details->user_login = $user->user_login;
      $user_details->user_nicename = $user->user_nicename;
      $user_details->user_email = $user->user_email;
      $user_details->fav_user_id = $fav_user_id;
      return $user_details;
    }
  }

}
/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', function () {
	register_rest_route( 'tpw-rest-endpoints/v1', '/userid', array(
			'methods' => 'GET',
			'callback' => 'tpw_get_user_id'
	));
});
?>