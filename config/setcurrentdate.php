<?php

$success = false;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $newCurrentDate = $_POST['currentdate'];
    $newCurrentDate = date('Y-m-d\TH:i:s', strtotime($newCurrentDate));
    $success = Session::setCurrentDateTime($newCurrentDate);
}

$currentDate = Session::getCurrentDateTime();
$currentDate = date('Y-m-d', strtotime($currentDate));

?>
<!doctype html>
<html lang="en">
<head>
    <title>Set currentdate</title>
</head>
<body>
    <form method="POST">
        <?php if ($success): ?>
            <span style="color: green">
                Successfully updated current time!
            </span>
        <?php endif; ?>
        <br>
        <br>
        Currentdate: <input type="date" value="<?= $currentDate ?>" name="currentdate">
        <br>
        <br>
        <input type="submit" value="Set currentdate">
    </form>
</body>
</html>
