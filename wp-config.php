<?php
/**
 * Il file base di configurazione di WordPress.
 *
 * Questo file viene utilizzato, durante l’installazione, dallo script
 * di creazione di wp-config.php. Non è necessario utilizzarlo solo via web
 * puoi copiare questo file in «wp-config.php» e riempire i valori corretti.
 *
 * Questo file definisce le seguenti configurazioni:
 *
 * * Impostazioni database
 * * Chiavi Segrete
 * * Prefisso Tabella
 * * ABSPATH
 *
 * * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Impostazioni database - È possibile ottenere queste informazioni dal proprio fornitore di hosting ** //
/** Il nome del database di WordPress */
define( 'DB_NAME', 'prestakey' );

/** Nome utente del database */
define( 'DB_USER', 'root' );

/** Password del database */
define( 'DB_PASSWORD', '' );

/** Hostname del database */
define( 'DB_HOST', 'localhost' );

/** Charset del Database da utilizzare nella creazione delle tabelle. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Il tipo di Collazione del Database. Da non modificare se non si ha idea di cosa sia. */
define('DB_COLLATE', '');

/**#@+
 * Chiavi Univoche di Autenticazione e di Salatura.
 *
 * Modificarle con frasi univoche differenti!
 * È possibile generare tali chiavi utilizzando {@link https://api.wordpress.org/secret-key/1.1/salt/ servizio di chiavi-segrete di WordPress.org}
 * È possibile cambiare queste chiavi in qualsiasi momento, per invalidare tuttii cookie esistenti. Ciò forzerà tutti gli utenti ad effettuare nuovamente il login.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '{H5&l^K3-8,5~#/0P+J{sI9;!^;FdrP>9TY5G]V2sn5rUqrI%Ey|gaa8fzrp8Q;P' );
define( 'SECURE_AUTH_KEY',  'y%={-/,b{v~D?5xQQG&J6h@^}S-DgU~T4dtrPG,!V7fKtyu[o$C<CJvU,xMSX^8F' );
define( 'LOGGED_IN_KEY',    '&T|+AAnB~~gbt!(U?b@.0yWu.7$g6Wu@t( GT6sH>i$4}+DGD{U6PwrWM<55xqt!' );
define( 'NONCE_KEY',        '8]WRHQE5z *(Kd1bb|Su.CIpV#]v%} I:DY0Wn9y)~`<^s8USnUOq3ljVyz+BoKI' );
define( 'AUTH_SALT',        '*65}`x6?WJGAAYv;#?je]i`Y(|XHlH8+mi>rB3>do+9.TA8Gd![ cSEX;k~$ijPP' );
define( 'SECURE_AUTH_SALT', '|*k3Sm0v)P(X=|:ZmMECwxF^QdJ<Z. =yZR;UuN.MnhAC!dsy_lNLD+{m?/.=0{W' );
define( 'LOGGED_IN_SALT',   'h<wc)!QU5z#rHDvdS&=?xY*L]6OK/MP&]$G#F%>A45+W!#Y3oQ6^n&/3m;6;%]4i' );
define( 'NONCE_SALT',       'f}uY}ukOEY?_@`1g$#VKXz&ltWR4A]7cJK}rdDUS8hS%+cEBB@R`55ijZtLL^9D*' );

/**#@-*/

/**
 * Prefisso Tabella del Database WordPress.
 *
 * È possibile avere installazioni multiple su di un unico database
 * fornendo a ciascuna installazione un prefisso univoco.
 * Solo numeri, lettere e sottolineatura!
 */
$table_prefix = 'wp_';

/**
 * Per gli sviluppatori: modalità di debug di WordPress.
 *
 * Modificare questa voce a TRUE per abilitare la visualizzazione degli avvisi durante lo sviluppo
 * È fortemente raccomandato agli svilupaptori di temi e plugin di utilizare
 * WP_DEBUG all’interno dei loro ambienti di sviluppo.
 *
 * Per informazioni sulle altre costanti che possono essere utilizzate per il debug,
 * leggi la documentazione
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define('WP_DEBUG', false);

/* Finito, interrompere le modifiche! Buon blogging. */

/** Path assoluto alla directory di WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Imposta le variabili di WordPress ed include i file. */
require_once(ABSPATH . 'wp-settings.php');
