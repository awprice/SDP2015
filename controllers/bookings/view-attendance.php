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
            if ($value->BookingArchived == null && $value->attended == 1 && strtotime(Session::getCurrentDateTime()) > strtotime($value->starting)) {
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

$page['attendance'] = Attendance::getAttendance($bookingId);

?>