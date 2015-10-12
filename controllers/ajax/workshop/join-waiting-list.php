<?php

header('Content-Type: application/json');

// Make sure the id is specified
if (!array_key_exists('id', $_POST) && $_POST['id'] == null) {
    echo json_encode([
        'success' => false,
        'message' => 'No workshop ID provided, unable to join workshop waiting list.'
    ]);
    exit();
}

$id = $_POST['id'];

$waitinglist = UTSHelpsAPI::CreateWorkshopWaiting([
    'workshopId' => $id,
    'studentId' => User::getPaddedId(),
    'userId' => '123',
]);

if ($waitinglist != null && $waitinglist->IsSuccess == 1) {
    echo json_encode([
        'success' => true,
        'message' => 'Successfully joined waiting list!',
    ]);
    exit();
}

echo json_encode([
    'success' => false,
    'message' => 'Unable to join waiting list, you have already joined it.',
]);
exit();

?>