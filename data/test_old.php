<?php
/**
  * wechat php test
  */

require_once('persistent.php');
require_once('mysql.php');

function row_diff($row1, $row2) {
	$diff = array();
	if ($row1['field1'] != $row2['field1']) {
		$diff[] = array($row1['field1'], $row2['field1']);
	}
	if ($row1['field2'] != $row2['field2']) {
		$diff[] = array($row1['field2'], $row2['field2']);
	}
	return $diff;
}

$reader = persistent('TP_WEBSITE_READ');
$data1 = $reader->query("SELECT * FROM data WHERE 1=1", array())->map('email');
$data2 = $reader->query("SELECT * FROM data_new WHERE 1=1", array())->map('email');

$result1 = array();
foreach ($data1 as $key => $row) {
	// 这是用的一个系统函数来简单比较两个数组之间的区别
	//$result = array_diff($row, $data2[$key]);
	$result = row_diff($row, $data2[$key]);
	if (count($result) > 0) {
		$result1[$key] = $result;
	}

}

$result2 = array();
foreach ($data2 as $key => $row) {
	//$result = array_diff($row, $data1[$key]);
	$result = row_diff($row, $data1[$key]);
	if (count($result) > 0) {
		$result2[$key] = $result;
	}
}

print_r($result1);
print_r($result2);


?>