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
     * @param $filename
     * @return bool
     */
    static public function createAttendance($bookingId, $workshopId, $learnt, $taught, $filename) {

        if (self::getAttendance($bookingId) != null) {
            return false;
        }

        $mysql = new MySQL();
        $results = $mysql->query('INSERT INTO attendance(booking_id, workshop_id, student_id, attendance, learnt, taught, datecompleted, filename) VALUES (:booking_id, :workshop_id, :student_id, :attendance, :learnt, :taught, :datecompleted, :filename)', [
            ':booking_id' => $bookingId,
            ':workshop_id' => $workshopId,
            ':student_id' => User::getId(),
            ':attendance' => 1,
            ':learnt' => $learnt,
            ':taught' => $taught,
            ':datecompleted' => time(),
            ':filename' => $filename
        ]);

        return $results['success'];

    }

    /**
     * Creates a non attendance record for a booking id
     *
     * @param $bookingId
     * @param $workshopId
     * @return bool
     */
    static public function createNonAttendance($bookingId, $workshopId) {

        if (self::getAttendance($bookingId) != null) {
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

    /**
     * Generate a random string for the filename
     *
     * @return string
     */
    static public function generateRandomFileName() {

        $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);

        $randomString = '';

        for ($i = 0; $i < 32; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }

        return $randomString;

    }

}