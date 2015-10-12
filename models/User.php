<?php

    class User {

        /**
         * For converting camelcase keys to the keys used in the sql database
         *
         * @var array
         */
        private static $mysql_keys = [
            'preferredFirstName' => 'preferred_first_name',
            'bestContactNumber' => 'best_contact_no',
            'firstLanguage' => 'first_language',
            'countryOfOrigin' => 'country_of_origin',
            'degree' => 'degree',
            'status' => 'status',
            'year' => 'year',
            'other' => 'other',
            'hsc' => 'hsc',
            'hsc_mark' => 'hsc_mark',
            'ielts' => 'ielts',
            'ielts_mark' => 'ielts_mark',
            'toefl' => 'toefl',
            'toefl_mark' => 'toefl_mark',
            'tafe' => 'tafe',
            'tafe_mark' => 'tafe_mark',
            'cult' => 'cult',
            'cult_mark' => 'cult_mark',
            'insearchDeep' => 'insearch_deep',
            'insearchDeep_mark' => 'insearch_deep_mark',
            'insearchDiploma' => 'insearch_diploma',
            'insearchDiploma_mark' => 'insearch_diploma_mark',
            'foundationCourse' => 'foundation_course',
            'foundationCourse_mark' => 'foundation_course_mark',
        ];

        /**
         * Length of ids as stored in uts helps api
         *
         * @var int
         */
        private static $idLength = 10;

        /**
         * Get the current logged in user's id
         *
         * @return mixed
         */
        static function getId() {
            if (isset($_SESSION['studentId'])) {
                return $_SESSION['studentId'];
            }  else {
                return null;
            }
        }

        /**
         * Get a user
         *
         * @return null
         */
        static function getUser() {

            $mysql = new MySQL();
            $results = $mysql->query('SELECT * FROM users WHERE student_id = :studentId', [':studentId' => self::getId()]);

            if ($results['success'] == true && !empty($results['results']) && $results['results'] != null) {
                return $results['results'];
            }

            return null;

        }

        /**
         * Attempts a login by hashing the password and comparing to stored password
         *
         * @param $studentId
         * @param $password
         * @return bool
         */
        static function attemptLogin($studentId, $password) {

            $mysql = new MySQL();
            $results = $mysql->query('SELECT password FROM users WHERE student_id = :studentId', [':studentId' => $studentId]);

            if ($results['success'] == true && !empty($results['results']) && $results['results'] != null) {
                if (self::verifyPassword($password, $results['results']['password'])) {
                    return true;
                }
            }

            return false;

        }

        /**
         * Checks as to whether a user is logged in
         *
         * @return bool
         */
        static function isLoggedIn() {

            if (self::getId() != null) {
                return true;
            }

            return false;

        }

        /**
         * Hashes a password
         *
         * @param $password
         * @return bool|string
         */
        static function hashPassword($password) {
            return password_hash($password, PASSWORD_DEFAULT);
        }

        /**
         * Verifies a password and hash
         *
         * @param $password
         * @param $hash
         * @return bool
         */
        static function verifyPassword($password, $hash) {
            return password_verify($password, $hash);
        }

        /**
         * Checks whether a user exists in the user table
         *
         * @param $studentId
         * @return bool
         */
        static function userExists($studentId) {

            $mysql = new MySQL();
            $results = $mysql->query('SELECT * FROM users WHERE student_id = :studentId', [':studentId' => $studentId]);

            if ($results['success'] == true && !empty($results['results']) && $results['results'] != null) {
                return true;
            }

            return false;

        }

        /**
         * Returns whether this is the first time a user has been on the website.
         *
         * @return bool
         */
        static function firstUse() {

            $mysql = new MySQL();
            $results = $mysql->query('SELECT firstuse FROM users WHERE student_id = :studentId', [':studentId' => self::getId()]);

            if ($results['success'] == true && !empty($results['results']) && $results['results'] != null) {
                if ($results['results']['firstuse'] === '1') {
                    return true;
                }
                return false;
            }
            return true;
        }

        /**
         * Set a user attribute
         *
         * @param $key
         * @param $value
         * @return bool
         */
        static function setAttribute($key, $value) {

            if (array_key_exists($key, self::$mysql_keys)) {

                $mysql = new MySQL();
                $results = $mysql->query('UPDATE users SET ' . self::$mysql_keys[$key] . ' = :attribute_value WHERE student_id = :student_id',
                    [':attribute_value' => $value, ':student_id' => self::getId()]);

                if ($results['success'] == true) {
                    return true;
                }

            }

            return false;

        }

        /**
         * Set education marks from an array
         *
         * @param $values
         * @return bool
         */
        static function setEducation($values) {

            foreach ($values as $key => $value) {

                if (!self::setAttribute($key, 1) || !self::setAttribute($key . '_mark', $value['mark'])) {
                    return false;
                }

            }

            return true;

        }

        /**
         * Sets the user's first use to false
         *
         * @return bool
         */
        static function setFirstUse() {

            $mysql = new MySQL();
            $results = $mysql->query('UPDATE users SET firstuse = 0 WHERE student_id = :student_id',
                [':student_id' => self::getId()]);

            return $results['success'];

        }

        /**
         * Sets a users last login
         *
         * @return bool
         */
        static function setLastLogin() {

            $mysql = new MySQL();
            $results = $mysql->query('UPDATE users SET lastlogin = :lastlogin WHERE student_id = :student_id',
                [':lastlogin' => time(), ':student_id' => self::getId()]);

            return $results['success'];

        }

        /**
         * Pads a user id to the amount that is used by the uts helps api
         *
         * @return mixed|string
         */
        static function getPaddedId() {

            $length = strlen(self::getId());
            if ($length < self::$idLength) {
                $padAmount = self::$idLength - $length;
                return self::getId() . str_repeat(' ', $padAmount);
            }
            return self::getId();

        }

    }

?>