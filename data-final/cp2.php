<?php

## 
## compare tables phplist_20160805 and data, mark which field was changed
## Field mark : 
## value: 1 => has diffences & has contents in Field difference
## value: new = > new record 
## 


require_once('persistent.php');
require_once('mysql.php');


function row_diff($row1, $row2) {
	
	$mainkeys = array(
		'id' => 'ID',
		'send_html_emails' => 'Send this user HTML emails',
		'rss_frequency' => 'RSS Frequency',
		'is_account_disabled' => 'Is this account disabled?',
		'first_name' => 'First Name',
		'last_name' => 'Last Name',
		'email' => 'Email',
		'date_of_birth' => 'Date of Birth',
		'date_registered' => 'Date Registered',
		'street' => 'Street',
		'city' => 'City',
		'state' => 'State',
		'postcode' => 'Post Code',
		'country' => 'Country',
		'home_phone' => 'Home Phone',
		'mobile_phone' => 'Mobile Phone',
		'contact_no' => 'Contact',
		'fax' => 'Fax',
		'comments' => 'Comments',
		'comments2' => 'Comments1',
		'type' => 'Type',
		'organization' => 'Church or Organization',
		'how_heard_book' => 'How did you hear about the book?',
		'interested_other_version_fbtj' => 'Interested in other Version FBTJ',
		'country_of_origin' => 'Country of Origin',
		'denomination' => 'If Christian please describe denomination',
		'volunteer_area' => 'Volunteering Area',
		'is_ordained_minister' => 'Are you an ordained minister?',
		'role_at_organization' => 'Role at Church or Organization',
		'proposed_date' => 'Proposed Date',
		'ministry_areas' => 'Ministry Areas',
		'proposed_venue' => 'Proposed Venue',
		'type_of_service' => 'Type of Service',
		'estimated_no_attendees' => 'Estimated No. of Attendees',
		'requested_topic' => 'Requested Topic',
		'response' => 'Response',
		'new_believer_story' => 'New Believer Story',
		'praise_report_type' => 'Praise Report Type',
		'praise_message' => 'Praise Message',
		'enquiry' => 'Enquiry',
		'minister_types' => 'Minister Types',
		'study_course' => 'Study Course',
		'po_box' => 'PO Box',
		'home_church' => 'Home Church',
		'how_did_you_find_us' => 'How did you find us?',
		'partnership_mailout' => 'Partnership mailout',
		'newsletter_signup' => 'Newsletter Signup',
		'business_contact' => 'Business Contact',
		'most_important_in_church' => 'What is the most important thing you look for in a church?',
		'website' => 'Website',
		'looking_for_home_church' => 'Looking for home church?',
		'interested_in_joining_life_group' => 'Interested in joining life group?',
		'interested_to_visit_church_again' => 'Interested to visit church again?',
		'end_times_seminar_admission_code' => 'End Times Seminar Admission Code',
		'list_membership' => 'List Membership',
		//'last_modified' => 'Last Modified',
		'entered' => 'Entered'
		);

	$old_keys = array_keys($mainkeys);
	$new_keys = array_values($mainkeys);

	$diff = array();

	if (!$row2) {
		//echo 'target:' . $row1['email'] . ' not exists \n';
		foreach ($row1 as $key => $val) {
			$diff[] = array($key, $val);
		}
		$diff = $row1;
		return $diff;
	}

	//compare same fields between two tables
	foreach ($row2 as $key => $value1) {
		if ($value1 && $mainkeys[$key] && $row1[$mainkeys[$key]]) {
			$w = array(' ', ';');
			$value1c = strtoupper(trim(str_replace($w, '', $value1)));
			$value2 = strtoupper(trim(str_replace($w, '', $row1[$mainkeys[$key]])));

			if ($value1c != $value2) {
				echo "\n";
				echo $key . '&&'. $value1 .' != ' . $mainkeys[$key] . '&&'.  $row1[$mainkeys[$key]];
				$diff[] = array ($key => $value1, $mainkeys[$key] => $row1[$mainkeys[$key]]);
			}
		}
	}

	echo 'target:' . $row1['email'] . ' (' . $len . ')';
	foreach ($diff as $key => $item) {
		echo ' ' . $item[0] . '[' . $item[1] . '!=' . $item[2] . '] <br>';
	}
	echo "\n";
	
	var_dump($diff);

	return $diff;
}

$reader = persistent('TP_WEBSITE_READ');

$result2 = array();
$query = $reader->query("SELECT * FROM phplist_20160805 WHERE 1=1 LIMIT 0, 20000", array());

while ($row = $query->each()) {
	$key = $row['Email'];
	$target = $reader->query("SELECT * FROM data WHERE email='%s'", array($key))->first();	
	$result = row_diff($row, $target);

	if (count($result) > 0) {
		$writer = persistent('TP_WEBSITE_WRITE');
		$result2[$key] = $result;
		
		if ($result2[$key] && $result2[$key]['ID']) {
			#new record
			echo "new record!";
			$datawrite = $writer->query("UPDATE `__phplist_20160805` SET `mark`='new', `difference`='new record' WHERE `email`='%s'", array($key));
		
		} else {
			#mark 
			$text = json_encode($result2[$key]);
			echo "find a difference at least";
			$datawrite = $writer->query("UPDATE `__phplist_20160805` SET `mark`= 1, `difference`='%s' WHERE `email`='%s'", array($text, $key));			
		
		}
	}
}


?>