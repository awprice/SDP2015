<?php

    // Make sure this is the first time
    // the user has used the website
    if (!User::firstUse()) {
        Session::setError('Cannot register, you have already registered before.');
        Session::redirect('/');
    }

    // If the request is post, try and sign them up
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        foreach ($_POST['register'] as $key => $value) {
            if (is_array($value)) {
                $result = User::setEducation($value);
            } else {
                $result = User::setAttribute($key, $value);
            }
            if ($result == false) {
                Session::setError('Unable to complete your registration, please try again.');
                Session::redirect('/register');
            }
        }

        User::setFirstUse();
        User::setLastLogin();
        Session::setSuccess('Register complete!');
        Session::redirect('/');

    }

    // Get the user
    $page['user'] = User::getUser();

?>