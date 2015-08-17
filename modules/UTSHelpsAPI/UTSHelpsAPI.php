<?php

	require __DIR__ . '/curl.helper.php';

	/*
	 * Name: Register Student
     * Description: Create a student entry in HELPS
     * Path: api/student/register
     * Method: POST
     * Returns: JSON Object
     * Requires AppKey: true
	 */
	function RegisterStudent($data) {
		return json_decode(curl_post('/api/student/register', $data, true));
	}

?>
