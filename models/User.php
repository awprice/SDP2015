<?php

    class User {

        /**
         * Attempts a login by hashing the password and comparing to stored password
         *
         * @param $userId
         * @param $password
         * @return bool
         */
        static function attemptLogin($userId, $password) {

            $mysql = new MySQL();
            $results = $mysql->query('SELECT userid, password FROM user WHERE userid = :userid AND password = :password', [':userid' => $userId, ':password' => $password]);

            if ($results['success'] == true && !empty($results['results']) && $results['results'] != null) {
                return true;
            }

            return false;

        }

        /**
         * Checks as to whether a user is logged in
         *
         * @return bool
         */
        static function isLoggedIn() {

            if (!empty($_SESSION['userId']) && $_SESSION['userId'] != null) {
                return true;
            }

            return false;

        }

    }

?>