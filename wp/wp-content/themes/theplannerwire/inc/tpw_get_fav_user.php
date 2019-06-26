<?php
/**
 * Get Save fav user id and list the users
 *
 * @param none
 * @return endpoint returns a WordPress Rest API Endpoint
 * @since 0.1.8
 */

function tpw_get_save_fav_user_id( WP_REST_Request $request) {

  	$user_id = $_GET['userid'];

  	if( !empty($user_id) ){
    
    	global $wpdb;
    
    	$tablename = $wpdb->prefix.'fav_user';

    	$prepared_statement = $wpdb->prepare( 'SELECT `fav_user_id` FROM ' . $tablename . ' WHERE  user_id = %d', $user_id );
    	$fav_user_id_values = $wpdb->get_col( $prepared_statement ); 

    	$listuser_details = array();

    	if ( !empty($fav_user_id_values) ) {

	      	$args = array(
				'include' => $fav_user_id_values,
			);

			// The Query
			$user_query = new WP_User_Query( $args );
			$all_record = $user_query->get_results();

			foreach (  $all_record as $user ) {

				$listuser_detail = new stdClass();
				$user_meta = get_userdata($user->ID);

				$listuser_detail->id = $user->ID;
				$listuser_detail->user_name = $user->user_login;
				$listuser_detail->avatar_url = get_avatar_url($user->ID);
				$listuser_detail->role = $user_meta->roles;
				$listuser_detail->display_name = $user->display_name;
				$listuser_detail->description = $user_meta->description;
				
            	array_push($listuser_details, $listuser_detail);
			}
    	}
	}

	$response = rest_ensure_response( $listuser_details );
    return $response;
}


/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', function () {
  register_rest_route( 'tpw-rest-endpoints/v1', '/listfavuser', array(
      'methods' => 'GET',
      'callback' => 'tpw_get_save_fav_user_id',
  ));
});