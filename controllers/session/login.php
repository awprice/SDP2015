<?php

    // Redirect to the home page if they are already logged in
    if ($_SESSION['userId'] != '' || $_SESSION['userId'] != null) {
        Session::setError('You are already logged in.');
        Session::redirect('/');
    }

    // If the request is post, try and log them in
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // check whether the posted fields are empty
        if (!empty($_POST['inputStudentID']) && !empty($_POST['inputPassword'])) {
            // try and log the user in
            if (User::attemptLogin($_POST['inputStudentID'], $_POST['inputPassword'])) {
                if ($_POST['inputRememberMe'] === 'yes') {
                    $_SESSION['expires'] = 'no';
                }
                $_SESSION['userId'] = $_POST['inputStudentID'];
                Session::redirect('/');
            }
        } else {
            // set error message and redirect
            Session::setError('Unable to log you in, one or more fields was empty');
            Session::redirect('/login');
        }
    }

    $h2o = new h2o(__DIR__ . '/../../views/session/login.html');
    echo $h2o->render(compact('page'));

?>