<?php

require_once('persistent.php');
require_once('mysql.php');

#########
# Field: mark 	1 has diffence, need to check
#				2 new record
#				8 to be sovled by manually
#				9 correct, we do not need to care about it
#########


function markval($val, $key) {
	$writer = persistent('TP_WEBSITE_WRITE');
	$datawrite = $writer->query("UPDATE `__data_new` SET `mark`= %s WHERE `email`='%s'", array($val, $key));
	return $datawrite;
	//echo "Write successful!";
}

$reader = persistent('TP_WEBSITE_READ');
$query = $reader->query("SELECT * FROM `data_new` WHERE mark= 1 AND difference LIKE '%s' LIMIT 0, 15000", array('%[["home_phone"%'));

while ($row = $query->each()) {
	if ($row && $row['difference']) {
		$text = json_decode($row['difference']);
		$email = $row['email'] ? $row['email'] : '';
		$mobile_phone_num_ex = $row['mobile_phone'] ? str_replace(' ', '', trim($row['mobile_phone'])) : '';

		$home_phone = $text[0][0] ? $text[0][0] : '';
		$home_phone_num = $text[0][2] ? str_replace(' ', '', trim($text[0][2])) : '';
		$mobile_phone = $text[1][0] ? $text[1][0] : '';
		$mobile_phone_num = $text[1][1] ? str_replace(' ', '', trim($text[1][1])) : '';
		
		//var_dump($text);
		$len = count($text);

		if ($len > 2) {

			markval(8, $email);
			echo "<br>condition 3: array length more than 2, to be solved by manually, mark value -> 8 <br>";
				
		} elseif ($len < 3 && $home_phone == 'home_phone' && $mobile_phone == 'mobile_phone') {

			if ($home_phone_num  == $mobile_phone_num) {
				markval(9, $email);
				echo "<br>condition 1: home_phone & mobile_phone are same, correct,  mark value -> 9 <br>";
			}

		} elseif ($len < 2 && $home_phone == 'home_phone') {

			if ($mobile_phone_num_ex == $home_phone_num) {
				markval(9, $email);
				echo "<br>condition 2: home_phone changed and same with " . $mobile_phone_num_ex .", correct, mark value -> 9 <br>";
			} else {
				markval(8, $email);
				echo "<br>condition 4: only one difference, but not sure the home phone number is correct, to be solved by manually, mark value -> 8<br>";
			}

		} else {

			markval(8, $email);
			echo "<br>Unknown issues, to be sovled by manually, to be solved by manually, mark value -> 8<br>";

		}

	}
}

?>