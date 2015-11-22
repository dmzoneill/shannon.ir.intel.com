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

define('WP_PROXY_HOST', '');
define('WP_PROXY_PORT', '911');
define('WP_PROXY_BYPASS_HOSTS', 'localhost, shannon.intel.com'); 
 
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', '');

/** MySQL database username */
define('DB_USER', '');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         '{)c+iL=`g41zD_]R3{LQZ}n<rHp->.![w1=&&+<bnL1Oe?(@UOQC:{TUCC6{S y5');
define('SECURE_AUTH_KEY',  'LfKk]l?_4!(^S#eIqA)QU}/-@Ypdzn&xTnq-]Wq,q]Pbu<=I){ZlLsYhsA7Q&CC;');
define('LOGGED_IN_KEY',    'rQktF=v>g*|URp&!tr@D;)4#FCF{^<j(dn^;7_-sH0>;2[yQIX.-3B/ $O:?eS /');
define('NONCE_KEY',        'f4~PD=1#|++NgiRK>:.Q#>a!R_Kahi }omB.t& +0S&TSK%<mhn]b*&P~S!N9U+<');
define('AUTH_SALT',        'y7n1!d`D}wpsb^2L2Cl*/I|=@T+nU}3p}7dd7}6)mM^ke,tg#_aJz}LebBO?9Svq');
define('SECURE_AUTH_SALT', 'b}G~q!jSo`X14POuI]Q^0+i_f%GH#B)5Z|&nbFEFS7&ru`3U<<)Q*c}<WzvvfKzM');
define('LOGGED_IN_SALT',   '5o#MnRPwn@OPH,jhw22pCPoXuA.qM82@R.Tmi|^p_UD@MV1WhB:<m!iPv3#{m9M6');
define('NONCE_SALT',       '<Y6=bu-@i&#.R$D-=,b,:3rn;KQWuX+)N%J%BmDn/F@DVPc3=IB<&BtQi9:ctWT6');

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

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
