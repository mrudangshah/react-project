<?php
/**
 * Save user messages in the DB
 *
 * @param none
 * @return endpoint returns a WordPress Rest API Endpoint
 * @since 0.1.8
 */

function tpw_save_user_message() {

	global $wpdb;

	$sender_id  = $_GET['sender_id'];
	$thread_id  = $_GET['thread_id'];
	$subject    = $_GET['subject'];
	$message    = $_GET['message'];
	$date_sent  = $_GET['date_sent'];
	$new_thread = false;

	// First insert the message into the messages table.
	$tablename = 'wp_bp_messages_messages';
	$wpdb->query( 
              $wpdb->insert( $tablename, array(
                'thread_id' => $thread_id,
                'sender_id' => $sender_id, 
                'subject' => $subject, 
                'message' => $message, 
                'date_sent' => $date_sent, 
             ),
                array( '%d', '%d', '%s', '%s', '%s') 
              ) 
            );

	$last_add_id =  $wpdb->insert_id;

	// If we have no thread_id then this is the first message of a new thread.
	if ( empty( $thread_id ) ) {
		$thread_id = (int) $wpdb->get_var( "SELECT MAX(thread_id) FROM 
			wp_bp_messages_messages " ) + 1;
		$new_thread      = true;
	}

	if ( $new_thread ) {
		// Add an recipient entry for all recipients.
		foreach ( (array) $this->recipients as $recipient ) {
			$wpdb->query( $wpdb->prepare( "INSERT INTO {$wpdb->base_prefix}bp_messages_recipients ( user_id, thread_id, unread_count ) VALUES ( %d, %d, 1 )", $recipient->user_id, $this->thread_id ) );
			$recipient_ids[] = $recipient->user_id;
		}

		// Add a sender recipient entry if the sender is not in the list of recipients.
		if ( ! in_array( $this->sender_id, $recipient_ids ) ) {
			$wpdb->query( $wpdb->prepare( "INSERT INTO {$wpdb->base_prefix}bp_messages_recipients ( user_id, thread_id, sender_only ) VALUES ( %d, %d, 1 )", $this->sender_id, $this->thread_id ) );
		}
	} else {
		// Update the unread count for all recipients.
		$wpdb->query( $wpdb->prepare( "UPDATE {$wpdb->base_prefix}bp_messages_recipients SET unread_count = unread_count + 1, sender_only = 0, is_deleted = 0 WHERE thread_id = %d AND user_id != %d", $this->thread_id, $this->sender_id ) );
	}

		messages_remove_callback_values();

	$message_details = new stdClass();
	$message_details->insert_data_id = $last_add_id;
	$message_details->sender_id = $sender_id;
	$message_details->thread_id = $thread_id;
	$message_details->subject = $subject;
	$message_details->message = $message;
	$message_details->date_sent = $date_sent;

       return $message_details;
    }

  
/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', function () {
  register_rest_route( 'tpw-rest-endpoints/v1', '/savemesage', array(
      'methods' => 'POST',
      'callback' => 'tpw_save_user_message'
  ));
});