<?php

$sessionsNonActive = UTSHelpsAPI::ListSessionTypes(false);
$sessionsActive = UTSHelpsAPI::ListSessionTypes(true);

if ($sessionsActive != null && $sessionsActive->IsSuccess == 1) {
    $page['sessionsActive'] = $sessionsActive;
} else {
    $page['sessionsActive'] = null;
}

if ($sessionsNonActive != null && $sessionsNonActive->IsSuccess == 1) {
    $page['sessionsNonActive'] = $sessionsNonActive;
} else {
    $page['sessionsNonActive'] = null;
}

?>