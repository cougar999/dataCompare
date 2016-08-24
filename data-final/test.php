<?php

require_once('persistent.php');
require_once('mysql.php');

function row_diff($row1, $row2) {
	$diff = array();
	
	if (!$row2) {
		//echo 'target:' . $row1['email'] . ' not exists \n';
		foreach ($row1 as $key => $val) {
			$diff[] = array($key, $val);
		}
		$diff = $row1;
		return $diff;
	}

	//same fields between two tables
	if (trim($row1['id']) != trim($row2['id'])) {
		$diff[] = array('id', $row1['id'], $row2['id']);
	}
	if (trim($row1['first_name']) != trim($row2['first_name'])) {
		$diff[] = array('first_name', $row1['first_name'], $row2['first_name']);
	}
	if (trim($row1['last_name']) != trim($row2['last_name'])) {
		$diff[] = array('last_name', $row1['last_name'], $row2['last_name']);
	} 	
	
	if (trim($row1['entered']) != trim($row2['entered'])) {
		$diff[] = array('entered', $row1['entered'], $row2['entered']);
	}
	if (trim($row1['last_modified']) != trim($row2['last_modified'])) {
		$diff[] = array('last_modified', $row1['last_modified'], $row2['last_modified']);
	}
	if (trim($row1['unique_id']) != trim($row2['unique_id'])) {
		$diff[] = array('unique_id', $row1['unique_id'], $row2['unique_id']);
	}
	if (trim($row1['rss_frequency']) != trim($row2['rss_frequency'])) {
		$diff[] = array('rss_frequency', $row1['rss_frequency'], $row2['rss_frequency']);
	}
	if (trim($row1['type']) != trim($row2['type'])) {
		$diff[] = array('type', $row1['type'], $row2['type']);
	}
	if (trim($row1['street']) != trim($row2['street'])) {
		$diff[] = array('street', $row1['street'], $row2['street']);
	}
	if (trim($row1['city']) != trim($row2['city'])) {
		$diff[] = array('city', $row1['city'], $row2['city']);
	}
	// if (trim($row1['state']) != trim($row2['state'])) {
	// 	$diff[] = array('state', $row1['state'], $row2['state']);
	// }
	if (str_replace(' ', '', trim($row1['mobile']))  != str_replace(' ', '', trim($row2['mobile']))) {
		$diff[] = array('mobile', $row1['mobile'], $row2['mobile']);
	}
	if (str_replace(' ', '', trim($row1['home_phone']))  != str_replace(' ', '', trim($row2['home_phone']))) {
		$diff[] = array('home_phone', $row1['home_phone'], $row2['home_phone']);
	}
	if (str_replace(' ', '', trim($row1['mobile_phone']))  != str_replace(' ', '', trim($row2['mobile_phone']))) {
		$diff[] = array('mobile_phone', $row1['mobile_phone'], $row2['mobile_phone']);
	}
	if (str_replace(' ', '', trim($row1['fax']))  != str_replace(' ', '', trim($row2['fax']))) {
		$diff[] = array('fax', $row1['fax'], $row2['fax']);
	}
	if (trim($row1['country']) != trim($row2['country'])) {
		$diff[] = array('country', $row1['country'], $row2['country']);
	}
	if (trim($row1['country_of_origin']) != trim($row2['country_of_origin'])) {
		$diff[] = array('country_of_origin', $row1['country_of_origin'], $row2['country_of_origin']);
	}
	if (trim($row1['proposed_date']) != trim($row2['proposed_date'])) {
		$diff[] = array('proposed_date', $row1['proposed_date'], $row2['proposed_date']);
	}
	if (trim($row1['ministry_areas']) != trim($row2['ministry_areas'])) {
		$diff[] = array('ministry_areas', $row1['ministry_areas'], $row2['ministry_areas']);
	}
	if (trim($row1['proposed_venue']) != trim($row2['proposed_venue'])) {
		$diff[] = array('proposed_venue', $row1['proposed_venue'], $row2['proposed_venue']);
	}
	if (trim($row1['type_of_service']) != trim($row2['type_of_service'])) {
		$diff[] = array('type_of_service', $row1['type_of_service'], $row2['type_of_service']);
	}
	if (trim($row1['requested_topic']) != trim($row2['requested_topic'])) {
		$diff[] = array('requested_topic', $row1['requested_topic'], $row2['requested_topic']);
	}
	if (trim($row1['response']) != trim($row2['response'])) {
		$diff[] = array('response', $row1['response'], $row2['response']);
	}
	if (trim($row1['new_believer_story']) != trim($row2['new_believer_story'])) {
		$diff[] = array('new_believer_story', $row1['new_believer_story'], $row2['new_believer_story']);
	}
	if (trim($row1['praise_report_type']) != trim($row2['praise_report_type'])) {
		$diff[] = array('praise_report_type', $row1['praise_report_type'], $row2['praise_report_type']);
	}
	if (trim($row1['praiserepo_id']) != trim($row2['praiserepo_id'])) {
		$diff[] = array('praiserepo_id', $row1['praiserepo_id'], $row2['praiserepo_id']);
	}
	if (trim($row1['praise_message']) != trim($row2['praise_message'])) {
		$diff[] = array('praise_message', $row1['praise_message'], $row2['praise_message']);
	}
	if (trim($row1['comments2']) != trim($row2['comments2'])) {
		$diff[] = array('comments2', $row1['comments2'], $row2['comments2']);
	}
	if (trim($row1['date_of_birth']) != trim($row2['date_of_birth'])) {
		$diff[] = array('date_of_birth', $row1['date_of_birth'], $row2['date_of_birth']);
	}
	if (trim($row1['study_course']) !=trim( $row2['study_course'])) {
		$diff[] = array('study_course', $row1['study_course'], $row2['study_course']);
	}
	if (trim($row1['enquiry']) != trim($row2['enquiry'])) {
		$diff[] = array('enquiry', $row1['enquiry'], $row2['enquiry']);
	}
	if (trim($row1['minister_types']) != trim($row2['minister_types'])) {
		$diff[] = array('minister_types', $row1['minister_types'], $row2['minister_types']);
	}
	if (trim($row1['po_box']) != trim($row2['po_box'])) {
		$diff[] = array('po_box', $row1['po_box'], $row2['po_box']);
	}
	if (trim($row1['home_church']) != trim($row2['home_church'])) {
		$diff[] = array('home_church', $row1['home_church'], $row2['home_church']);
	}
	if (trim($row1['ip_address']) != trim($row2['ip_address'])) {
		$diff[] = array('ip_address', $row1['ip_address'], $row2['ip_address']);
	}
	if (trim($row1['how_did_you_find_us']) != trim($row2['how_did_you_find_us'])) {
		$diff[] = array('how_did_you_find_us', $row1['how_did_you_find_us'], $row2['how_did_you_find_us']);
	}
	if (trim($row1['partnership_mailout']) != trim($row2['partnership_mailout'])) {
		$diff[] = array('partnership_mailout', $row1['partnership_mailout'], $row2['partnership_mailout']);
	}
	if (trim($row1['newsletter_signup']) != trim($row2['newsletter_signup'])) {
		$diff[] = array('newsletter_signup', $row1['newsletter_signup'], $row2['newsletter_signup']);
	}
	if (trim($row1['business_contact']) != trim($row2['business_contact'])) {
		$diff[] = array('business_contact', $row1['business_contact'], $row2['business_contact']);
	}
	if (trim($row1['website']) != trim($row2['website'])) {
		$diff[] = array('website', $row1['website'], $row2['website']);
	}
	if (trim($row1['looking_for_home_church']) != trim($row2['looking_for_home_church'])) {
		$diff[] = array('looking_for_home_church', $row1['looking_for_home_church'], $row2['looking_for_home_church']);
	}
	if (trim($row1['interested_in_joining_life_group']) != trim($row2['interested_in_joining_life_group'])) {
		$diff[] = array('interested_in_joining_life_group', $row1['interested_in_joining_life_group'], $row2['interested_in_joining_life_group']);
	}
	if (trim($row1['interested2_id']) != trim($row2['interested2_id'])) {
		$diff[] = array('interested2_id', $row1['interested2_id'], $row2['interested2_id']);
	}
	if (trim($row1['end_times_seminar_admission_code']) != trim($row2['end_times_seminar_admission_code'])) {
		$diff[] = array('end_times_seminar_admission_code', $row1['end_times_seminar_admission_code'], $row2['end_times_seminar_admission_code']);
	}
	if (trim($row1['interested_to_visit_church_again']) != trim($row2['interested_to_visit_church_again'])) {
		$diff[] = array('interested_to_visit_church_again', $row1['interested_to_visit_church_again'], $row2['interested_to_visit_church_again']);
	}
	if (trim($row1['list_membership']) != trim($row2['list_membership'])) {
		$diff[] = array('list_membership', $row1['list_membership'], $row2['list_membership']);
	}
	

	$len = count($diff);

	echo 'target:' . $row1['email'] . ' (' . $len . ')';
	foreach ($diff as $key => $item) {
		echo ' ' . $item[0] . '[' . $item[1] . '!=' . $item[2] . '] <br>';
	}
	echo "\n";
	
	var_dump($diff);

	return $diff;
}

