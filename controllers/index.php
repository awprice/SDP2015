<?php

$page['loggedin'] = false;

if (User::isLoggedIn()) {

    // If it's the user's first use, make sure they register
    if (User::firstUse()) {
        Session::setError('You have to register first before using this service.');
        Session::redirect('/register');
    }

    $page['loggedin'] = true;

    // search for the users bookings
    $bookings = UTSHelpsAPI::SearchWorkshopBookings([
        'studentId' => User::getPaddedId(),
        'pageSize' => 9999,
        'active' => true,
    ]);

    $currentTime = strtotime(Session::getCurrentDateTime());
    $count = 0;

    // Get all the upcoming bookings
    if ($bookings != null && $bookings->IsSuccess == 1) {
        foreach ($bookings->Results as $booking) {
            // if booking archived field does not have a date
            if ($booking->BookingArchived == null && strtotime($booking->starting) > $currentTime) {
                $count++;
            }
        }
    }

    $page['bookingCount'] = $count;

    $workshops = UTSHelpsAPI::ListWorkshopSets(true);

    if ($workshops != null && $workshops->IsSuccess == 1) {
        $page['workshops'] = count($workshops->Results);
    } else {
        $page['workshops'] = 0;
    }

}

?>