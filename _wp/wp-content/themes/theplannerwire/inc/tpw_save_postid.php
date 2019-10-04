<?php
/**
 * Get random posts for each category
 *
 * @param none
 * @return endpoint returns a WordPress Rest API Endpoint
 * @since 0.1.8
 */

function tpw_save_user_post() {

  $user_click_post_id = $_GET['dataid'];
  $del_post = $_GET['postdel'];
  $user_name = $_GET['username'];
  $users = get_user_by('login', $user_name);
  if( !empty($users) ){

    foreach ($users as $key => $user) { 
      $user_details = new stdClass();
      $user_details->id = $user->ID;
      $user_details->user_login = $user->user_login;
      $user_details->user_nicename = $user->user_nicename;
      $user_details->user_email = $user->user_email;
      $user_details->savepost_id = $user_click_post_id;

      if ( $user_click_post_id ) {

        global $wpdb;

        $tablename = $wpdb->prefix.'custom_savepost_id';

        $exists = $wpdb->get_var( $wpdb->prepare(
            "SELECT COUNT(*) FROM $tablename WHERE user_id = %d AND save_post_id = %d",  $user_details->id , $user_click_post_id
        ) );

        if ( ! $exists ) {
            $wpdb->query( 
              $wpdb->insert( $tablename, array(
                'id' => '', 
                'user_id' => $user_details->id,
                'save_post_id' => $user_click_post_id, 
             ),
                array( '%d', '%d', '%d') 
              ) 
            );
        }

        if ( $del_post && $del_post == 'true' ){

          $wpdb->query(
              'DELETE  FROM '.$tablename.'
               WHERE user_id = "'.$user_details->id.'" AND  save_post_id =  "'.$user_click_post_id.'" '
          );

        }
        
      }

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
  register_rest_route( 'tpw-rest-endpoints/v1', '/savepost', array(
      'methods' => 'POST',
      'callback' => 'tpw_save_user_post'
  ));
});