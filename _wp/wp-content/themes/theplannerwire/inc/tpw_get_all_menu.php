<?php 

function tpw_getall_menus(WP_REST_Request $request) {

  $headermenu = $_GET['headermenu'];
  $footermenu = $_GET['footermenu'];


  $all_in_one_array = array();

  /**
  * Get top menu data
  */

  $header_menu = get_terms('nav_menu');

  foreach ($header_menu as $key => $menu) {

    $menu_items = wp_get_nav_menu_items('top-menu');
    $slim_menu_items = array();

    foreach ($menu_items as $key => $menu_item) {
      $items = new stdClass();

      $items->ID = $menu_item->ID;
      $items->menu_order = $menu_item->menu_order;
      $items->title = $menu_item->title;
      $items->slug = "/".basename($menu_item->url);
      $items->url = $menu_item->url;
      $items->target = $menu_item->target;
      $items->description = $menu_item->description;
      $items->classes = $menu_item->classes;
      $items->menu_item_parent = $menu_item->menu_item_parent;
      $items->acf = get_fields($menu_item->ID);

      array_push($slim_menu_items, $items);
    }

  }

  $all_in_one_array['topMenu'] = $slim_menu_items;

  /**
  * Get footer menu data
  */
  $footer_menu = get_terms('nav_menu');

  foreach ($footer_menu as $key => $f_menu) {

    $menu_items_two = wp_get_nav_menu_items('footer-menu');
    $f_menu_items = array();

    foreach ($menu_items_two as $key => $menu_itemtwo) {
      $f_items = new stdClass();

      $f_items->ID = $menu_itemtwo->ID;
      $f_items->menu_order = $menu_itemtwo->menu_order;
      $f_items->title = $menu_itemtwo->title;
      $f_items->slug = "/".basename($menu_itemtwo->url);
      $f_items->url = $menu_itemtwo->url;
      $f_items->target = $menu_itemtwo->target;
      $f_items->description = $menu_itemtwo->description;
      $f_items->classes = $menu_itemtwo->classes;
      $f_items->menu_item_parent = $menu_itemtwo->menu_item_parent;
      $f_items->acf = get_fields($menu_itemtwo->ID);

      array_push($f_menu_items, $f_items);
    }
 
  }

  $all_in_one_array['footerMenu'] = $f_menu_items;

  $acf_items = array();
  // Only run if we have ACF installed
  if( !is_plugin_active('advanced-custom-fields-pro/acf.php') && !is_plugin_active('advanced-custom-fields/acf.php') ) {
      return array();
  }

  // $acf_data = new stdClass();
  // $acf_data->acfoption = get_fields('options');
  
  $all_in_one_array['acf'] = get_fields('options');

  $response = rest_ensure_response( $all_in_one_array );
    return $response;
  }


/*
 *
 * Add action for custom tax endpoint building
 *
 */
add_action( 'rest_api_init', function () {
  register_rest_route( 'tpw-rest-endpoints/v1', '/page-all', array(
      'methods' => 'GET',
      'callback' => 'tpw_getall_menus'
  ));
});