<?php
/**
  * wechat php test
  */

require_once('persistent.php');
require_once('mysql.php');

function row_diff($row1, $row2) {
	

	$diff = array();
	if ($row1['last_name'] != $row2['last_name']) {
		$diff[] = array($row1['last_name'], $row2['last_name']);
	}
	if ($row1['first_name'] != $row2['first_name']) {
		$diff[] = array($row1['first_name'], $row2['first_name']);
	}
 	if ($row1['id'] != $row2['id']) {
		$diff[] = array($row1['id'], $row2['id']);
	}
	if ($row1['mobile'] != $row2['mobile']) {
		$diff[] = array($row1['mobile'], $row2['mobile']);
	}
	if ($row1['data_comment'] != $row2['data_comment']) {
		$diff[] = array($row1['data_comment'], $row2['data_comment']);
	}
	if ($row1['entered'] != $row2['entered']) {
		$diff[] = array($row1['entered'], $row2['entered']);
	}
	if ($row1['last_modified'] != $row2['last_modified']) {
		$diff[] = array($row1['last_modified'], $row2['last_modified']);
	}
	if ($row1['unique_id'] != $row2['unique_id']) {
		$diff[] = array($row1['unique_id'], $row2['unique_id']);
	}
	if ($row1['rss_frequency'] != $row2['rss_frequency']) {
		$diff[] = array($row1['rss_frequency'], $row2['rss_frequency']);
	}
	if ($row1['type'] != $row2['type']) {
		$diff[] = array($row1['type'], $row2['type']);
	}
	if ($row1['street'] != $row2['street']) {
		$diff[] = array($row1['street'], $row2['street']);
	}
	if ($row1['city'] != $row2['city']) {
		$diff[] = array($row1['city'], $row2['city']);
	}
	if ($row1['state'] != $row2['state']) {
		$diff[] = array($row1['state'], $row2['state']);
	}
	if ($row1['home_phone'] != $row2['home_phone']) {
		$diff[] = array($row1['home_phone'], $row2['home_phone']);
	}
	if ($row1['mobile_phone'] != $row2['mobile_phone']) {
		$diff[] = array($row1['mobile_phone'], $row2['mobile_phone']);
	}
	if ($row1['fax'] != $row2['fax']) {
		$diff[] = array($row1['fax'], $row2['fax']);
	}
	if ($row1['country'] != $row2['country']) {
		$diff[] = array($row1['country'], $row2['country']);
	}
	if ($row1['country_of_origin'] != $row2['country_of_origin']) {
		$diff[] = array($row1['country_of_origin'], $row2['country_of_origin']);
	}
	if ($row1['proposed_date'] != $row2['proposed_date']) {
		$diff[] = array($row1['proposed_date'], $row2['proposed_date']);
	}
	if ($row1['ministry_areas'] != $row2['ministry_areas']) {
		$diff[] = array($row1['ministry_areas'], $row2['ministry_areas']);
	}
	if ($row1['proposed_venue'] != $row2['proposed_venue']) {
		$diff[] = array($row1['proposed_venue'], $row2['proposed_venue']);
	}
	if ($row1['type_of_service'] != $row2['type_of_service']) {
		$diff[] = array($row1['type_of_service'], $row2['type_of_service']);
	}
	if ($row1['requested_topic'] != $row2['requested_topic']) {
		$diff[] = array($row1['requested_topic'], $row2['requested_topic']);
	}
	if ($row1['response'] != $row2['response']) {
		$diff[] = array($row1['response'], $row2['response']);
	}
	if ($row1['new_believer_story'] != $row2['new_believer_story']) {
		$diff[] = array($row1['new_believer_story'], $row2['new_believer_story']);
	}
	if ($row1['praise_report_type'] != $row2['praise_report_type']) {
		$diff[] = array($row1['praise_report_type'], $row2['praise_report_type']);
	}
	if ($row1['praiserepo_id'] != $row2['praiserepo_id']) {
		$diff[] = array($row1['praiserepo_id'], $row2['praiserepo_id']);
	}
	if ($row1['praise_message'] != $row2['praise_message']) {
		$diff[] = array($row1['praise_message'], $row2['praise_message']);
	}
	if ($row1['comments2'] != $row2['comments2']) {
		$diff[] = array($row1['comments2'], $row2['comments2']);
	}
	if ($row1['date_of_birth'] != $row2['date_of_birth']) {
		$diff[] = array($row1['date_of_birth'], $row2['date_of_birth']);
	}
	if ($row1['study_course'] != $row2['study_course']) {
		$diff[] = array($row1['study_course'], $row2['study_course']);
	}
	if ($row1['enquiry'] != $row2['enquiry']) {
		$diff[] = array($row1['enquiry'], $row2['enquiry']);
	}
	if ($row1['minister_types'] != $row2['minister_types']) {
		$diff[] = array($row1['minister_types'], $row2['minister_types']);
	}
	if ($row1['po_box'] != $row2['po_box']) {
		$diff[] = array($row1['po_box'], $row2['po_box']);
	}
	if ($row1['home_church'] != $row2['home_church']) {
		$diff[] = array($row1['home_church'], $row2['home_church']);
	}
	if ($row1['ip_address'] != $row2['ip_address']) {
		$diff[] = array($row1['ip_address'], $row2['ip_address']);
	}
	if ($row1['how_did_you_find_us'] != $row2['how_did_you_find_us']) {
		$diff[] = array($row1['how_did_you_find_us'], $row2['how_did_you_find_us']);
	}
	if ($row1['partnership_mailout'] != $row2['partnership_mailout']) {
		$diff[] = array($row1['partnership_mailout'], $row2['partnership_mailout']);
	}
	if ($row1['newsletter_signup'] != $row2['newsletter_signup']) {
		$diff[] = array($row1['newsletter_signup'], $row2['newsletter_signup']);
	}
	if ($row1['business_contact'] != $row2['business_contact']) {
		$diff[] = array($row1['business_contact'], $row2['business_contact']);
	}
	if ($row1['website'] != $row2['website']) {
		$diff[] = array($row1['website'], $row2['website']);
	}
	if ($row1['looking_for_home_church'] != $row2['looking_for_home_church']) {
		$diff[] = array($row1['looking_for_home_church'], $row2['looking_for_home_church']);
	}
	if ($row1['interested_in_joining_life_group'] != $row2['interested_in_joining_life_group']) {
		$diff[] = array($row1['interested_in_joining_life_group'], $row2['interested_in_joining_life_group']);
	}
	if ($row1['interested2_id'] != $row2['interested2_id']) {
		$diff[] = array($row1['interested2_id'], $row2['interested2_id']);
	}
	if ($row1['end_times_seminar_admission_code'] != $row2['end_times_seminar_admission_code']) {
		$diff[] = array($row1['end_times_seminar_admission_code'], $row2['end_times_seminar_admission_code']);
	}
	if ($row1['interested_to_visit_church_again'] != $row2['interested_to_visit_church_again']) {
		$diff[] = array($row1['interested_to_visit_church_again'], $row2['interested_to_visit_church_again']);
	}
	if ($row1['list_membership'] != $row2['list_membership']) {
		$diff[] = array($row1['list_membership'], $row2['list_membership']);
	}

	if (count($diff) >0) {
		print_r($diff);
	} else {
		echo "0 | ";
	}
	return $diff;
}

$reader = persistent('TP_WEBSITE_READ');

//$data = $reader->query("SELECT * FROM district WHERE 1=1", array())->map('email');

$result1 = array();
$query = $reader->query("SELECT * FROM data WHERE 1=1 LIMIT 0, 15000", array());
while ($row = $query->each()) {
	$key = $row['email'];
	$target = $data = $reader->query("SELECT * FROM data WHERE email='%s'", array($key))->first();
	$result = row_diff($row, $target);
	if (count($result) > 0) {
		$result1[$key] = $result;
	}
}

//$data = $reader->query("SELECT * FROM district WHERE 1=1", array())->map('email');

$result2 = array();
$query = $reader->query("SELECT * FROM data_new WHERE 1=1 LIMIT 0, 15000", array());
while ($row = $query->each()) {
	$key = $row['email'];
	$target = $reader->query("SELECT * FROM data_new WHERE email='%s'", array($key))->first();
	$result = row_diff($row, $target);
	if (count($result) > 0) {
		$result2[$key] = $result;
	}
}

print_r($result1);
print_r($result2);


?>