<?php

$workshopSetId = $page['parameters']['workshopSetId'];

// Get the results for the workshop details
$workshop = UTSHelpsAPI::SearchWorkshops([
    'workshopSetId' => $workshopSetId,
]);

if ($workshop != null && $workshop->IsSuccess == 1) {
    $page['workshop'] = $workshop;
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