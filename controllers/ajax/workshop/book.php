<?php

// Make sure the id is specified
if (!array_key_exists('id', $_POST) && $_POST['id'] == null) {
    Session::returnJsonMessage([
        'success' => false,
        'message' => 'No workshop ID provided, unable to book workshop.'
    ]);
}

$id = $_POST['id'];

// Check if the person hasn't already signed up to the workshop before
$bookings = UTSHelpsAPI::SearchWorkshopBookings([
    // Because the userid field in the uts database is 10 characters,
    // we have to pad the remaining with spaces.
    'studentId' => User::getPaddedId(),
    'pageSize' => 9999,
    'active' => true,
]);

if ($bookings != null && $bookings->IsSuccess == 1) {
    // Make sure the user hasn't already booked this workshop before.
    foreach ($bookings->Results as $booking) {
        if ($booking->workshopID == (int) $id && $booking->BookingArchived == null) {
            Session::returnJsonMessage([
                'success' => false,
                'message' => 'You have already booked this workshop, unable to book workshop.',
            ]);
        }
    }
} else {
    Session::returnJsonMessage([
        'success' => false,
        'message' => 'Unable to book workshop, an unknown error occured.',
    ]);
}

// If the user has too many strikes, don't allow them to book.
if (User::getStrikes() >= User::getMaxStrikes()) {
    Session::returnJsonMessage([
        'success' => false,
        'message' => 'Unable to create booking, you have too many strikes.',
    ]);
}

// This user hasn't booked the workshop before, we can safely book it now.
$booking = UTSHelpsAPI::CreateWorkshopBooking([
    'workshopId' => $id,
    'studentId' => User::getPaddedId(),
    'userId' => 123,
]);

if ($booking != null && $booking->IsSuccess == 1) {

    $user = User::getUser();

    $message = Notification::renderEmail('emails/booking.html', [
        'name' => $user['name'],
        'workshopId' => $id,
    ]);
    Notification::sendEmail($user['email'], $user['name'], 'Booking Created', $message);

    Session::returnJsonMessage([
        'success' => true,
        'message' => 'Successfully booked workshop!',
    ]);
}

Session::returnJsonMessage([
    'success' => false,
    'message' => 'Unable to create booking, please try again.',
]);

?>