$reader = persistent('TP_WEBSITE_READ');

//$data = $reader->query("SELECT * FROM data WHERE 1=1", array())->map('email');

$result1 = array();
$query = $reader->query("SELECT * FROM data WHERE 1=1 LIMIT 0, 15000", array());
while ($row = $query->each()) {
	$key = $row['email'];
	$target = $data = $reader->query("SELECT * FROM data_new WHERE email='%s'", array($key))->first();
	$result = row_diff($row, $target);
	if (count($result) > 0) {
		$result1[$key] = $result;
		//wirte into old table		
		if($result1 && $result1[$key]) {
			$text = json_encode($result1[$key]);
			$writer = persistent('TP_WEBSITE_WRITE');
			$datawrite = $writer->query("UPDATE `__data` SET `mark`=1, `difference`='%s' WHERE `email`='%s'", array($text, $key));			
		}
	} 
}

//$data = $reader->query("SELECT * FROM data_new WHERE 1=1", array())->map('email');

$result2 = array();
$query = $reader->query("SELECT * FROM data_new WHERE 1=1 LIMIT 0, 15000", array());
while ($row = $query->each()) {
	$key = $row['email'];
	$target = $reader->query("SELECT * FROM data WHERE email='%s'", array($key))->first();	
	$result = row_diff($row, $target);
	$writer = persistent('TP_WEBSITE_WRITE');
	
	if (count($result) > 0) {
		$result2[$key] = $result;
		if ($result2[$key] && $result2[$key]['id']) {
			#new record
			echo "new record!";
			$datawrite = $writer->query("UPDATE `__data_new` SET `mark`=2, `difference`='new record' WHERE `email`='%s'", array($key));
		} else {
			#wirte 
			$text = json_encode($result2[$key]);
			$datawrite = $writer->query("UPDATE `__data_new` SET `mark`=1, `difference`='%s' WHERE `email`='%s'", array($text, $key));			
		}
	}
}

//var_dump($result1);
//var_dump($result2);

?>