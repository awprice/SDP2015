<?php

    class Session {

        /**
         * Sets up the session
         *
         * @param $title
         * @param $flashes
         * @param $restricted
         * @return array
         */
        static function init($title, $flashes, $restricted) {

            $page = [];
            $page['title'] = $title;

            if ($restricted && !User::isLoggedIn()) {
                self::setError('You must be logged in to access this page.');
                self::redirect('/login');
            }

            if ($flashes) {
                $page['flash'] = self::getFlashes();
            }

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

    }

?>