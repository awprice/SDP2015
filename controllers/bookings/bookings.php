<?php

/**
 * Compares start dates for sorting
 *
 * @param $a
 * @param $b
 * @return mixed
 */
function compareStartDate($a, $b) {
    return $a['startDate'] - $b['startDate'];
}

/**
 * Compares start dates for sorting in a reverse fashion
 *
 * @param $b
 * @param $a
 * @return mixed
 */
function compareStartDateReverse($b, $a) {
    return $a['startDate'] - $b['startDate'];
}

$currentTime = strtotime(Session::getCurrentDateTime());

$bookings = UTSHelpsAPI::SearchWorkshopBookings([
    'studentId' => User::getPaddedId(),
    'pageSize' => 9999,
    'active' => true,
]);

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
        if ($value->BookingArchived == null && $startDate > $currentTime && $value->canceled === null && $value->attended === null) {
            $page['bookings'][] = [
                'bookingId' => $value->BookingId,
                'workshopId' => $value->workshopID,
                'workshopSetId' => $value->WorkShopSetID,
                'topic' => $value->topic,
                'description' => $value->description,
                'date' => $date,
                'campus' => $location,
                'startDate' => $startDate,
            ];
        } elseif ($value->BookingArchived == null && $value->canceled == null && $startDate < $currentTime) {

            $attendance = Attendance::getAttendance($value->BookingId);

            $cutoff = $startDate + 259200;

            if ($cutoff > $currentTime) {
                $cutoff = false;
            } else {
                $cutoff = true;
            }

            $page['pastbookings'][] = [
                'bookingId' => $value->BookingId,
                'workshopId' => $value->workshopID,
                'workshopSetId' => $value->WorkShopSetID,
                'topic' => $value->topic,
                'description' => $value->description,
                'date' => $date,
                'campus' => $location,
                'attendance' => $attendance,
                'cutoff' => $cutoff,
                'startDate' => $startDate,
            ];
        }

    }

    usort($page['bookings'], 'compareStartDate');
    usort($page['pastbookings'], 'compareStartDateReverse');

} else {
    $page['bookings'] = null;
    $page['pastbookings'] = null;
}

?>