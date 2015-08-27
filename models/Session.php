<?php

    class Session {

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

    }

?>