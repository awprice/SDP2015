<?php

class UTSHelpsAPI {

    /**
     * Name: RegisterStudent
     * Description: Create a student entry in HELPS
     * Path: api/student/register
     * Method: POST
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param $data
     * @return mixed
     */
    static function RegisterStudent($data)
    {
        return json_decode(Curl::curl_post('api/student/register', $data, true));
    }

    /**
     * Name: ListWorkshopSets
     * Description: List the sets of workshops
     * Path: api/workshop/workshopSets/{active}
     * Method: GET
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param bool $active
     * @return mixed
     */
    static function ListWorkshopSets($active = true)
    {
        $active = ($active) ? 'true' : 'false';
        return json_decode(Curl::curl_get('api/workshop/workshopSets/' . $active, null, true));
    }

    /**
     * Name: CreateWorkshopBooking
     * Description: Create a booking for a workshop
     * Path: api/workshop/booking/create
     * Method: POST
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param $data
     * @return mixed
     */
    static function CreateWorkshopBooking($data)
    {
        $parameters = '';
        if ($data != null) {
            $parameters .= '?' . http_build_query($data);
        }
        return json_decode(Curl::curl_post('api/workshop/booking/create' . $parameters, null, true));
    }

    /**
     * Name: CreateWorkshopWaiting
     * Description: Create a waiting list entry for a workshop
     * Path: api/workshop/wait/create
     * Method: POST
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param $data
     * @return mixed
     */
    static function CreateWorkshopWaiting($data)
    {
        $parameters = '';
        if ($data != null) {
            $parameters .= '?' . http_build_query($data);
        }
        return json_decode(Curl::curl_post('api/workshop/wait/create' . $parameters, null, true));
    }

    /**
     * Name: CancelWorkshopBooking
     * Description: Cancel a booking for a workshop. The next person on the waiting
     *              will have a booking made for them and their entry on the waiting
     *              list will be archived.
     * Path: api/workshop/booking/cancel
     * Method: POST
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param $data
     * @return mixed
     */
    static function CancelWorkshopBooking($data)
    {
        $parameters = '';
        if ($data != null) {
            $parameters .= '?' . http_build_query($data);
        }
        return json_decode(Curl::curl_post('api/workshop/booking/cancel' . $parameters, null, true));
    }

    /**
     * Name: SearchWorkshopBookings
     * Description: Search for bookings for workshops
     * Path: api/workshop/booking/search
     * Method: GET
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param $parameters
     * @return mixed
     */
    static function SearchWorkshopBookings($parameters)
    {
        return json_decode(Curl::curl_get('api/workshop/booking/search', $parameters, true));
    }

    /**
     * Name: SearchWorkshops
     * Description: Search for workshops
     * Path: api/workshop/search
     * Method: GET
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param $parameters
     * @return mixed
     */
    static function SearchWorkshops($parameters)
    {
        return json_decode(Curl::curl_get('api/workshop/search', $parameters, true));
    }

    /**
     * Name: UpdateWorkshopBooking
     * Description: Update a booking for a workshop
     * Path: api/workshop/booking/update
     * Method: PUT
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param $data
     * @return mixed
     */
    static function UpdateWorkshopBooking($data)
    {
        return json_decode(Curl::curl_put('api/workshop/booking/update', $data, true));
    }

    /**
     * Name: ListSessionTypes
     * Description: List the types of sessions available
     * Path: api/workshop/booking/update
     * Method: GET
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param bool $active
     * @return mixed
     */
    static function ListSessionTypes($active = true)
    {
        $active = ($active) ? 'true' : 'false';
        return json_decode(Curl::curl_get('api/session/sessionTypes/' . $active, null, true));
    }

    /**
     * Name: SearchSessionBookings
     * Description: Search for bookings for sessions
     * Path: api/session/booking/search
     * Method: GET
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param $parameters
     * @return mixed
     */
    static function SearchSessionBookings($parameters)
    {
        return json_decode(Curl::curl_get('api/session/booking/search', $parameters, true));
    }

    /**
     * Name: UpdateSessionBooking
     * Description: Update a booking for a session
     * Path: api/session/booking/update
     * Method: PUT
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param $data
     * @return mixed
     */
    static function UpdateSessionBooking($data)
    {
        return json_decode(Curl::curl_put('api/session/booking/update', $data, true));
    }

    /**
     * Name: ListCampuses
     * Description: List the campuses
     * Path: api/misc/campus/{active}
     * Method: GET
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param bool $active
     * @return mixed
     */
    static function ListCampuses($active = true)
    {
        $active = ($active) ? 'true' : 'false';
        return json_decode(Curl::curl_get('api/misc/campus/' . $active, null, true));
    }

    /**
     * Name: ListLecturers
     * Description: List the lecturers
     * Path: api/misc/lecturer/{active}
     * Method: GET
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param bool $active
     * @return mixed
     */
    static function ListLecturers($active = true)
    {
        $active = ($active) ? 'true' : 'false';
        return json_decode(Curl::curl_get('api/misc/lecturer/' . $active, null, true));
    }

    /**
     * Name: ListAppointments
     * Description: List the appointment types
     * Path: api/misc/appointment/{active}
     * Method: GET
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param bool $active
     * @return mixed
     */
    static function ListAppointments($active = true)
    {
        $active = ($active) ? 'true' : 'false';
        return json_decode(Curl::curl_get('api/misc/appointment/' . $active, null, true));
    }

    /**
     * Name: ListAssignments
     * Description: List the assignment types
     * Path: api/misc/assignment/{active}
     * Method: GET
     * Returns: JSON Object
     * Requires AppKey: true
     *
     * @param bool $active
     * @return mixed
     */
    static function ListAssignments($active = true)
    {
        $active = ($active) ? 'true' : 'false';
        return json_decode(Curl::curl_get('api/misc/assignment/' . $active, null, true));
    }

}

?>
