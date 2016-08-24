<?php

$config = array();
$config['host'] = "127.0.0.1";
$config['user'] = "root";
$config['pass'] = "";
$config['name'] = "newtest";


$conn = mysql_connect($config['host'], $config['user'], $config['pass']);

mysql_select_db($config['name'], $conn);


$sql_old = "select * from data";

$result_old = mysql_query($sql_old);

echo count($result_old);

exit();
//////////////////////////////////////////////////////////////////

/*$row_old = mysql_fetch_assoc($result_old);

echo $row_old['email'];

// foreach ($row_old as $key => $value) {
// 	var_dump($row_old[$key]);
// }

if(is_array($rows)) {
	echo "yes";
} else {
	echo "no";
}
exit();
*/

//////////////////////////////////////////////////////////////////



while ($row_old = mysql_fetch_array($result_old)){
	//var_dump($row_old['email']);
	foreach ($row_old as $row -> $row_old['email'] ) {
		var_dump($row);
	}

}






$time = date("d.m.Y H:i:s");
echo $time;
//var_dump($row_old);




?>