<?php
/**
 * Get Save post id and list the posts
 *
 * @param none
 * @return endpoint returns a WordPress Rest API Endpoint
 * @since 0.1.8
 */

function tpw_get_save_posts_id( WP_REST_Request $request ) {

  $user_id = $_GET['userid'];

  // check for params
  $post_id = $request['id'];
  $posts_per_page = $request['per_page']?: '10';
  $page = $request['page']?: '1';
  $content = $request['content'];
  $show_content = filter_var($content, FILTER_VALIDATE_BOOLEAN);
  $acf = $request['acf'];
  $show_acf = filter_var($acf, FILTER_VALIDATE_BOOLEAN);
  $yoast = $request['yoast'];
  $show_yoast = filter_var($yoast, FILTER_VALIDATE_BOOLEAN);
  $media = $request['media'];
  $show_media = filter_var($media, FILTER_VALIDATE_BOOLEAN);
  $orderby = $request['orderby']?: null;
  $order = $request['order']?: null;
  $exclude = $request['exclude']?: null;
 
  if( !empty($user_id) ){
    
    global $wpdb;
    
    $tablename = $wpdb->prefix.'custom_savepost_id';

    $prepared_statement = $wpdb->prepare( 'SELECT `save_post_id` FROM ' . $tablename . ' WHERE  user_id = %d', $user_id );
    $post_id_values = $wpdb->get_col( $prepared_statement ); 

    if ( !empty($post_id_values) ) {
      $args = array(
        'post__in'       => $post_id_values,
        'post_type'      => 'post',
        'post_status'    => 'publish',
        'orderby'        => array( 'post__in' => 'desc', 'title' => 'asc' ) ,
      );

      $query = new WP_Query( $args );

      $listpost_details = array();

      if( $query->have_posts() ){

        global $post;

        $total = $query->found_posts;
        $pages = $query->max_num_pages;

        while( $query->have_posts() ) {
          $query->the_post();

            $listpost_detail = new stdClass();
            
            // get post data
            $permalink = get_permalink();
            $listpost_detail->id = get_the_ID();
            $listpost_detail->title = get_the_title();
            $listpost_detail->slug = $post->post_name;
            $listpost_detail->permalink = $permalink;
            $listpost_detail->date = get_the_date('c');
            $listpost_detail->date_modified = get_the_modified_date('c');
            $listpost_detail->excerpt = get_the_excerpt();

            if( $content === null || $show_content === true ){
              $listpost_detail->content = apply_filters('the_content', get_the_content());
            }

            $listpost_detail->author = esc_html__(get_the_author(), 'text_domain');
            $listpost_detail->author_id = get_the_author_meta('ID');
            $listpost_detail->author_nicename = get_the_author_meta('user_nicename');
            $author_avatar = get_avatar( get_the_author_meta( 'ID' ), 256);
            $xpath = new DOMXPath(@DOMDocument::loadHTML($author_avatar));
            $listpost_detail->author_avatar = $xpath->evaluate("string(//img/@src)");
            $listpost_detail->post_format = get_post_format( get_the_ID() ); 
            $listpost_detail->terms = get_the_terms( get_the_ID(), 'category' );
            $categories = get_the_category();
              if( !empty($categories) ){
                foreach ($categories as $key => $category) {
                  $listpost_detail->term_icon = get_field('cat_icon', 'category_'.$category->term_id );
                  $listpost_detail->term_color = get_field('background_color', 'category_'.$category->term_id );
                }
              }

            if( $acf === null || $show_acf === true ) {
             $listpost_detail->acf = bre_get_acf();
            }
    
            // push the post to the main array
            array_push($listpost_details, $listpost_detail);

          }

        } // return the post array

        $response = rest_ensure_response( $listpost_details );
        $response->header( 'X-WP-Total', (int) $total );
        $response->header( 'X-WP-TotalPages', (int) $pages );
        return $response;
    }

    wp_reset_postdata();

  }
    
}


/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', function () {
  register_rest_route( 'tpw-rest-endpoints/v1', '/listsavepost', array(
      'methods' => 'GET',
      'callback' => 'tpw_get_save_posts_id',
      'acf' =>  array(
            'description'       => 'Hide or show acf fields from the collection.',
            'type'              => 'boolean',
            'validate_callback' => function( $param, $request, $key ) {

              if ( $param == 'true' || $param == 'TRUE' ) {
                $param = true;
              } else if( $param == 'false' || $param == 'FALSE') {
                $param = false;
              }

              return is_bool( $param );
             }
          ),
  ));
});