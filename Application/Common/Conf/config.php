<?php

return array(
	'DB_TYPE'              => 'mysql',
	'DB_HOST'              => 'localhost',
	'DB_NAME'              => 'bnb',
	'DB_USER'              => 'bnb',
	'DB_PWD'               => '=sgl:CDwph^7',
	'DB_PORT'              => '3306',
	'DB_PREFIX'            => 'btchanges_',
	'ACTION_SUFFIX'        => '',
	'MULTI_MODULE'         => true,
	'MODULE_DENY_LIST'     => array('Common', 'Runtime'),
	'MODULE_ALLOW_LIST'    => array('Home', 'Admin'),
	'DEFAULT_MODULE'       => 'Home',
	'URL_CASE_INSENSITIVE' => false,
	'URL_MODEL'            => 2,
	'URL_HTML_SUFFIX'      => 'html',
	'UPDATE_PATH'          => './Database/Update/',
	'CLOUD_PATH'           => './Database/Cloud/',
    'HOST_IP'	=> '127.0.0.1',
	);
?>