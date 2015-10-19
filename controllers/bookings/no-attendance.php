<?php

$bookingId = (int) $page['parameters']['bookingId'];

$bookings = UTSHelpsAPI::SearchWorkshopBookings([
    'studentId' => User::getPaddedId(),
    'pageSize' => 9999,
    'active' => true,
]);

$page['booking'] = null;

if ($bookings != null && $bookings->IsSuccess == 1) {

    foreach($bookings->Results as $value) {

        if ($value->BookingId == $bookingId) {
            if ($value->BookingArchived == null && $value->attended == null && strtotime(Session::getCurrentDateTime()) > strtotime($value->starting)) {
                $page['booking'] = $value;
            } else {
                Session::setError('Booking has not been completed, please try again.');
                Session::redirect('/bookings');
            }
        }

    }

}

if ($page['booking'] == null) {
    Session::setError('Booking does not exist, please try again.');
    Session::redirect('/bookings');
}

// Make sure attendance hasn't already been recorded for this booking,
// or the booking hasn't been set as cancelled
$attendance = Attendance::getAttendance($bookingId);
if ($attendance != null) {
    Session::setError('You have already recorded attendance for this workshop.');
    Session::redirect('/bookings');
}

// If the request is a post
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $createNonAttendance = Attendance::createNonAttendance($bookingId, $page['booking']->workshopID);

    $updateBooking = UTSHelpsAPI::UpdateWorkshopBooking([
       'workshopId' => $page['booking']->workshopID,
        'studentId' => User::getPaddedId(),
        'Attended' => 0,
        'Canceled' => 0,
        'userId' => 123
    ]);

    if ($createNonAttendance && $updateBooking != null && $updateBooking->IsSuccess == 1) {
        Session::setSuccess('Successfully recorded non-attendance for this booking.');
        Session::redirect('/bookings');
    }

    Session::setError('Unable to record non-attendance for this booking, please try again.');
    Session::redirect('/bookings');

}

?>