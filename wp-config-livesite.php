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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'dbqsf7p29up8ce' );

/** MySQL database username */
define( 'DB_USER', 'u8y5bz6ph3naz' );

/** MySQL database password */
define( 'DB_PASSWORD', 'znGMQ6theM4g' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         't^eQ)=5Ov{=g0$sLytZv&E(Xe|#s3G 0~K^V[)11ALAvD+*|,mhFjOkS1QnW`/B)' );
define( 'SECURE_AUTH_KEY',  '@GBdL*pok;e_x_-RXzwV]yTg$oZ|}j1tUWC9;FjUrKU f&NGDyPC-^aQkjX/x08W' );
define( 'LOGGED_IN_KEY',    'XX:_*$4z`9D=.T0!d1IkKG]+j8r9BG0Mo,5`5}4vXU.Z}hN$W#<#t@z c|B~!xB0' );
define( 'NONCE_KEY',        '254j Q?i_#mx*iB0_9g,LM[wqb&0h:N%O=iK^fx4|i)1yZcH.x^ q%ZP^kPk1`3I' );
define( 'AUTH_SALT',        'GkI6[rHWq;]d#e7Z2xhGMBG{YYTbqRsx};n[X9[$ND*epv@5-?(4uX#3c5Y==E$/' );
define( 'SECURE_AUTH_SALT', ',cVDOEp#HB6u#xM&+@K~?EK{XtNM+LO)8a-_/)ONtc_zmf;}-aI46!{WYr-#0$Z[' );
define( 'LOGGED_IN_SALT',   '|fAZroZBk89{a XeGy?-Gy(`}Ws2;2b PXCkM7RsTb*|?Cy7)8q6351@t! $)1jD' );
define( 'NONCE_SALT',       '+Yz@WIRjIkjBVFd]X%lp^A08/I+T9HKR5OsT/`r(_1,K]vmD,&aCb[4k)2rcr1Uu' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'bsx_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
