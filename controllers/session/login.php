<?php

    $page["title"] = "Login";

    // Redirect to the home page if they are already logged in
    if ($_SESSION['userId'] != '' || $_SESSION['userId'] != null) {
        header('Location: /');
    }

    // If the request is post, try and log them in
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // check whether the posted fields are empty
        if (!empty($_POST['inputStudentID']) && !empty($_POST['inputPassword'])) {
            // try and log the user in
            if (User::attemptLogin($_POST['inputStudentID'], $_POST['inputPassword'])) {
                $_SESSION['userId'] = $_POST['inputStudentID'];
                header('Location: /');
            }
        } else {
            $page['error'] = 'One or more fields was empty';
        }
    }

    $h2o = new h2o(__DIR__ . '/../../views/session/login.html');
    echo $h2o->render(compact('page'));

?>