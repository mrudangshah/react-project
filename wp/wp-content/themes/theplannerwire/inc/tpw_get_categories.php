<?php
/**
 * Get Posts by Taxonomy
 *
 * @param none
 * @return endpoint returns a WordPress Rest API Endpoint
 * @since 0.1.8
 */

function tpw_get_categories() {
  
  // get registered categories
  $categories = get_categories();


  if( !empty($categories) ){
    $cat = array();

    foreach ($categories as $key => $category) { 
      
      $tpw_cat = new stdClass();
      $tpw_cat->id = $category->term_id;
      $tpw_cat->name = $category->cat_name;
      $tpw_cat->slug = $category->slug;
      $tpw_cat->description = $category->description;
      $tpw_cat->icon = get_field('cat_icon', 'category_'.$category->term_id );
      $tpw_cat->icon_black = get_field('black_icon', 'category_'.$category->term_id );
      $tpw_cat->icon_grey = get_field('gray_icon', 'category_'.$category->term_id );
      array_push($cat, $tpw_cat);
    }
    
  }

  
  /*
  *
  * Register Rest API Endpoint
  *
  */

  register_rest_route( 'tpw-rest-endpoints/v1', '/categories', array(
    'methods' => 'GET',
    'callback' => function ( WP_REST_Request $request ) use($cat) {
      return $cat;
    },
  ));
}

/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', 'tpw_get_categories' );