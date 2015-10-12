<?php

$page['loggedin'] = false;

if (User::isLoggedIn()) {
    if (User::firstUse()) {
        Session::setError('You have to register before using this application.');
        Session::redirect('/register');
    }
    $page['loggedin'] = true;
}

$bookings = UTSHelpsAPI::SearchWorkshopBookings([
    'studentId' => User::getPaddedId(),
    'pageSize' => 9999,
    'active' => true,
]);

$count = 0;

if ($bookings != null && $bookings->IsSuccess == 1) {
    foreach ($bookings->Results as $booking) {
        // if booking archived field does not have a date
        if ($booking->BookingArchived == null) {
            $count++;
        }
    }
}

$page['bookingCount'] = $count;


?>