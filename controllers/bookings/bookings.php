<?php

$currentTime = strtotime(Session::getCurrentDateTime());

$bookings = UTSHelpsAPI::SearchWorkshopBookings([
    'studentId' => User::getPaddedId(),
    'pageSize' => 9999,
    'active' => true,
]);

$page['bla'] = $bookings;

$campuses = UTSHelpsAPI::ListCampuses(true);

if ($campuses != null && $campuses->IsSuccess == 1) {
    $page['campuses'] = $campuses->Results;
} else {
    $page['campuses'] = null;
}

if ($bookings != null && $bookings->IsSuccess == 1) {

    foreach($bookings->Results as $value) {

        $startDate = strtotime($value->starting);
        $endDate = strtotime($value->ending);

        $startTime = date("g:ia", $startDate);
        $endTime = date("g:ia", $endDate);

        $date = date("jS M Y", $startDate) . ': ' . $startTime . ' - ' . $endTime;

        $location = null;

        if ($page['campuses'] != null) {
            foreach ($page['campuses'] as $campus) {
                if ($value->campusID == $campus->id) {
                    $location = $campus->campus;
                }
            }
        }

        // if booking archived field does not have a date
        if ($value->BookingArchived == null && $startDate > $currentTime) {
            $page['bookings'][] = [
                'bookingId' => $value->BookingId,
                'workshopId' => $value->workshopID,
                'workshopSetId' => $value->WorkShopSetID,
                'topic' => $value->topic,
                'description' => $value->description,
                'date' => $date,
                'campus' => $location,
            ];
        } elseif ($value->canceled == null) {

            $attendance = Attendance::getAttendance($value->BookingId);

            $page['pastbookings'][] = [
                'bookingId' => $value->BookingId,
                'workshopId' => $value->workshopID,
                'workshopSetId' => $value->WorkShopSetID,
                'topic' => $value->topic,
                'description' => $value->description,
                'date' => $date,
                'campus' => $location,
                'attendance' => $attendance,
            ];
        }

    }

} else {
    $page['bookings'] = null;
    $page['pastbookings'] = null;
}

?>