<?php

$page['loggedin'] = false;

if (User::isLoggedIn()) {
    if (User::firstUse()) {
        Session::setError('You have to register before using this application.');
        Session::redirect('/register');
    }
    $page['loggedin'] = true;
}

?>