<?php

$workshopSetId = $page['parameters']['workshopSetId'];

// Get the results for the workshop details
$workshop = UTSHelpsAPI::SearchWorkshops([
    'workshopSetId' => $workshopSetId,
]);

if ($workshop != null && $workshop->IsSuccess == 1) {

    foreach($workshop->Results as $value) {
        $remaining = $value->maximum - $value->BookingCount;
        if ($remaining <= 0) {
            $full = true;
        } else {
            $full = false;
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
            'full' => $full,
            'date' => $date,
        ];
    }

} else {
    $page['workshop'] = null;
}

// Get the results for the workshop set
$workshopsets = UTSHelpsAPI::ListWorkshopSets(true);
$workshopset = null;

if ($workshopsets != null && $workshopsets->IsSuccess == 1) {
    foreach ($workshopsets->Results as $value) {
        if ($value->id == $workshopSetId) {
            $workshopset = $value;
        }
    }
}

$page['workshopset'] = $workshopset;

?>