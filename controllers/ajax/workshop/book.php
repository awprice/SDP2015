<?php

header('Content-Type: application/json');

// Make sure the id is specified
if (!array_key_exists('id', $_POST) && $_POST['id'] == null) {
    echo json_encode([
        'success' => false,
        'message' => 'No workshop ID provided, unable to book workshop.'
    ]);
    exit();
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
        if ($booking->workshopID == (int) $id) {
            echo json_encode([
                'success' => false,
                'message' => 'You have already booked this workshop, unable to book workshop.',
            ]);
            exit();
        }
    }
} else {
    echo json_encode([
        'success' => false,
        'message' => 'Unable to book workshop, an unknown error occured.',
    ]);
    exit();
}

echo json_encode([
    'success' => true,
    'message' => 'Successfully booked workshop!',
]);
exit();

?>