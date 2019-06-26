<?php
/**
 * Get random posts for each category
 *
 * @param none
 * @return endpoint returns a WordPress Rest API Endpoint
 * @since 0.1.8
 */

function tpw_get_random_posts( WP_REST_Request $request ) {

  $tax = 'category';
  $tax_terms = get_terms(array(
    'taxonomy' => $tax,
    'hide_empty' => true
  ));


  $tpw_tax_posts = array();
  
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

  foreach ($tax_terms as $tax_term) {

      $args = array(
        'post_type'               => 'post',
        'cat'                     => $tax_term->term_id,
        'category__in'            => 24,
        'posts_per_page'          => -1,
        'order'                   => 'DESC',
        'orderby'                 => 'rand',
      );

      $query = new WP_Query( $args );

      if( $query->have_posts() ){

          global $post;

          $total = $query->found_posts;
          $pages = $query->max_num_pages;

          while( $query->have_posts() ) {
              $query->the_post();

              $tpw_tax_post = new stdClass();
              
              // get post data
              $permalink = get_permalink();
              $tpw_tax_post->id = base64_encode(get_the_ID());
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
              $tpw_tax_post->author_nicename = get_the_author_meta('user_nicename');
              $author_avatar = get_avatar( get_the_author_meta( 'ID' ));
              $xpath = new DOMXPath(@DOMDocument::loadHTML($author_avatar));
              $tpw_tax_post->author_avatar = $xpath->evaluate("string(//img/@src)");
              $tpw_tax_post->post_format = get_post_format( get_the_ID() ); 
              $tpw_tax_post->terms = $tax_term;
              $tpw_tax_post->term_icon = get_field('cat_icon', 'category_'.$tax_term->term_id );

              if( $acf === null || $show_acf === true ) {
               $tpw_tax_post->acf = bre_get_acf();
              }
      
              // push the post to the main array
              array_push($tpw_tax_posts, $tpw_tax_post);

          }
      
      } 

      wp_reset_postdata();
  }

  // return the post array
  $response = rest_ensure_response( $tpw_tax_posts );
  $response->header( 'X-WP-Total', (int) $total );
  $response->header( 'X-WP-TotalPages', (int) $pages );

  return $response;
  
}

/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', function () {
  register_rest_route( 'tpw-rest-endpoints/v1', '/community', array(
      'methods' => 'GET',
      'callback' => 'tpw_get_random_posts',
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