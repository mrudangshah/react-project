<?php 

function tpw_get_home_content( WP_REST_Request $request ) {
  
  $final_array = array();

  /**
   ********************************************* Two regular posts *********************************************
   */

  $args = array(
  	'posts_per_page'         => 2,
    'orderby'                => 'menu_order',
    'post__not_in'           => array($request['exclude']?: null),
    'author_name'            => $request['author']?: '',
    'category__not_in'       => array(1,30),
  );

  // The Query
  $query = new WP_Query( $args );
  $two_posts = array();

  if ( $query->have_posts() ) {
  	while ( $query->have_posts() ) { 
      $query->the_post();
      
      global $post;
      $two_post = new stdClass();
      
      // get post data
      $permalink = get_permalink();
      $two_post->id = base64_encode(get_the_ID());
      $two_post->title = get_the_title();
      $two_post->slug = $post->post_name;
      $two_post->permalink = $permalink;
      $two_post->date = get_the_date('c');
      $two_post->date_modified = get_the_modified_date('c');
      $two_post->excerpt = get_the_excerpt();

      // show post content unless parameter is false
      if( $content === null || $show_content === true ) {
        $two_post->content = apply_filters('the_content', get_the_content());
      }

      $two_post->author = esc_html__(get_the_author(), 'text_domain');
      $two_post->author_id = get_the_author_meta('ID');
      $two_post->author_nicename = get_the_author_meta('user_nicename');
      $two_post->author_avatar = get_avatar_url( get_the_author_meta( 'ID' ));
      $two_post->post_format = get_the_terms(get_the_ID(), 'post_format');

      /* check post id is save by user or not start*/
      global $wpdb;

      $tablename = $wpdb->prefix.'custom_savepost_id';

      $exists_postid = $wpdb->get_var( $wpdb->prepare(
        "SELECT COUNT(*) FROM $tablename WHERE save_post_id = %d", $two_post->id
      ) );

      if ( $exists_postid ) {
          $post_status = "True";
      } else {
          $post_status = "False";
      } 

      $two_post->save_post_status = $post_status === 'True'? true: false;

      
      /* get category data using get_the_category() */
      $categories = get_the_category();

      if( !empty($categories) ){
        $two_post->terms = get_the_terms(get_the_ID(), 'category');
        foreach ($categories as $key => $category) {
          $two_post->term_icon = get_field('cat_icon', 'category_'.$category->term_id );
          $two_post->term_color = get_field('background_color', 'category_'.$category->term_id );
          $two_post->term_save_icon = get_field('save_icon', 'category_'.$category->term_id );
          $two_post->term_saved_icon = get_field('saved_icon', 'category_'.$category->term_id );
          $two_post->term_share_icon = get_field('share_icon', 'category_'.$category->term_id );
        }
      } else {
        $two_post->terms = array();
      }

      /* get tag data using get_the_tags() */
      $tags = get_the_tags();

      $bre_tags = [];
      $bre_tag_ids = [];

      if( !empty($tags) ){
        foreach ($tags as $key => $tag) {
          array_push($bre_tag_ids, $tag->term_id);
          array_push($bre_tags, $tag->name);
        }
      }


      $two_post->tag_ids = $bre_tag_ids;
      $two_post->tag_names = $bre_tags;

      /* return acf fields if they exist and depending on query string */
    
      /*$single_featured_image = get_field('single_featured_image' );
      $image_gallery = get_field('image_gallery');

      if($single_featured_image){
        $two_post->acf['single_featured_image'] = get_field('single_featured_image' );
      } else{
        $two_post->acf['single_featured_image'] = get_field('blog_sample_image','options' );
      }
      if($image_gallery){
        $two_post->acf['image_gallery'] = get_field('image_gallery' );
      } else{
        $two_post->acf['image_gallery'] = get_field('blog_sample_image','options' );
      }*/

      if( $acf === null || $show_acf === true ) {
        $two_post->acf = bre_get_acf();
      }
      

      /* return Yoast SEO fields if they exist and depending on query string */
      if( $yoast === null || $show_yoast === true ) {
        $two_post->yoast = bre_get_yoast( $two_post->id );
      }

      /* get possible thumbnail sizes and urls if query set to true or by default */

      if( $media === null || $show_media === true ) {
        $thumbnail_names = get_intermediate_image_sizes();
        $bre_thumbnails = new stdClass();

        if( has_post_thumbnail() ){
          foreach ($thumbnail_names as $key => $name) {
            $bre_thumbnails->$name = esc_url(get_the_post_thumbnail_url($post->ID, $name));
          }

          $two_post->media = $bre_thumbnails;
        } else {
          $two_post->media = false;
        }
      }


      // Push the post to the main $post array
      array_push($two_posts, $two_post);
  	}

  } else {
    // return empty posts array if no posts
  	return $two_posts;
  }

  // Restore original Post Data
  wp_reset_postdata();

  $final_array['twoPosts'] = $two_posts;

  /**
   * Get SPONSORED post
   */

  $args = array(
  	'posts_per_page'         => 1,
    'orderby'                => 'menu_order',
    'post__not_in'           => array($request['exclude']?: null),
    'author_name'            => $request['author']?: '',
    'category__in'           => 30 ,
  );

  // The Query
  $query = new WP_Query( $args );
  $sponsored_posts = array();

  if ( $query->have_posts() ) {
  	while ( $query->have_posts() ) { 
      $query->the_post();
      
      global $post;
      $sponsored_post = new stdClass();
      
      // get post data
      $permalink = get_permalink();
      $sponsored_post->id = base64_encode(get_the_ID());
      $sponsored_post->title = get_the_title();
      $sponsored_post->slug = $post->post_name;
      $sponsored_post->permalink = $permalink;
      $sponsored_post->date = get_the_date('c');
      $sponsored_post->date_modified = get_the_modified_date('c');
      $sponsored_post->excerpt = get_the_excerpt();

      // show post content unless parameter is false
      if( $content === null || $show_content === true ) {
        $sponsored_post->content = apply_filters('the_content', get_the_content());
      }

      $sponsored_post->author = esc_html__(get_the_author(), 'text_domain');
      $sponsored_post->author_id = get_the_author_meta('ID');
      $sponsored_post->author_nicename = get_the_author_meta('user_nicename');
      $sponsored_post->author_avatar = get_avatar_url( get_the_author_meta( 'ID' ));
      $sponsored_post->post_format = get_the_terms(get_the_ID(), 'post_format');

      /* check post id is save by user or not start*/
      global $wpdb;

      $tablename = $wpdb->prefix.'custom_savepost_id';

      $exists_postid = $wpdb->get_var( $wpdb->prepare(
        "SELECT COUNT(*) FROM $tablename WHERE save_post_id = %d", $sponsored_post->id
      ) );

      if ( $exists_postid ) {
          $post_status = "True";
      } else {
          $post_status = "False";
      } 

      $sponsored_post->save_post_status = $post_status === 'True'? true: false;

      
      /* get category data using get_the_category() */
      $categories = get_the_category();

      if( !empty($categories) ){
        $sponsored_post->terms = get_the_terms(get_the_ID(), 'category');
        foreach ($categories as $key => $category) {
          $sponsored_post->term_icon = get_field('cat_icon', 'category_'.$category->term_id );
          $sponsored_post->term_color = get_field('background_color', 'category_'.$category->term_id );
          $sponsored_post->term_save_icon = get_field('save_icon', 'category_'.$category->term_id );
          $sponsored_post->term_saved_icon = get_field('saved_icon', 'category_'.$category->term_id );
          $sponsored_post->term_share_icon = get_field('share_icon', 'category_'.$category->term_id );
        }
      } else {
        $sponsored_post->terms = array();
      }

      /* get tag data using get_the_tags() */
      $tags = get_the_tags();

      $bre_tags = [];
      $bre_tag_ids = [];

      if( !empty($tags) ){
        foreach ($tags as $key => $tag) {
          array_push($bre_tag_ids, $tag->term_id);
          array_push($bre_tags, $tag->name);
        }
      }

      $sponsored_post->tag_ids = $bre_tag_ids;
      $sponsored_post->tag_names = $bre_tags;

      /* return acf fields if they exist and depending on query string */
      if( $acf === null || $show_acf === true ) {
        $sponsored_post->acf = bre_get_acf();
      }

      /* return Yoast SEO fields if they exist and depending on query string */
      if( $yoast === null || $show_yoast === true ) {
        $sponsored_post->yoast = bre_get_yoast( $sponsored_post->id );
      }

      /* get possible thumbnail sizes and urls if query set to true or by default */

      if( $media === null || $show_media === true ) {
        $thumbnail_names = get_intermediate_image_sizes();
        $bre_thumbnails = new stdClass();

        if( has_post_thumbnail() ){
          foreach ($thumbnail_names as $key => $name) {
            $bre_thumbnails->$name = esc_url(get_the_post_thumbnail_url($post->ID, $name));
          }

          $sponsored_post->media = $bre_thumbnails;
        } else {
          $sponsored_post->media = false;
        }
      }


      // Push the post to the main $post array
      array_push($sponsored_posts, $sponsored_post);
  	}

  } else {
    // return empty posts array if no posts
  	return $sponsored_posts;
  }

  // Restore original Post Data
  wp_reset_postdata();

  $final_array['sponsoredPosts'] = $sponsored_posts;


  /**
   ********************************************* One regular post *********************************************
   */

  $args = array(
  	'posts_per_page'         => 1,
    'orderby'                => 'menu_order',
    'post__not_in'           => array($request['exclude']?: null),
    'author_name'            => $request['author']?: '',
    'category__not_in'       => array(1,30),
    'offset'                 => 2,
  );

  // The Query
  $query = new WP_Query( $args );
  $one_reg_posts = array();

  if ( $query->have_posts() ) {
  	while ( $query->have_posts() ) { 
      $query->the_post();
      
      global $post;
      $one_reg_post = new stdClass();
      
      // get post data
      $permalink = get_permalink();
      $one_reg_post->id = base64_encode(get_the_ID());
      $one_reg_post->title = get_the_title();
      $one_reg_post->slug = $post->post_name;
      $one_reg_post->permalink = $permalink;
      $one_reg_post->date = get_the_date('c');
      $one_reg_post->date_modified = get_the_modified_date('c');
      $one_reg_post->excerpt = get_the_excerpt();

      // show post content unless parameter is false
      if( $content === null || $show_content === true ) {
        $one_reg_post->content = apply_filters('the_content', get_the_content());
      }

      $one_reg_post->author = esc_html__(get_the_author(), 'text_domain');
      $one_reg_post->author_id = get_the_author_meta('ID');
      $one_reg_post->author_nicename = get_the_author_meta('user_nicename');
      $one_reg_post->author_avatar = get_avatar_url( get_the_author_meta( 'ID' ));
      $one_reg_post->post_format = get_the_terms(get_the_ID(), 'post_format');

      /* check post id is save by user or not start*/
      global $wpdb;

      $tablename = $wpdb->prefix.'custom_savepost_id';

      $exists_postid = $wpdb->get_var( $wpdb->prepare(
        "SELECT COUNT(*) FROM $tablename WHERE save_post_id = %d", $one_reg_post->id
      ) );

      if ( $exists_postid ) {
          $post_status = "True";
      } else {
          $post_status = "False";
      } 

      $one_reg_post->save_post_status = $post_status === 'True'? true: false;

      
      /* get category data using get_the_category() */
      $categories = get_the_category();

      if( !empty($categories) ){
        $one_reg_post->terms = get_the_terms(get_the_ID(), 'category');
        foreach ($categories as $key => $category) {
          $one_reg_post->term_icon = get_field('cat_icon', 'category_'.$category->term_id );
          $one_reg_post->term_color = get_field('background_color', 'category_'.$category->term_id );
          $one_reg_post->term_save_icon = get_field('save_icon', 'category_'.$category->term_id );
          $one_reg_post->term_saved_icon = get_field('saved_icon', 'category_'.$category->term_id );
          $one_reg_post->term_share_icon = get_field('share_icon', 'category_'.$category->term_id );
        }
      } else {
        $one_reg_post->terms = array();
      }

      /* get tag data using get_the_tags() */
      $tags = get_the_tags();

      $bre_tags = [];
      $bre_tag_ids = [];

      if( !empty($tags) ){
        foreach ($tags as $key => $tag) {
          array_push($bre_tag_ids, $tag->term_id);
          array_push($bre_tags, $tag->name);
        }
      }


      $one_reg_post->tag_ids = $bre_tag_ids;
      $one_reg_post->tag_names = $bre_tags;

      /* return acf fields if they exist and depending on query string */
      if( $acf === null || $show_acf === true ) {
        $one_reg_post->acf = bre_get_acf();
      }

      /* return Yoast SEO fields if they exist and depending on query string */
      if( $yoast === null || $show_yoast === true ) {
        $one_reg_post->yoast = bre_get_yoast( $one_reg_post->id );
      }

      /* get possible thumbnail sizes and urls if query set to true or by default */

      if( $media === null || $show_media === true ) {
        $thumbnail_names = get_intermediate_image_sizes();
        $bre_thumbnails = new stdClass();

        if( has_post_thumbnail() ){
          foreach ($thumbnail_names as $key => $name) {
            $bre_thumbnails->$name = esc_url(get_the_post_thumbnail_url($post->ID, $name));
          }

          $one_reg_post->media = $bre_thumbnails;
        } else {
          $one_reg_post->media = false;
        }
      }


      // Push the post to the main $post array
      array_push($one_reg_posts, $one_reg_post);
  	}

  } else {
    // return empty posts array if no posts
  	return $one_reg_posts;
  }

  // Restore original Post Data
  wp_reset_postdata();

  $final_array['onePosts'] = $one_reg_posts;
  

  /**
   ********************************************* One community posts *********************************************
   */

  $tax = 'category';
  $tax_terms = get_terms(array(
    'taxonomy' => $tax,
    'hide_empty' => true
  ));

  $tpw_community_posts = array();

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
              array_push($tpw_community_posts, $tpw_tax_post);

          }
      
      } 

      wp_reset_postdata();
  }
  
  $final_array['communityPosts'] = $tpw_community_posts;

  /**
   ********************************************* Three regular posts *********************************************
   */

  $args = array(
  	'posts_per_page'         => 3,
    'orderby'                => 'menu_order',
    'post__not_in'           => array($request['exclude']?: null),
    'author_name'            => $request['author']?: '',
    'category__not_in'       => array(1,30),
    'offset'                 => 3,
  );

  // The Query
  $query = new WP_Query( $args );
  $three_reg_posts = array();

  if ( $query->have_posts() ) {
  	while ( $query->have_posts() ) { 
      $query->the_post();
      
      global $post;
      $three_reg_post = new stdClass();
      
      // get post data
      $permalink = get_permalink();
      $three_reg_post->id = base64_encode(get_the_ID());
      $three_reg_post->title = get_the_title();
      $three_reg_post->slug = $post->post_name;
      $three_reg_post->permalink = $permalink;
      $three_reg_post->date = get_the_date('c');
      $three_reg_post->date_modified = get_the_modified_date('c');
      $three_reg_post->excerpt = get_the_excerpt();

      // show post content unless parameter is false
      if( $content === null || $show_content === true ) {
        $three_reg_post->content = apply_filters('the_content', get_the_content());
      }

      $three_reg_post->author = esc_html__(get_the_author(), 'text_domain');
      $three_reg_post->author_id = get_the_author_meta('ID');
      $three_reg_post->author_nicename = get_the_author_meta('user_nicename');
      $three_reg_post->author_avatar = get_avatar_url( get_the_author_meta( 'ID' ));
      $three_reg_post->post_format = get_the_terms(get_the_ID(), 'post_format');

      /* check post id is save by user or not start*/
      global $wpdb;

      $tablename = $wpdb->prefix.'custom_savepost_id';

      $exists_postid = $wpdb->get_var( $wpdb->prepare(
        "SELECT COUNT(*) FROM $tablename WHERE save_post_id = %d", $three_reg_post->id
      ) );

      if ( $exists_postid ) {
          $post_status = "True";
      } else {
          $post_status = "False";
      } 

      $three_reg_post->save_post_status = $post_status === 'True'? true: false;

      
      /* get category data using get_the_category() */
      $categories = get_the_category();

      if( !empty($categories) ){
        $three_reg_post->terms = get_the_terms(get_the_ID(), 'category');
        foreach ($categories as $key => $category) {
          $three_reg_post->term_icon = get_field('cat_icon', 'category_'.$category->term_id );
          $three_reg_post->term_color = get_field('background_color', 'category_'.$category->term_id );
          $three_reg_post->term_save_icon = get_field('save_icon', 'category_'.$category->term_id );
          $three_reg_post->term_saved_icon = get_field('saved_icon', 'category_'.$category->term_id );
          $three_reg_post->term_share_icon = get_field('share_icon', 'category_'.$category->term_id );
        }
      } else {
        $three_reg_post->terms = array();
      }

      /* get tag data using get_the_tags() */
      $tags = get_the_tags();

      $bre_tags = [];
      $bre_tag_ids = [];

      if( !empty($tags) ){
        foreach ($tags as $key => $tag) {
          array_push($bre_tag_ids, $tag->term_id);
          array_push($bre_tags, $tag->name);
        }
      }


      $three_reg_post->tag_ids = $bre_tag_ids;
      $three_reg_post->tag_names = $bre_tags;

      /* return acf fields if they exist and depending on query string */
      
    /*  $single_featured_image = get_field('single_featured_image' );
      $image_gallery = get_field('image_gallery');
      $video = get_field('video');

      if($single_featured_image){
        $three_reg_post->acf['single_featured_image'] = get_field('single_featured_image' );
      } else{
        $three_reg_post->acf['single_featured_image'] = get_field('blog_sample_image','options' );
      }
      if($image_gallery){
        $three_reg_post->acf['image_gallery'] = get_field('image_gallery' );
      } else{
        $three_reg_post->acf['image_gallery'] = get_field('blog_sample_image','options' );
      }
      if($video){
        $three_reg_post->acf['video'] = get_field('video' );
      } else{
        $three_reg_post->acf['video'] = get_field('blog_sample_image','options' );
      }
    */  
      if( $acf === null || $show_acf === true ) {
        $three_reg_post->acf = bre_get_acf();
      }

      /* return Yoast SEO fields if they exist and depending on query string */
      if( $yoast === null || $show_yoast === true ) {
        $three_reg_post->yoast = bre_get_yoast( $three_reg_post->id );
      }

      /* get possible thumbnail sizes and urls if query set to true or by default */

      if( $media === null || $show_media === true ) {
        $thumbnail_names = get_intermediate_image_sizes();
        $bre_thumbnails = new stdClass();

        if( has_post_thumbnail() ){
          foreach ($thumbnail_names as $key => $name) {
            $bre_thumbnails->$name = esc_url(get_the_post_thumbnail_url($post->ID, $name));
          }

          $three_reg_post->media = $bre_thumbnails;
        } else {
          $three_reg_post->media = false;
        }
      }


      // Push the post to the main $post array
      array_push($three_reg_posts, $three_reg_post);
  	}

  } else {
    // return empty posts array if no posts
  	return $three_reg_posts;
  }

  // Restore original Post Data
  wp_reset_postdata();

  $final_array['threePosts'] = $three_reg_posts;


  $response = rest_ensure_response( $final_array );
    return $response;
}
/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', function () {
  register_rest_route( 'tpw-rest-endpoints/v1', '/home', array(
      'methods' => 'GET',
      'callback' => 'tpw_get_home_content'
  ));
});