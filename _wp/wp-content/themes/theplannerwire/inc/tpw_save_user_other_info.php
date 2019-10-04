<?php
/**
 * Save user in user table
 *
 * @param none
 * @return endpoint returns a WordPress Rest API Endpoint
 * @since 0.1.8
 */
header("Access-Control-Allow-Origin: *");
function tpw_save_user_other_info( WP_REST_Request $request ) {

  $user_id  = $request->get_param('userid');
  
  /*profile Image*/
  
  $wordpress_upload_dir = wp_upload_dir();
        
  $i = 1; // number of tries when the file with the same name is already exists

  $profilepicture = $request->get_file_params();
 

  /* Personal Infroamtion */
  $name               = $request->get_param('name');
  $display_name       = $request->get_param('display_name');
  $bio                = $request->get_param('bio');
  $phone              = $request->get_param('phone');
  $gender             = $request->get_param('gender');
  $birthdate          = $request->get_param('birthdate');
  $street_address     = $request->get_param('street_address');
  $apt_unit_suite     = $request->get_param('apt_unit_suite');
  $location           = $request->get_param('location');
  $city               = $request->get_param('city');
  $state              = $request->get_param('state');
  $zip                = $request->get_param('zip');

  /* Additional Networks Infroamtion */
  $website            = $request->get_param('website');
  $youtube            = $request->get_param('youtube');
  $instagram          = $request->get_param('instagram');
  $facebook           = $request->get_param('facebook');
  $twitter            = $request->get_param('twitter');
  $pinterest          = $request->get_param('pinterest');
  $whatsapp           = $request->get_param('whatsapp');
  $etsy               = $request->get_param('etsy');

  /* Payment Information */
  $cardnumber         = $request->get_param('cardnumber');
  $expirationdate     = $request->get_param('expirationdate');
  $ccv_cvv            = $request->get_param('ccv_cvv');
  $name_on_card       = $request->get_param('name_on_card');

  
  if( !empty($user_id) ){

    global $wpdb;

        $tablename = $wpdb->prefix.'users';

        $exists = $wpdb->get_var( $wpdb->prepare(
            "SELECT COUNT(*) FROM $tablename WHERE ID = %d",  $user_id
        ) );

        $status = $exists ? true: false;

        if ( $exists ) {

              $wpdb->update( 
              $tablename, 
              array( 
                'user_nicename' => $name,  
                'display_name' => $display_name, 
              ), 
              array( 'ID' => $user_id ), 
              array( 
                '%s', // value1
                '%s'  // value2
              ), 
              array( '%d' ) 
            );

           
            /* Add profile picture */
            $new_file_path = $wordpress_upload_dir['path'] . '/' . $profilepicture['imgearray']['name'];
            $new_file_mime = mime_content_type( $profilepicture['profile_image']['tmp_name'] );
            
            if( empty( $profilepicture ) )
              die( 'File is not selected.' );

            if( $profilepicture['profile_image']['error'] )
              die( $profilepicture['profile_image']['error'] );
             
            if( $profilepicture['profile_image']['size'] > wp_max_upload_size() )
              die( 'It is too large than expected.' );
             
            while( file_exists( $new_file_path ) ) {
              $i++;
              $new_file_path = $wordpress_upload_dir['path'] . '/' . $i . '_' . $profilepicture['imgearray']['name'];
            }
            
            // looks like everything is OK
            if( move_uploaded_file( $profilepicture['profile_image']['tmp_name'], $new_file_path ) ) {
             
             
              $upload_id = wp_insert_attachment( array(
                'guid'           => $new_file_path, 
                'post_mime_type' => $new_file_mime,
                'post_title'     => preg_replace( '/\.[^.]+$/', '', $profilepicture['imgearray']['name']),
                'post_content'   => '',
                'post_status'    => 'inherit'
              ), $new_file_path );
             
              // wp_generate_attachment_metadata() won't work if you do not include this file
              require_once( ABSPATH . 'wp-admin/includes/image.php' );
             
              // Generate and save the attachment metas into the database
              wp_update_attachment_metadata( $upload_id, wp_generate_attachment_metadata( $upload_id, $new_file_path ) );

              $attachment_url = $wordpress_upload_dir['url'] . '/' . basename( $new_file_path );

            }

            update_user_meta($user_id, $wpdb->get_blog_prefix() . 'user_avatar', $upload_id);
            /*Add profile picture */

            /* Add All Personal Infroamtion */
            update_user_meta( $user_id, 'nickname', $name);
            update_user_meta( $user_id, 'description', $bio);
            update_user_meta( $user_id, 'phone', $phone);
            update_user_meta( $user_id, 'gender', $gender);
            update_user_meta( $user_id, 'birthdate', $birthdate);
            update_user_meta( $user_id, 'street_address', $street_address);
            update_user_meta( $user_id, 'apt_unit_suite', $apt_unit_suite);
            update_user_meta( $user_id, 'location', $location);
            update_user_meta( $user_id, 'city', $city);
            update_user_meta( $user_id, 'state', $state);
            update_user_meta( $user_id, 'zip', $zip);

            /* Add All Additional Networks Information */
            update_user_meta( $user_id, 'website', $website);
            update_user_meta( $user_id, 'youtube', $youtube);
            update_user_meta( $user_id, 'instagram', $instagram);
            update_user_meta( $user_id, 'facebook', $facebook);
            update_user_meta( $user_id, 'twitter', $twitter);
            update_user_meta( $user_id, 'pinterest', $pinterest);
            update_user_meta( $user_id, 'whatsapp', $whatsapp);
            update_user_meta( $user_id, 'etsy', $etsy);

            /* Add All Payment Information */
            update_user_meta( $user_id, 'cardnumber', $cardnumber);
            update_user_meta( $user_id, 'expirationdate', $expirationdate);
            update_user_meta( $user_id, 'ccv_cvv', $ccv_cvv);
            update_user_meta( $user_id, 'name_on_card', $name_on_card);

            $user_details = new stdClass();

            $wp_user_object = new WP_User($user_id);
            $wp_user_object->set_role('subscribernew');
            $user_meta = get_userdata($user_id);

            $user_details->status = $status;
            $user_details->id   = $user_id;
            $user_details->attachment_id = $upload_id;
            $user_details->avatar_url = $attachment_url;
            $user_details->user_nicename = $name;
            $user_details->display_name  = $display_name;
            $user_details->nickname = $name;
            $user_details->role = $user_meta->roles;
            $user_details->bio = $bio;
            $user_details->phone = $phone;
            $user_details->gender = $gender;
            $user_details->birthdate = $birthdate;
            $user_details->street_address = $street_address;
            $user_details->apt_unit_suite = $apt_unit_suite;
            $user_details->location = $location;
            $user_details->city = $city;
            $user_details->state = $state;
            $user_details->zip = $zip;
            $user_details->website = $website;
            $user_details->youtube = $youtube;
            $user_details->instagram = $instagram;
            $user_details->facebook = $facebook;
            $user_details->twitter = $twitter;
            $user_details->pinterest = $pinterest;
            $user_details->whatsapp = $whatsapp;
            $user_details->etsy = $etsy;
            $user_details->cardnumber = $cardnumber;
            $user_details->expirationdate = $expirationdate;
            $user_details->ccv_cvv = $ccv_cvv;
            $user_details->name_on_card = $name_on_card;

        
        } else {

            /*profile Image*/
            delete_user_meta($user_id, $wpdb->get_blog_prefix() . 'user_avatar', $attachment_id);

            /* Add All Personal Infroamtion */
            delete_user_meta( $user_id, 'nickname', $name);
            delete_user_meta( $user_id, 'description', $bio);
            delete_user_meta( $user_id, 'phone', $phone);
            delete_user_meta( $user_id, 'gender', $gender);
            delete_user_meta( $user_id, 'birthdate', $birthdate);
            delete_user_meta( $user_id, 'street_address', $street_address);
            delete_user_meta( $user_id, 'apt_unit_suite', $apt_unit_suite);
            delete_user_meta( $user_id, 'location', $location);
            delete_user_meta( $user_id, 'city', $city);
            delete_user_meta( $user_id, 'state', $state);
            delete_user_meta( $user_id, 'zip', $zip);

            /* Add All Additional Networks Information */
            delete_user_meta( $user_id, 'website', $website);
            delete_user_meta( $user_id, 'youtube', $youtube);
            delete_user_meta( $user_id, 'instagram', $instagram);
            delete_user_meta( $user_id, 'facebook', $facebook);
            delete_user_meta( $user_id, 'twitter', $twitter);
            delete_user_meta( $user_id, 'pinterest', $pinterest);
            delete_user_meta( $user_id, 'whatsapp', $whatsapp);
            delete_user_meta( $user_id, 'etsy', $etsy);

            /* Add All Payment Information */
            delete_user_meta( $user_id, 'cardnumber', $cardnumber);
            delete_user_meta( $user_id, 'expirationdate', $expirationdate);
            delete_user_meta( $user_id, 'ccv_cvv', $ccv_cvv);
            delete_user_meta( $user_id, 'name_on_card', $name_on_card);
            delete_user_meta( $user_id, 'wp_capabilities');
            delete_user_meta( $user_id, 'wp_user_level');

            return new WP_Error( 'error', 'User Information was not updated. User is not exisit.', array( 'main_status' => $status, 'status' => 403  ) );

        } 

       return $user_details;

  }

}
/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', function () {
  register_rest_route( 'tpw-rest-endpoints/v1', '/save_user_other_info', array(
      'methods' => 'POST',
      'callback' => 'tpw_save_user_other_info'
  ));
});