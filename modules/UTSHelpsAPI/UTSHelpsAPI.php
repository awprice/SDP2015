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

    /*
     * Name: CreateWorkshopBooking
     * Description: Create a booking for a workshop
     * Path: api/workshop/booking/create
     * Method: POST
     * Returns: JSON Object
     * Requires AppKey: true
     */
    function CreateWorkshopBooking($data) {
        return json_decode(curl_post('api/workshop/booking/create', $data, true));
    }

    /*
     * Name: CreateWorkshopWaiting
     * Description: Create a waiting list entry for a workshop
     * Path: api/workshop/wait/create
     * Method: POST
     * Returns: JSON Object
     * Requires AppKey: true
     */
    function CreateWorkshopWaiting($data) {
        return json_decode(curl_post('api/workshop/wait/create', $data, true));
    }

    /*
     * Name: CancelWorkshopBooking
     * Description: Cancel a booking for a workshop. The next person on the waiting
     *              will have a booking made for them and their entry on the waiting
     *              list will be archived.
     * Path: api/workshop/booking/cancel
     * Method: POST
     * Returns: JSON Object
     * Requires AppKey: true
     */
    function CancelWorkshopBooking($data) {
        return json_decode(curl_post('api/workshop/booking/cancel', $data, true));
    }

?>
