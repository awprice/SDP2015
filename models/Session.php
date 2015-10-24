<?php

    class Session {

        /**
         * Sets up the session
         *
         * @param $title
         * @param $flashes
         * @param $restricted
         * @param $registered
         * @return array
         */
        static function init($title, $flashes, $restricted, $registered) {

            $page = [];
            $page['title'] = $title;
            $page['_SESSION'] = $_SESSION;
            $page['websiteTitle'] = $GLOBALS['websiteTitle'];
            $page['loggedin'] = User::isLoggedIn();

            if ($page['loggedin']) {
                $page['user'] = User::getUser();
            }

            // Redirect to login if the user requests a restricted page is not logged in
            if ($restricted && !User::isLoggedIn()) {
                self::setError('You must be logged in to access this page.');
                self::redirect('/login');
            }

            // Redirect to login if user's session has expired
            if ($restricted && self::hasExpired()) {
                self::destroySession();
                self::setError('Your session has expired, please log back in.');
                self::redirect('/login');
            } else {
                // extend the session
                self::setExpiry();
            }

            // If the page is a registered only page, and the person is not registered, redirect
            if ($registered && User::firstUse()) {
                self::setError('You must be Registered to view this page.');
                self::redirect('/register');
            }

            if ($flashes) {
                $page['flash'] = self::getFlashes();
            }

            $page['_SESSION']['options']['font-size'] = 'normal';

            return $page;
        }

        /**
         * Get all of the flashes and unset them all
         *
         * @return array
         */
        static function getFlashes() {

            $flashes = [];

            if (!empty($_SESSION['flash']['error'])) {
                foreach ($_SESSION['flash']['error'] as $key => $error) {
                    $flashes['error'][] = $error;
                    unset($_SESSION['flash']['error'][$key]);
                }
            }

            if (!empty($_SESSION['flash']['success'])) {
                foreach ($_SESSION['flash']['success'] as $key => $error) {
                    $flashes['success'][] = $error;
                    unset($_SESSION['flash']['success'][$key]);
                }
            }

            return $flashes;

        }

        /**
         * Add an error message
         *
         * @param $message
         */
        static function setError($message) {
            $_SESSION['flash']['error'][] = $message;
        }

        /**
         * Add a success message
         *
         * @param $message
         */
        static function setSuccess($message) {
            $_SESSION['flash']['success'][] = $message;
        }

        /**
         * Redirects the user to another page
         *
         * @param $location
         */
        static function redirect($location) {
            header('Location: ' . $location);
            exit();
        }

        /**
         * Sets the expiry time of the session
         */
        static function setExpiry() {

            if ($_SESSION['expiry'] != 0 || !array_key_exists('expiry', $_SESSION)) {
                $_SESSION['expiry'] = time() + 3600;
            }

        }

        /**
         * Returns whether a session has expired
         *
         * @return bool
         */
        static function hasExpired() {

            if ($_SESSION['expiry'] != 0 && time() > $_SESSION['expiry']) {
                return true;
            }

            return false;
        }

        /**
         * Destroys the session
         */
        static function destroySession() {
            session_destroy();
            session_start();
        }

        /**
         * Sets an immediate error so it can be viewed on the current page load
         *
         * @param $page
         * @param $message
         * @return mixed
         */
        static function setImmediateError($page, $message) {
            $page['flash']['error'][] = $message;
            return $page;
        }

        /**
         * Sets an immediate success so it can be viewed on the current page load
         *
         * @param $page
         * @param $message
         * @return mixed
         */
        static function setImmediateSuccess($page, $message) {
            $page['flash']['success'][] = $message;
            return $page;
        }

        /**
         * Get the current date time setting from the database
         *
         * @return null|string
         */
        static function getCurrentDateTime() {

            $mysql = new MySQL();
            $results = $mysql->query('SELECT currentdatetime FROM misc', null);

            if ($results['success'] == true && !empty($results['results']) && $results['results'] != null) {
                return $results['results']['currentdatetime'];
            }

            return null;

        }

        /**
         * Get the future date time setting from the database
         *
         * @return null|string
         */
        static function getFutureDateTime() {

            $mysql = new MySQL();
            $results = $mysql->query('SELECT futuredatetime FROM misc', null);

            if ($results['success'] == true && !empty($results['results']) && $results['results'] != null) {
                return $results['results']['futuredatetime'];
            }

            return null;

        }

        /**
         * Set the currentdatetime
         *
         * @param $currentDateTime
         * @return bool
         */
        static function setCurrentDateTime($currentDateTime) {

            $mysql = new MySQL();
            $results = $mysql->query('UPDATE misc SET currentdatetime = :currentdatetime', [
               ':currentdatetime' => $currentDateTime
            ]);

            if ($results['success'] == true) {
                return true;
            }

            return false;

        }

        /**
         * Sets json as header and encodes and echos a json payload
         *
         * @param $data
         */
        static function returnJsonMessage($data) {
            // Set json header
            header('Content-Type: application/json');

            // Json encode our message and print it
            echo json_encode($data);
            exit();
        }

    }

?>