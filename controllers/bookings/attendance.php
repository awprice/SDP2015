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

    // Make sure the fields are correct
    if (!Attendance::checkAttendanceField($_POST['attendance']['taught']) || !Attendance::checkAttendanceField($_POST['attendance']['learn'])) {
        $page = Session::setImmediateError($page, 'You have not met the minimum word count for some of these fields, please try again.');
        // Set the field text so the user does not have to retype it
        $page['field']['taught'] = $_POST['attendance']['taught'];
        $page['field']['learn'] = $_POST['attendance']['learn'];
    } else {

        // Make sure the file name does not contain php in it
        if (strpos($_FILES['attendance']['name']['file'], 'php')) {
            Session::setError('File rejected');
            Session::redirect('/bookings');
        }

        // Make the filename
        $extension = pathinfo($_FILES['attendance']['name']['file'], PATHINFO_EXTENSION);
        $filename = Attendance::generateRandomFileName() . '.' . $extension;

        // Upload file path
        $uploadedFile = $GLOBALS['file-directory'] . basename($filename);

        if (!move_uploaded_file($_FILES['attendance']['tmp_name']['file'], $uploadedFile)) {
            Session::setError('Unable to upload file, please try again.');
            Session::redirect('/bookings');
        }

        $createAttendance = Attendance::createAttendance($bookingId, $page['booking']->workshopID, $_POST['attendance']['learn'], $_POST['attendance']['taught'], $filename);

        $updateBooking = UTSHelpsAPI::UpdateWorkshopBooking([
            'workshopId' => $page['booking']->workshopID,
            'studentId' => User::getPaddedId(),
            'Attended' => 1,
            'Canceled' => 0,
            'userId' => 123
        ]);

        if ($createAttendance && $updateBooking != null && $updateBooking->IsSuccess == 1) {

            // Send the email notification
            $user = User::getUser();

            $message = Notification::renderEmail('emails/record-attendance.html', [
                'name' => $user['name'],
                'bookingId' => $bookingId,
            ]);
            Notification::sendEmail($user['email'], $user['name'], 'Recorded Attendance', $message);

            Session::setSuccess('Successfully recorded attendance for this booking.');
            Session::redirect('/bookings');
        }

        Session::setError('Unable to record attendance for this booking, please try again.');
        Session::redirect('/bookings');

    }

}

?>