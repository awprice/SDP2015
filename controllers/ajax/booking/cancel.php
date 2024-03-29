<?php

header('Content-Type: application/json');

// Make sure the id is specified
if (!array_key_exists('bookingId', $_POST) && !array_key_exists('workshopId', $_POST) && $_POST['bookingId'] == null && $_POST['workshopId'] == null) {
    Session::returnJsonMessage([
        'success' => false,
        'message' => 'No booking ID or workshop ID provided, unable to cancel booking.'
    ]);
}

$bookingId = $_POST['bookingId'];
$workshopId = $_POST['workshopId'];

// Make sure the booking actually exists
$bookings = UTSHelpsAPI::SearchWorkshopBookings([
    'studentId' => User::getPaddedId(),
    'pageSize' => 9999,
    'active' => true,
]);

if ($bookings != null && $bookings->IsSuccess == 1) {
    // Make sure the booking exists
    $found = false;

    foreach ($bookings->Results as $booking) {
        if ($booking->BookingId == (int) $bookingId && $booking->workshopID == (int) $workshopId) {
            $found = true;
        }
    }

    if ($found == false) {
        Session::returnJsonMessage([
            'success' => false,
            'message' => 'This booking does not exist, unable to cancel booking.',
        ]);
    }
} else {
    Session::returnJsonMessage([
        'success' => false,
        'message' => 'Unable to cancel booking, an unknown error occured.',
    ]);
}

$updatedBookings = UTSHelpsAPI::UpdateWorkshopBooking([
    'workshopId' => $workshopId,
    'studentId' => User::getPaddedId(),
    'Canceled' => 1,
    'Attended' => 0,
    'userId' => 123
]);

if ($updatedBookings != null && $updatedBookings->IsSuccess == 1){

    // The booking exists, we can safely cancel it.
    $canceledBooking = UTSHelpsAPI::CancelWorkshopBooking([
        'workshopId' => $workshopId,
        'studentId' => User::getPaddedId(),
        'userId' => 123,
    ]);

    if ($canceledBooking != null && $canceledBooking->IsSuccess == 1) {
        Session::returnJsonMessage([
            'success' => true,
            'message' => 'Successfully cancelled booking!',
        ]);
    }

}

Session::returnJsonMessage([
    'success' => false,
    'message' => 'Unable to cancel booking, please try again.',
]);

?>