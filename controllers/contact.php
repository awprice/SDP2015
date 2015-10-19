<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    Session::setSuccess('Message sent successfully!');
    Session::redirect('/contact');
}

?>