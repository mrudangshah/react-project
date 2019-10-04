<?php
/**
 * Get Posts by Taxonomy
 *
 * @param none
 * @return endpoint returns a WordPress Rest API Endpoint
 * @since 0.1.8
 */


function tpw_get_events_related_posts( WP_REST_Request $request ) {
  
  $post_id = $request['id'];
  $custom_taxterms = wp_get_object_terms( $post_id, 'espresso_event_categories', 'string' );
  
  // WP_Query Arguments
  $args = array(
    'post_type'              => 'espresso_events',
    'category__in'           => wp_get_post_categories($post_id),
    'posts_per_page'         => 4,
    'post__not_in'           => array($post_id),
    'order'                  => $order?:'DESC',
    'orderby'                => 'rand',
  );

  // The Query
  $query = new WP_Query( $args );

  if( $query->have_posts() ){

    // For Headers
    $total = $query->found_posts;
    $pages = $query->max_num_pages;

    // setup post object
    $tpw_tax_posts = array();

    while( $query->have_posts() ) {
      $query->the_post();

      global $post;

      $tpw_tax_post = new stdClass();

      // get post data
      $permalink = get_permalink();
      $tpw_tax_post->id = get_the_ID();
      $tpw_tax_post->title = get_the_title();
      $tpw_tax_post->slug = $post->post_name;
      $tpw_tax_post->permalink = $permalink;
      $tpw_tax_post->date = get_the_date('c');
      $tpw_tax_post->date_modified = get_the_modified_date('c');
      $tpw_tax_post->excerpt = get_the_excerpt();

      if( $content === null || $show_content === true ){
        $tpw_tax_post->content = apply_filters('the_content', get_the_content());
      }

      $tpw_tax_post->author = esc_html__(get_the_author(), 'text_domain');
      $tpw_tax_post->author_id = get_the_author_meta('ID');
      $tpw_tax_post->user_login = get_the_author_meta('user_login');
      $tpw_tax_post->author_nicename = get_the_author_meta('user_nicename');
      $tpw_tax_post->user_login = get_the_author_meta('user_login');
      $author_avatar = get_avatar( get_the_author_meta( 'ID' ));
      $xpath = new DOMXPath(@DOMDocument::loadHTML($author_avatar));
      $tpw_tax_post->author_avatar = $xpath->evaluate("string(//img/@src)");
      $tpw_tax_post->post_format = get_post_format( get_the_ID() ); 
      
      /*
      * get the terms
      */
      if( get_the_terms(get_the_ID(), $tax) ){
        $tpw_tax_post->terms = get_the_terms(get_the_ID(), $tax);
      } else {
        $tpw_tax_post->terms = array();
      }

      /*
      * return acf fields if they exist
      */
      if( $acf === null || $show_acf === true ) {
        $tpw_tax_post->acf = bre_get_acf();
      }

      /*
      * return Yoast SEO fields if they exist
      */
      if( $yoast === null || $show_yoast === true ) {
        $tpw_tax_post->yoast = bre_get_yoast( $tpw_tax_post->id );
      }

      /*
      * get possible thumbnail sizes and urls if query set to true or by default
      */

      if( $media === null || $show_media === true ) {
        $thumbnail_names = get_intermediate_image_sizes();
        $bre_thumbnails = new stdClass();

        if( has_post_thumbnail() ){
          foreach ($thumbnail_names as $key => $name) {
            $bre_thumbnails->$name = esc_url(get_the_post_thumbnail_url($post->ID, $name));
          }

          $tpw_tax_post->media = $bre_thumbnails;
        } else {
          $tpw_tax_post->media = false;
        }
      }

      // push the post to the main array
      array_push($tpw_tax_posts, $tpw_tax_post);
    }
    // return the post array
    $response = rest_ensure_response( $tpw_tax_posts );
    $response->header( 'X-WP-Total', (int) $total );
    $response->header( 'X-WP-TotalPages', (int) $pages );

    return $response;

  } else {
    // if no post is found
    return array();
  }

  // reset post data
  wp_reset_postdata();
}

/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', function () {
  register_rest_route( 'tpw-rest-endpoints/v1', '/espressoevents/related/(?P<id>\d+)', array(
    'methods' => 'GET',
    'callback' => 'tpw_get_events_related_posts',
  ) );
} );