<?php

    // Destroy the session
    session_destroy();

    // Restart the session
    session_start();

    // Redirect to homepage
    header('Location: /');
    exit();

?>