<?php

// If the request is a post
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $bookingId = $_POST['bookingId'];

    $oneWeek = $_POST['reminder']['oneWeek'];
    $threeDays = $_POST['reminder']['threeDays'];
    $oneDay = $_POST['reminder']['oneDay'];

    if ($oneWeek === null) {
        $oneWeek = "0";
    }
    if ($threeDays === null) {
        $threeDays = "0";
    }
    if ($oneDay === null) {
        $oneDay = "0";
    }

    if (Notification::setNotification($bookingId, $oneWeek, $threeDays, $oneDay)) {
        Session::setSuccess('Set reminders successfully.');
        Session::redirect('/bookings');
    }

    Session::setError('Unable to set reminders, please try again.');
    Session::redirect('/bookings');

} else {
    Session::setError('Unable to set reminders, please try again.');
    Session::redirect('/bookings');
}

?>