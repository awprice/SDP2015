<?php

    // Destroy the session
    session_destroy();

    // Restart the session
    session_start();

    Session::setSuccess('You have been successfully logged out.');

    // Redirect to homepage
    Session::redirect('/login');

?>