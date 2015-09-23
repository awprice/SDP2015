<?php

$workshops = UTSHelpsAPI::ListWorkshopSets(true);

if ($workshops != null && $workshops->IsSuccess == 1) {
    $page['workshops'] = $workshops;
} else {
    $page['workshops'] = null;
}

?>