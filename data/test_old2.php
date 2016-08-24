<?php
/**
  * wechat php test
  */

require_once('persistent.php');
require_once('mysql.php');

function row_diff($row1, $row2) {
	$diff = array();
	if ($row1['firstname'] != $row2['firstname']) {
		$diff[] = array($row1['lastname'], $row2['lastname']);
	}
	if ($row1['lastname'] != $row2['lastname']) {
		$diff[] = array($row1['lastname'], $row2['lastname']);
	}
	return $diff;
}

$reader = persistent('TP_WEBSITE_READ');

$data = $reader->query("SELECT * FROM data WHERE 1=1", array())->map('email');

$result1 = array();
$query = $reader->query("SELECT * FROM data WHERE 1=1", array());
while ($row = $query->each()) {
	$key = $row['email'];
	$result = row_diff($row, $data[$key]);
	if (count($result) > 0) {
		$result1[$key] = $result;
	}
}

$data = $reader->query("SELECT * FROM data_new WHERE 1=1", array())->map('email');

$result2 = array();
$query = $reader->query("SELECT * FROM data_new WHERE 1=1 LIMIT", array());
while ($row = $query->each()) {
	$key = $row['email'];
	$result = row_diff($row, $data[$key]);
	if (count($result) > 0) {
		$result2[$key] = $result;
	}
}

print_r($result1);
print_r($result2);


?>