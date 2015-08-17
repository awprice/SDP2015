<?php

	require __DIR__ . '/curl.helper.php';

	/*
	 * Name: RegisterStudent
	 * Description: Create a student entry in HELPS
	 * Path: api/student/register
	 * Method: POST
	 * Returns: JSON Object
	 * Requires AppKey: true
	 */
	function RegisterStudent($data) {
		return json_decode(curl_post('api/student/register', $data, true));
	}

	/*
	 * Name: ListWorkshopSets
	 * Description: List the sets of workshops
	 * Path: api/workshop/workshopSets/{active}
	 * Method: GET
	 * Returns: JSON Object
	 * Requires AppKey: true
	 */
	function ListWorkshopSets($active = false) {
		if ($active) {
			$active = 'true';
		} else {
			$active = 'false';
		}
		return json_decode(curl_get('api/workshop/workshopSets/' . $active, true));
	}

?>
