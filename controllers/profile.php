<?php

$page['maxstrikes'] = User::getMaxStrikes();

$page['educational-backgrounds'] = [
    'hsc' => [
        'label' => 'HSC',
        'key' => 'hsc',
        'sql' => 'hsc',
    ],
    'ielts' => [
        'label' => 'IELTS',
        'key' => 'ielts',
        'sql' => 'ielts',
    ],
    'toefl' => [
        'label' => 'TOEFL',
        'key' => 'toefl',
        'sql' => 'toefl',
    ],
    'tafe' => [
        'label' => 'TAFE',
        'key' => 'tafe',
        'sql' => 'tafe',
    ],
    'cult' => [
        'label' => 'CULT',
        'key' => 'cult',
        'sql' => 'cult',
    ],
    'insearchDeep' => [
        'label' => 'Insearch DEEP',
        'key' => 'insearchDeep',
        'sql' => 'insearch_deep',
    ],
    'insearchDiploma' => [
        'label' => 'Insearch Diploma',
        'key' => 'insearchDiploma',
        'sql' => 'insearch_diploma',
    ],
    'foundationCourse' => [
        'label' => 'Foundation Course',
        'key' => 'foundationCourse',
        'sql' => 'foundation_course',
    ],
];

foreach($page['educational-backgrounds'] as &$educationalBackground) {
    $educationalBackground['checked'] = $page['user'][$educationalBackground['sql']];
    $educationalBackground['value'] = $page['user'][$educationalBackground['sql'] . '_mark'];
}

// If the request is post, try and sign them up
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    foreach ($_POST['userinformation'] as $key => $value) {
        if (is_array($value)) {
            $result = User::setEducation($value);
        } else {
            $result = User::setAttribute($key, $value);
        }
        if ($result == false) {
            Session::setError('Unable to update your information, please try again.');
            Session::redirect('/profile');
        }
    }

    Session::setSuccess('Successfully updated your information!');
    Session::redirect('/profile');

}

?>