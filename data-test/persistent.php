<?php
function fixInput($text) {
	if (get_magic_quotes_gpc()) {
		$text = stripslashes($text);
	}
	if (is_array($text)) {
		$text = implode("','", $text);
	} else { 
		$text = addslashes($text); 
	}
	$text = str_replace("\\\\\'", "'", $text);
	return $text;
}

function fixPrefix($sql, $prefix="") {
	return $sql = str_replace("__", $prefix, $sql);
}

function fixFormat($value) {
	return str_replace("%", "%%", $value);
}

function fixSql($sql, $p) {
	if (is_array($p)) {
		foreach ($p as $key => $value) { 
			if ($p[$key]) {
				$p[$key] = fixInput($value);	
			}
		}
		$query = call_user_func_array(sprintf, array_merge(array($sql), $p)); 
	} else {
		$p = fixInput($p); 
		$query = call_user_func(sprintf, $sql, $p); 
	}
	return $query;
}

function configure($schema=null) {
	include('database.inc');
	$configure = $tp['database'];
	if (empty($schema)) {
		return $configure;
	}
	if (empty($configure[$schema])) {
		die(sprintf("schema[%s] is not exist.", $schema));
	}
	return $configure[$schema];
}

function persistent($schema) {
	$setting = configure($schema);
	$type = $setting['type'];
	require_once("$type.php");
	$namespace = "";
	$classname = "$type";
	$target = $namespace.$classname;
	if ($target == 'mysql') {
		$object = mysql::$instance[$schema];
		if (empty($object)) {
		$object = mysql::$instance[$schema] = new mysql($setting);
		}
	}
	return $object;
}
?>