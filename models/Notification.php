<?php

class Notification {

    /**
     * Send an email using the Mandrill API
     *
     * @param $address
     * @param $name
     * @param $subject
     * @param $contents
     * @return bool
     */
    static function sendEmail($address, $name, $subject, $contents) {

        try {

            // Create mandrill object
            $mandrill = new Mandrill($GLOBALS['mandrill_key']);

            // Message
            $message = [
                'html' => $contents,
                'subject' => $subject,
                'from_email' => $GLOBALS['from_email'],
                'from_name' => $GLOBALS['from_name'],
                'to' => [
                    [
                        'email' => $address,
                        'name' => $name,
                        'type' => 'to'
                    ],
                ],
                'important' => true,
                'track_opens' => true,
                'track_clicks' => true,
            ];

            // Send the email
            $mandrill->messages->send($message, false, 'Main Pool', null);

            return true;

        } catch(Mandrill_Error $e) {
            return false;
        }

    }

    /**
     * Render template with variables for sending in an email
     *
     * @param $template
     * @param $page
     * @return string
     */
    static function renderEmail($template, $page) {

        // H2o object for rendering
        $h2o = new h2o(null, array('autoescape' => false));

        // Load template and render it
        $h2o->loadTemplate(__DIR__ . '/../views/' . $template);
        return $h2o->render(compact('page'));

    }

}