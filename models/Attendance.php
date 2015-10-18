<?php

/**
 * Class Attendance
 */
class Attendance {

    /**
     * Get the attendance for a booking id
     *
     * @param $bookingId
     * @return null
     */
    static public function getAttendance($bookingId) {

        $mysql = new MySQL();
        $results = $mysql->query('SELECT * FROM attendance WHERE booking_id = :booking_id', [':booking_id' => $bookingId]);

        if ($results['success'] == true && !empty($results['results']) && $results['results'] != null) {
            return $results['results'];
        }

        return null;

    }

    /**
     * Creates an attendance record for a bookingid
     *
     * @param $bookingId
     * @param $workshopId
     * @param $learnt
     * @param $taught
     * @return bool
     */
    static public function createAttendance($bookingId, $workshopId, $learnt, $taught) {

        if (self::getAttendance($bookingId) != null) {
            return false;
        }

        $mysql = new MySQL();
        $results = $mysql->query('INSERT INTO attendance(booking_id, workshop_id, student_id, attendance, learnt, taught, datecompleted) VALUES (:booking_id, :workshop_id, :student_id, :attendance, :learnt, :taught, :datecompleted)', [
            ':booking_id' => $bookingId,
            ':workshop_id' => $workshopId,
            ':student_id' => User::getId(),
            ':attendance' => 1,
            ':learnt' => $learnt,
            ':taught' => $taught,
            ':datecompleted' => time()
        ]);

        if ($results['success']) {
            return true;
        }

        return false;

    }

    /**
     * Creates a non attendance record for a booking id
     *
     * @param $bookingId
     * @param $workshopId
     * @return bool
     */
    static public function createNonAttendance($bookingId, $workshopId) {

        if (self::getAttendance($bookingId) == null) {
            return false;
        }

        $mysql = new MySQL();
        $results = $mysql->query('INSERT INTO attendance(booking_id, workshop_id, student_id, attendance, learnt, taught, datecompleted) VALUES (:booking_id, :workshop_id, :student_id, :attendance, :learnt, :taught, :datecompleted)', [
            ':booking_id' => $bookingId,
            ':workshop_id' => $workshopId,
            ':student_id' => User::getId(),
            ':attendance' => 0,
            ':learnt' => 'DID NOT ATTEND',
            ':taught' => 'DID NOT ATTEND',
            ':datecompleted' => time()
        ]);

        if ($results['success']) {
            return true;
        }

        return false;

    }

    /**
     * Checks an attendance field as to whether its
     * not empty and has at least 100 words
     *
     * @param $field
     * @return bool
     */
    static public function checkAttendanceField($field) {

        if ($field == null || empty($field)) {
            return false;
        }

        if (str_word_count($field) < 100) {
            return false;
        }

        return true;

    }

}