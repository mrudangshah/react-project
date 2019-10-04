<?php
/**
 * Grab post by slug
 *
 * @param array $request Options for the function.
 * @return string|null Post by slug or empty object for none
 * @since 1.1.0
 */

function tpw_get_events_posts_by_slug( WP_REST_Request $request ) {
  global $wpdb;
  $post_slug = $request['slug'];

  // WP_Query arguments
  $args = array(
    'post_type' => 'espresso_events',
    'name' => $post_slug
  );

  // The Query
  $query = new WP_Query( $args );

  // The Loop
  if ( $query->have_posts() ) {
  	while ( $query->have_posts() ) {
  		$query->the_post();

      global $post;

      // better wordpress endpoint post object
      $tpw_post = new stdClass();

      $permalink = get_permalink();
      $tpw_post->id = get_the_ID();
      $tpw_post->title = get_the_title();
      $tpw_post->slug = $post->post_name;
      $tpw_post->permalink = $permalink;
      $tpw_post->date = get_the_date('c');
      $tpw_post->date_modified = get_the_modified_date('c');
      $tpw_post->excerpt = get_the_excerpt();
      $tpw_post->content = apply_filters('the_content', get_the_content());
      $tpw_post->author = esc_html__(get_the_author(), 'text_domain');
      $tpw_post->author_id = get_the_author_meta('ID');
      $tpw_post->author_nicename = get_the_author_meta('user_nicename');
      $tpw_post->user_login = get_the_author_meta('user_login');
      $author_avatar = get_avatar( get_the_author_meta( 'ID' ));
      $xpath = new DOMXPath(@DOMDocument::loadHTML($author_avatar));
      $tpw_post->author_avatar = $xpath->evaluate("string(//img/@src)");
      $tpw_post->post_format = get_the_terms(get_the_ID(), 'post_format');
      /*
       *
       * get category data using get_the_category()
       *
       */
      $categories = get_the_category();

      $bre_categories = [];
      $bre_category_ids = [];

      if( !empty($categories) ){
        foreach ($categories as $key => $category) {
          array_push($bre_category_ids, $category->term_id);
          array_push($bre_categories, $category->cat_name);
          $tpw_post->category_icon = get_field('cat_icon', 'category_'.$category->term_id );
        }
      }

      $tpw_post->category_ids = $bre_category_ids;
      $tpw_post->category_names = $bre_categories;

      /*
       *
       * get tag data using get_the_tags()
       *
       */
      $tags = get_the_tags();

      $bre_tags = [];
      $bre_tag_ids = [];

      if( !empty($tags) ){
        foreach ($tags as $key => $tag) {
          array_push($bre_tag_ids, $tag->term_id);
          array_push($bre_tags, $tag->name);
        }
      }

      $tpw_post->tag_ids = $bre_tag_ids;
      $tpw_post->tag_names = $bre_tags;

      /*
      * Get date times from Event Espresso table 
      */
      $datetimeTable = $wpdb->prefix.'esp_datetime';
      $datetimeRecords = $wpdb->get_results( $wpdb->prepare(
        "SELECT * FROM $datetimeTable WHERE EVT_ID = %d", get_the_ID()
      ) );

      if( !empty($datetimeRecords) ){
        $records = array();
        foreach ($datetimeRecords as $key => $datetimeRecord) {
          $records = $datetimeRecord;
        }
        $tpw_post->event_datetime = $records;
      }

      /*
      * Get Venue from Event Espresso table 
      */
      $venue_array = array();
      $venueTable = $wpdb->prefix.'esp_event_venue';
      $venueRecords = $wpdb->get_results( $wpdb->prepare(
        "SELECT * FROM $venueTable WHERE EVT_ID = %d", get_the_ID()
      ) );

      foreach ($venueRecords as $key => $venueRecord) {
        $VNU_ID = $venueRecord->VNU_ID;
        $venue_array[] = $venueRecord;
      }

      $vanue_meta_array = array();
      $venue_meta_table = $wpdb->prefix.'esp_venue_meta';
      $venue_meta_records = $wpdb->get_results( $wpdb->prepare(
        "SELECT * FROM $venue_meta_table WHERE VNU_ID = %d", $VNU_ID
      ) );
      foreach ($venue_meta_records as $key => $venue_meta_record) {
        $vanue_meta_array = $venue_meta_record;
      }

      $merge_vanue_array = array_merge($venue_array, $vanue_meta_array);
      $merge_vanue_array = array_map("unserialize", array_unique(array_map("serialize", $merge_vanue_array)));
      
      $tpw_post->event_venue_details = $vanue_meta_array;      

      /*
       * return acf fields if they exist
       */
      $tpw_post->acf = bre_get_acf();

      /*
       * return Yoast SEO fields if they exist
       */
      $tpw_post->yoast = bre_get_yoast( $tpw_post->id );

      /*
       *
       * get possible thumbnail sizes and urls
       *
       */
      $thumbnail_names = get_intermediate_image_sizes();
      $bre_thumbnails = new stdClass();

      if( has_post_thumbnail() ){
        foreach ($thumbnail_names as $key => $name) {
          $bre_thumbnails->$name = esc_url(get_the_post_thumbnail_url($post->ID, $name));
        }

        $tpw_post->media = $bre_thumbnails;
      } else {
        $tpw_post->media = false;
      }

      // Push the post to the main $post array
      return $tpw_post;

  	}
  } else {
  	// no posts found
    $tpw_post = [];

    return $tpw_post;
  }

  // Restore original Post Data
  wp_reset_postdata();
}

add_action( 'rest_api_init', function () {
  register_rest_route( 'tpw-rest-endpoints/v1', '/espresso_events/(?P<slug>\S+)', array(
    'methods' => 'GET',
    'callback' => 'tpw_get_events_posts_by_slug',
  ) );
} );
