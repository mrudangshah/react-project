<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_tpw');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',            'C_Wup9T5}*u81q~a09-bx P+<%xx&Oq5%8Eq^-sc9S%;|-JYk^v=Ew%b[8UwH/Rs');
define('SECURE_AUTH_KEY',     '&{WaM<I~r%q-9&mG!P+6YBL,?F##%Iz1l] >x^:8C.j^D4Qt~Ag[S#R>LiL[LP{i');
define('LOGGED_IN_KEY',       ',<=z{{X/y~c9<M^![*&Ie_<*1QfMP|jcF(]xXU ><gQ*?Etd2t/9Iz*M0Sd6OF8[');
define('NONCE_KEY',           '|xJ:8-IVGE.M=Y &Y|<JKGEcii]1SAFVB,Y9/wFf99flh/5Q3#bIs0_PTg~|Xm%b');
define('AUTH_SALT',           'K#g[r4fk=E&YEw9u9>=*DZmVyck>qB.Z3D5x>wFMp}jMWWh+^i+,/P3}%}]&<;P|');
define('SECURE_AUTH_SALT',    '>+DFM`Ho]Q]p%1&Wo&da,h`ZH3N[U6fc,3%e2R--pSx@X(_+)4FLyNY}rW.cu?5%');
define('LOGGED_IN_SALT',      '+V.{~V$>?5?Cr`m8hju|xrs)5GJ-{Nt&~v!VeP+8VpWj>z3WKk*y:([)OTae_|4N');
define('NONCE_SALT',          ')m|{9Jc)lKMlX:/:7!x;a:U-X0{.o9?_H~,$7E:zwWU*UHrVY_jAE53./`V%eu(X');
define('JWT_AUTH_SECRET_KEY', 'C7h}6$>aXc6<3<B|8A]?_fN.Lyc{~vVlV!Tk8]_v}v>FZ%9n{t-S3_7Cwysqhe*g');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
define('FS_METHOD', 'direct');
define('JWT_AUTH_CORS_ENABLE', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
