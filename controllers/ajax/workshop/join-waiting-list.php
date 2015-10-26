<?php

// Make sure the id is specified
if (!array_key_exists('id', $_POST) && $_POST['id'] == null) {
    Session::returnJsonMessage([
        'success' => false,
        'message' => 'No workshop ID provided, unable to join workshop waiting list.'
    ]);
}

$id = $_POST['id'];

$waitinglist = UTSHelpsAPI::CreateWorkshopWaiting([
    'workshopId' => $id,
    'studentId' => User::getPaddedId(),
    'userId' => '123',
]);

if ($waitinglist != null && $waitinglist->IsSuccess == 1) {

    // Send the email notification
    $user = User::getUser();

    $message = Notification::renderEmail('emails/waiting-list.html', [
        'name' => $user['name'],
        'workshopId' => $id,
    ]);
    Notification::sendEmail($user['email'], $user['name'], 'Joined Waiting List', $message);

    Session::returnJsonMessage([
        'success' => true,
        'message' => 'Successfully joined waiting list!',
    ]);
}

Session::returnJsonMessage([
    'success' => false,
    'message' => 'Unable to join waiting list, you have already joined it.',
]);

?>