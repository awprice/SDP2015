<?php

    // Make sure this is the first time
    // the user has used the website
    if (!User::firstUse($_SESSION['studentId'])) {
        Session::setError('Cannot signup, you have already signed up before.');
        Session::redirect('/');
    }

    // If the request is post, try and sign them up
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        foreach ($_POST['signup'] as $key => $value) {
            if (is_array($value)) {
                $result = User::setEducation($value);
            } else {
                $result = User::setAttribute($key, $value);
            }
            if ($result == false) {
                Session::setError('Unable to complete your signup, please try again.');
                Session::redirect('/signup');
            }
        }

        User::setFirstUse();
        User::setLastLogin();
        Session::setSuccess('Signup complete!');
        Session::redirect('/');

    }

    // Get the user
    $page['user'] = User::getUser($_SESSION['studentId']);

?>