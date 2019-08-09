<?php
/**
 * theplannerwire functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package theplannerwire
 */
include_once 'inc/tpw_get_posts_tax.php';
include_once 'inc/tpw_nav_menus.php';
include_once 'inc/tpw_get_related_posts.php';
include_once 'inc/tpw_get_search.php';
include_once 'inc/tpw_get_posts_by_member.php';
include_once 'inc/tpw_get_posts_by_member_cat.php';
include_once 'inc/tpw_get_categories.php';
include_once 'inc/tpw_get_posts_by_slug.php';
include_once 'inc/tpw_get_user_id.php';
include_once 'inc/tpw_get_all_posts.php';
include_once 'inc/tpw_get_community_posts.php';
include_once 'inc/tpw_save_postid.php';
include_once 'inc/tpw_get_save_postid.php';
include_once 'inc/tpw_save_fav_user.php';
include_once 'inc/tpw_get_fav_user.php';
include_once 'inc/tpw_save_user.php';
include_once 'inc/tpw_save_user_other_info.php';
include_once 'inc/tpw_get_all_menu.php';
include_once 'inc/tpw_get_home_content.php';
include_once 'inc/tpw_get_events_posts_by_slug.php';
include_once 'inc/tpw_get_events_related_posts.php';

if ( ! function_exists( 'theplannerwire_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function theplannerwire_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on theplannerwire, use a find and replace
		 * to change 'theplannerwire' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'theplannerwire', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );
		add_theme_support( 'post-formats', array( 'aside', 'gallery', 'video', ) );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'theplannerwire' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'theplannerwire_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'theplannerwire_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function theplannerwire_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'theplannerwire_content_width', 640 );
}
add_action( 'after_setup_theme', 'theplannerwire_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function theplannerwire_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'theplannerwire' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'theplannerwire' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'theplannerwire_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function theplannerwire_scripts() {
	wp_enqueue_style( 'theplannerwire-style', get_stylesheet_uri() );

	wp_enqueue_script( 'theplannerwire-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'theplannerwire-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'theplannerwire_scripts' );

if(!current_user_can('administrator')){
	function admin_style() {
		wp_enqueue_style('admin-styles', get_template_directory_uri().'/layouts/admin.css');
	}
	add_action('admin_enqueue_scripts', 'admin_style');
}

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

/**
* Create sub pages for the acf fields. 
*/
if( function_exists('acf_add_options_sub_page') ) {
	acf_add_options_sub_page('Header');
	acf_add_options_sub_page('Footer');
}


function user_membership_details($user_id) {

	global $wpdb;

  	$subcription = $wpdb->prefix . "mepr_subscriptions";
  	$post_tb = $wpdb->prefix . "posts";

  	$user_membership = $wpdb->get_results( "SELECT $subcription.product_id, $post_tb.post_title
		FROM $subcription
		JOIN $post_tb
		ON 	$subcription.product_id = $post_tb.ID
	 	WHERE $subcription.user_id = $user_id" );
  		
  	return $user_membership;
}


function add_extra_para($data, $user)
{

	$user_memebrship = user_membership_details($user->data->ID);

	$user_membership_id = '';
  	$user_mebership_name = '';

	foreach ($user_memebrship as $row){ 
		$user_membership_id  .= $row->product_id;
		$user_mebership_name .= $row->post_title;
	  } 

	 $data = array(
	  'success' => true,
	  'token'   => $data['token'],
	  'user_email' => $user->data->user_email,
	  'user_nicename' => $user->data->user_nicename,
	  'user_display_name' => $user->data->display_name,
	  'user_id' => $user->data->ID,
	  'user_avatar' => get_avatar_url( $user->data->ID),
	  'membership' => $user_membership_id,
	  'membership_name' => $user_mebership_name
    );

     return $data;
}
add_filter('jwt_auth_token_before_dispatch', 'add_extra_para', 10, 2);


/* create custom user field */
add_action( 'show_user_profile', 'show_extra_profile_fields');
add_action( 'edit_user_profile', 'show_extra_profile_fields' );
add_action( 'personal_options_update', 'update_profile_fields' );
add_action( 'edit_user_profile_update', 'update_profile_fields' );
function show_extra_profile_fields( $user ) {?>

	<style type="text/css">
			table.form-table.add_network td input[type="text"] {width: 600px;}
			table.form-table.payment_info td input[type="text"] {width: 300px;}
			
	</style>

	<table class="form-table personal_info">

		<h3 class="heading">Personal Information</h3>

		<tr>
			<th><label for="account_username"><?php esc_html_e( 'Account Username' ); ?></label></th>
			<td><input type="text" name="account_username" value="<?php echo esc_html( get_the_author_meta( 'account_username', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="phone"><?php esc_html_e( 'Phone' ); ?></label></th>
			<td><input type="text" name="phone" value="<?php echo esc_html( get_the_author_meta( 'phone', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="gender"><?php esc_html_e( 'Gender' ); ?></label></th>
			<td><input type="text" name="gender" value="<?php echo esc_html( get_the_author_meta( 'gender', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
				<th><label for="birthdate"><?php esc_html_e( 'Birth Date' ); ?></label></th>
			<td><input type="text" name="birthdate" value="<?php echo esc_html( get_the_author_meta( 'birthdate', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="street_address"><?php esc_html_e( 'Street Address' ); ?></label></th>
			<td><textarea rows="4" name="street_address" cols="50"><?php echo esc_html( get_the_author_meta( 'street_address', $user->ID ) ); ?></textarea>
		</tr>

		<tr>
			<th><label for="apt_unit_suite"><?php esc_html_e( 'Apt. Unit. Suite' ); ?></label></th>
			<td><textarea rows="4" cols="50" name="apt_unit_suite"><?php echo esc_html( get_the_author_meta( 'apt_unit_suite', $user->ID ) ); ?></textarea></td>	
		</tr>

		<tr>
			<th><label for="location"><?php esc_html_e( 'Location' ); ?></label></th>
			<td><input type="text" name="location" value="<?php echo esc_html( get_the_author_meta( 'location', $user->ID ) ); ?>"></td>

			<th><label for="city"><?php esc_html_e( 'City' ); ?></label></th>
			<td><input type="text" name="city" value="<?php echo esc_html( get_the_author_meta( 'city', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="state"><?php esc_html_e( 'State' ); ?></label></th>
			<td><input type="text" name="state" value="<?php echo esc_html( get_the_author_meta( 'state', $user->ID ) ); ?>"></td>

			<th><label for="zip"><?php esc_html_e( 'Zip' ); ?></label></th>
			<td><input type="text" name="zip" value="<?php echo esc_html( get_the_author_meta( 'zip', $user->ID ) ); ?>"></td>
		</tr>



	</table>
	<table class="form-table add_network">

		<h3 class="heading">Additional Networks</h3>

		<tr>
			<th><label for="website"><?php esc_html_e( 'Website Link' ); ?></label></th>
			<td><input type="text" name="website" value="<?php echo esc_html( get_the_author_meta( 'website', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="youtube"><?php esc_html_e( 'Youtube Channel' ); ?></label></th>
			<td><input type="text" name="youtube" value="<?php echo esc_html( get_the_author_meta( 'youtube', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="instagram"><?php esc_html_e( 'Instagram Username' ); ?></label></th>
			<td><input type="text" name="instagram" value="<?php echo esc_html( get_the_author_meta( 'instagram', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="facebook"><?php esc_html_e( 'Facebook Username' ); ?></label></th>
			<td><input type="text" name="facebook" value="<?php echo esc_html( get_the_author_meta( 'facebook', $user->ID ) ); ?>"></td>
		</tr>
		
		<tr>
			<th><label for="twitter"><?php esc_html_e( 'Twitter Username' ); ?></label></th>
			<td><input type="text" name="twitter" value="<?php echo esc_html( get_the_author_meta( 'twitter', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="pinterest"><?php esc_html_e( 'Pinterest Username' ); ?></label></th>
			<td><input type="text" name="pinterest" value="<?php echo esc_html( get_the_author_meta( 'pinterest', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="whatsapp"><?php esc_html_e( 'Whatsapp Username' ); ?></label></th>
			<td><input type="text" name="whatsapp" value="<?php echo esc_html( get_the_author_meta( 'whatsapp', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="etsy"><?php esc_html_e( 'Etsy shop' ); ?></label></th>
			<td><input type="text" name="etsy" value="<?php echo esc_html( get_the_author_meta( 'etsy', $user->ID ) ); ?>"></td>
		</tr>

	</table>

		<table class="form-table payment_info">

		<h3 class="heading">Payment Information</h3>

		<tr>
			<th><label for="cardnumber"><?php esc_html_e( 'Card number' ); ?></label></th>
			<td><input type="text" name="cardnumber" value="<?php echo esc_html( get_the_author_meta( 'cardnumber', $user->ID ) ); ?>"></td>

			<th><label for="expirationdate"><?php esc_html_e( 'Expiration Date' ); ?></label></th>
			<td><input type="text" name="expirationdate" value="<?php echo esc_html( get_the_author_meta( 'expirationdate', $user->ID ) ); ?>"></td>
		</tr>

		<tr>
			<th><label for="ccv_cvv"><?php esc_html_e( 'ccv/cvv' ); ?></label></th>
			<td><input type="text" name="ccv_cvv" value="<?php echo esc_html( get_the_author_meta( 'ccv_cvv', $user->ID ) ); ?>"></td>

			<th><label for="name_on_card"><?php esc_html_e( 'Name on Card' ); ?></label></th>
			<td><input type="text" name="name_on_card" value="<?php echo esc_html( get_the_author_meta( 'name_on_card', $user->ID ) ); ?>"></td>
		</tr>		

	</table>


	<?php
}

add_action( 'user_profile_update_errors', 'validate_extra' );
function validate_extra(&$errors, $update = null, &$user  = null) {
	
	$account_username = $_POST["account_username"];
	if ( empty($account_username) ) {
		$errors->add('empty_account_username', "<strong>ERROR</strong>: Please enter a valid username.");
	}
	else if( !ctype_alnum($account_username) ) {
		$errors->add('alnum_account_username', "<strong>ERROR</strong>: Only Alpha Numeric characters without any spaces.");
	}
}


function update_profile_fields( $user_id ) {
	if ( ! current_user_can( 'edit_user', $user_id ) ) {
		return false;
	}
	
	if ( !empty( $_POST["account_username"] ) ) {
		update_user_meta( $user_id, 'account_username',  $_POST['account_username'] );
	}

	if ( ! empty( $_POST['phone'] ) ) {
		update_user_meta( $user_id, 'phone',  $_POST['phone'] );
	}

	if ( ! empty( $_POST['gender'] ) ) {
		update_user_meta( $user_id, 'gender',  $_POST['gender'] );
	}

	if ( ! empty( $_POST['birthdate'] ) ) {
		update_user_meta( $user_id, 'birthdate',  $_POST['birthdate'] );
	}

	if ( ! empty( $_POST['street_address'] ) ) {
		update_user_meta( $user_id, 'street_address',  $_POST['street_address'] );
	}

	if ( ! empty( $_POST['apt_unit_suite'] ) ) {
		update_user_meta( $user_id, 'apt_unit_suite',  $_POST['apt_unit_suite'] );
	}

	if ( ! empty( $_POST['location'] ) ) {
		update_user_meta( $user_id, 'location',  $_POST['location'] );
	}

	if ( ! empty( $_POST['city'] ) ) {
		update_user_meta( $user_id, 'city',  $_POST['city'] );
	}

	if ( ! empty( $_POST['state'] ) ) {
		update_user_meta( $user_id, 'state',  $_POST['state'] );
	}

	if ( ! empty( $_POST['zip'] ) ) {
		update_user_meta( $user_id, 'zip',  $_POST['zip'] );
	}

	if ( ! empty( $_POST['website'] ) ) {
		update_user_meta( $user_id, 'website',  $_POST['website'] );
	}

	if ( ! empty( $_POST['youtube'] ) ) {
		update_user_meta( $user_id, 'youtube',  $_POST['youtube'] );
	}

	if ( ! empty( $_POST['instagram'] ) ) {
		update_user_meta( $user_id, 'instagram',  $_POST['instagram'] );
	}

	if ( ! empty( $_POST['facebook'] ) ) {
		update_user_meta( $user_id, 'facebook',  $_POST['facebook'] );
	}

	if ( ! empty( $_POST['twitter'] ) ) {
		update_user_meta( $user_id, 'twitter',  $_POST['twitter'] );
	}

	if ( ! empty( $_POST['pinterest'] ) ) {
		update_user_meta( $user_id, 'pinterest',  $_POST['pinterest'] );
	}

	if ( ! empty( $_POST['whatsapp'] ) ) {
		update_user_meta( $user_id, 'whatsapp',  $_POST['whatsapp'] );
	}

	if ( ! empty( $_POST['etsy'] ) ) {
		update_user_meta( $user_id, 'etsy',  $_POST['etsy'] );
	}

	if ( ! empty( $_POST['cardnumber'] ) ) {
		update_user_meta( $user_id, 'cardnumber',  $_POST['cardnumber'] );
	}

	if ( ! empty( $_POST['expirationdate'] ) ) {
		update_user_meta( $user_id, 'expirationdate',  $_POST['expirationdate'] );
	}

	if ( ! empty( $_POST['ccv_cvv'] ) ) {
		update_user_meta( $user_id, 'ccv_cvv',  $_POST['ccv_cvv'] );
	}

	if ( ! empty( $_POST['name_on_card'] ) ) {
		update_user_meta( $user_id, 'name_on_card',  $_POST['name_on_card'] );
	}

}


// function check_fields($errors, $update, $user) {
// 	$errors->add('demo_error',__('This is a demo error, and will halt profile save'));
// }
// add_action('user_profile_update_errors', 'check_fields', 10, 3);

//add_filter('login_errors','login_error_message');

function login_error_message($error){
    //check if that's the error you are looking for
    $pos = strpos($error, 'Invalid');
    if (is_int($pos)) {
        //its the right error so you can overwrite it
        $error = "Wrong information";
    }
    return $error;
}

remove_filter( 'authenticate', 'wp_authenticate_username_password' );
add_filter( 'authenticate', 'custom_authenticate_username_password', 20, 3 );
/**
 * Remove Wordpress filer and write our own with changed error text.
 */
function custom_authenticate_username_password( $user, $username, $password ) {
    if ( is_a($user, 'WP_User') )
        return $user;

    if ( empty( $username ) || empty( $password ) ) {
        if ( is_wp_error( $user ) )
            return $user;

        $error = new WP_Error();

        if ( empty( $username ) )
            $error->add( 'empty_username', __('<strong>ERROR</strong>: The username field is empty.' ) );

        if ( empty( $password ) )
            $error->add( 'empty_password', __( '<strong>ERROR</strong>: The password field is empty.' ) );

        return $error;
    }

    $user = get_user_by( 'login', $username );

    if ( !$user )
        return new WP_Error( 'invalid_username', sprintf( __( '<strong>ERROR</strong>: Invalid username' ), wp_lostpassword_url() ) );

    $user = apply_filters( 'wp_authenticate_user', $user, $password );
    if ( is_wp_error( $user ) )
        return $user;

    if ( ! wp_check_password( $password, $user->user_pass, $user->ID ) )
        return new WP_Error( 'incorrect_password', sprintf( __( '<strong>ERROR</strong>: The password you entered for the username <strong>%1$s</strong> is incorrect.' ),
        $username, wp_lostpassword_url() ) );

    return $user;
}

add_filter( 'wp_dropdown_users_args', 'add_subscribers_to_dropdown', 10, 2 );
function add_subscribers_to_dropdown( $query_args, $r ) {
 
    $query_args['who'] = 'subscriber';
    return $query_args;
 
}

add_filter( 'register_post_type_args', 'my_post_type_args', 10, 2 );
function my_post_type_args( $args, $post_type ) {

	if ( 'espresso_events' === $post_type ) {
		$args['show_in_rest'] = true;

		// Optionally customize the rest_base or rest_controller_class
		// $args['rest_base']             = 'books';
		// $args['rest_controller_class'] = 'WP_REST_Posts_Controller';
	}

	return $args;
}