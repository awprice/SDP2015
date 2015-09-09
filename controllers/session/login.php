<?php

    // Redirect to the home page if they are already logged in
    if ($_SESSION['userId'] != '' || $_SESSION['userId'] != null) {
        Session::setError('You are already logged in.');
        Session::redirect('/');
    }

    // If the request is post, try and log them in
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // check whether the posted fields are empty

        if (!empty($_POST['login']['studentId']) && !empty($_POST['login']['password'])) {
            // try and log the user in
            if (User::attemptLogin($_POST['login']['studentId'], $_POST['login']['password'])) {
                $_SESSION['userId'] = $_POST['login']['studentId'];
                if ($_POST['login']['rememberMe'] == 'yes') {
                    $_SESSION['expiry'] = 0;
                } else {
                    Session::setExpiry();
                }
                Session::setSuccess('You have successfully been logged in.');
                Session::redirect('/');
            } else {
                Session::setError('Your Student ID or Password was incorrect or the account does not exist, please try again.');
                Session::redirect('/login');
            }
        } else {
            // set error message and redirect
            Session::setError('Unable to log you in, one or more fields was empty');
            Session::redirect('/login');
        }
    }

?>