<?php

/**
 * @var $page
 */

/**
 * Compare two workshop names
 *
 * @param $a
 * @param $b
 * @return int
 */
function compareByName($a, $b) {
    return strcmp($a->name, $b->name);
}

$workshops = UTSHelpsAPI::ListWorkshopSets(true);

if ($workshops != null && $workshops->IsSuccess == 1) {
    $page['workshops'] = $workshops->Results;
    usort($page['workshops'], 'compareByName');
} else {
    $page['workshops'] = null;
}

?>