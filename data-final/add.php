<?php

## 
## add data from phplist which has mark 'new' to table data_new
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
		'comments' => 'Comments1',
		'comments2' => 'Comments',
		'description' => 'Which describes you best?',
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
		'last_modified' => 'Last Modified',
		'entered' => 'Entered',
		'ip_address' => 'IP address',
	);

	$old_keys = array_keys($mainkeys);
	$new_keys = array_values($mainkeys);


	$diff = array();
	$item = array();

	if (!$row2) {
		
		foreach ($row1 as $key => $val) {
			if (in_array($key, $new_keys)) {

				//echo "1 ++++ " . $key;
				$diff[$key] = $val;

				foreach ($mainkeys as $k => $v) {
					$item[$k] = $diff[$v];
				}

			} else {
				//echo "0 ++++ " . $key;
			}
		}
		return $item;
	}

}

$reader = persistent('TP_WEBSITE_READ');

$result2 = array();
$query = $reader->query("SELECT * FROM new_record_toadd WHERE 1=1 LIMIT 0, 5000", array());

while ($row = $query->each()) {
	$key = $row['Email'];
	$target = $reader->query("SELECT * FROM data_new WHERE email='%s'", array($key))->first();	
	$result = row_diff($row, $target);
	if (count($result) > 0) {
		//var_dump($result);
		$writer = persistent('TP_WEBSITE_WRITE');
		$datawriter = $writer->insert('data_new', $result);
		
		if ($datawriter) {
			foreach ($datawriter as $x => $y) {
				$result2[$x] = $y;
			}
			if (array_key_exists('result', $result2) && array_key_exists('id', $result) && array_key_exists('email', $result)) {
				echo "insert successful:   " . 'ID:' . $result['id'] . '   Email:' . $result['email'];
				echo "\n";
			} else {
				echo "insert failed!";
			}
		}
	}
}

?>