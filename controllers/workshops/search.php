<?php

/**
 * @var $page
 */

$page['campuses'] = UTSHelpsAPI::ListCampuses(true);

if (isset($page['parameters']) && isset($page['parameters']['id'])) {

    if (isset($page['parameters']['workshopSet'])) {
        $workshop = UTSHelpsAPI::SearchWorkshops([
            'pageSize' => 9999,
            'startingDtBegin' => Session::getCurrentDateTime(),
            'startingDtEnd' => Session::getFutureDateTime(),
            'campusId' => $page['parameters']['id'],
            'workshopSetId' => $page['parameters']['workshopSet']
        ]);
    } else {
        $workshop = UTSHelpsAPI::SearchWorkshops([
            'pageSize' => 9999,
            'startingDtBegin' => Session::getCurrentDateTime(),
            'startingDtEnd' => Session::getFutureDateTime(),
            'campusId' => $page['parameters']['id'],
        ]);
    }

    if ($workshop != null && $workshop->IsSuccess == 1) {

        foreach($workshop->Results as $value) {

            // initially set the status to available
            $status = 'available';

            $remaining = $value->maximum - $value->BookingCount;
            if ($remaining <= 0) {
                $status = 'full';
            } elseif ($value->cutoff != null && $value->cutoff <= $value->BookingCount) {
                $status = 'cutoff';
            }

            if ($status == 'available') {
                $page['available']++;
            } else {
                $page['unavailable']++;
            }

            $startDate = strtotime($value->StartDate);
            $endDate = strtotime($value->EndDate);

            $startTime = date("g:ia", $startDate);
            $endTime = date("g:ia", $endDate);

            $date = date("jS M Y", $startDate) . ': ' . $startTime . ' - ' . $endTime;

            $page['workshop'][] = [
                'id' => $value->WorkshopId,
                'topic' => $value->topic,
                'description' => $value->description,
                'campus' => $value->campus,
                'current' => $value->BookingCount,
                'maximum' => $value->maximum,
                'cutoff' => $value->cutoff,
                'status' => $status,
                'date' => $date,
                'remaining' => $remaining,
            ];
        }

    } else {
        $page['workshop'] = null;
    }

}

// get the workshop set info
$page['workshopset'] = null;
if (isset($page['parameters']) && isset($page['parameters']['workshopSet'])) {
    // Get the results for the workshop set
    $workshopsets = UTSHelpsAPI::ListWorkshopSets(true);
    $workshopset = null;

    if ($workshopsets != null && $workshopsets->IsSuccess == 1) {
        foreach ($workshopsets->Results as $value) {
            if ($value->id == $page['parameters']['workshopSet']) {
                $workshopset = $value;
            }
        }
    }

    $page['workshopset'] = $workshopset;
}

?>