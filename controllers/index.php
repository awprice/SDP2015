<?php

$page['loggedin'] = false;

$currentTime = strtotime(Session::getCurrentDateTime());

if (User::isLoggedIn()) {
    if (User::firstUse()) {
        Session::setError('You have to register first before using this service.');
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
        $startDate = strtotime($booking->starting);
        if ($booking->BookingArchived == null && $startDate > $currentTime) {
            $count++;
        }
    }
}

$page['bookingCount'] = $count;


?>