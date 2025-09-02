<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'pagination_maximum_rows' => '17',
			'allow_page_subscription' => '1',
			'lang' => 'en',
			'version' => '2.2.5',
			'pages_table_nest_children' => 'yes',
			'strict_error_handling' => 'yes',
			'session_gc_divisor' => '10',
			'cookie_prefix' => 'sym-',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'Symphony CMS',
			'useragent' => 'Symphony/2.2.5',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
		),
		########


		###### DATABASE ######
		'database' => array(
			'character_set' => 'utf8',
			'character_encoding' => 'utf8',
			'runtime_character_set_alter' => '1',
			'query_caching' => 'on',
			'host' => 'localhost',
			'port' => '3306',
			'user' => 'vatowebc_harmful',
			'password' => 'AlgalBloom!',
			'db' => 'vatowebc_soundtoxins',
			'tbl_prefix' => 'sym_',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'yes',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'H:i',
			'date_format' => 'd F Y',
			'datetime_separator' => ' ',
			'timezone' => 'America/Los_Angeles',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0644',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0755',
		),
		########


		###### EMAIL ######
		'email' => array(
			'default_gateway' => 'sendmail',
		),
		########


		###### EMAIL_SENDMAIL ######
		'email_sendmail' => array(
			'from_name' => 'SoundToxins',
			'from_address' => 'noreply@67.225.137.20',
		),
		########


		###### EMAIL_SMTP ######
		'email_smtp' => array(
			'from_name' => 'Symphony',
			'from_address' => 'noreply@67.225.137.20',
			'host' => '127.0.0.1',
			'port' => '25',
			'secure' => 'no',
			'auth' => '0',
			'username' => 'Justin',
			'password' => 'Torgie',
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########
	);
