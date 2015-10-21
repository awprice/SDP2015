<?php

    // Make sure this is the first time
    // the user has used the website
    if (!User::firstUse()) {
        Session::setError('Cannot register, you have already registered before.');
        Session::redirect('/');
    }

    // If the request is post, try and sign them up
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        foreach ($_POST['register'] as $key => $value) {
            if (is_array($value)) {
                $result = User::setEducation($value);
            } else {
                $result = User::setAttribute($key, $value);
            }
            if ($result == false) {
                Session::setError('Unable to complete your registration, please try again.');
                Session::redirect('/register');
            }
        }

        $user = User::getUser();

        $registration = UTSHelpsAPI::RegisterStudent([
            'StudentId' => $user['student_id'],
            'DateOfBirth' => $user['dob'],
            'Gender' => $user['gender'],
            'Degree' => $user['degree'],
            'Status' => $user['status'],
            'FirstLanguage' => $user['first_language'],
            'CountryOrigin' => $user['country_of_origin'],
            'DegreeDetails' => $user['year'],
            'AltContact' => $user['best_contact_no'],
            'PreferredName' => $user['preferred_first_name'],
            'HSC' => (bool) $user['hsc'],
            'HSCMark' => $user['hsc_mark'],
            'IELTS' => (bool) $user['ielts'],
            'IELTSMark' => $user['ielts_mark'],
            'TOEFL' => (bool) $user['toefl'],
            'TOEFLMark' => $user['toefl_mark'],
            'TAFE' => (bool) $user['tafe'],
            'TAFEMark' => $user['tafe_mark'],
            'CULT' => (bool) $user['cult'],
            'CULTMark' => $user['cult_mark'],
            'InsearchDEEP' => (bool) $user['insearch_deep'],
            'InsearchDEEPMark' => $user['insearch_deep_mark'],
            'InsearchDiploma' => (bool) $user['insearch_diploma'],
            'InsearchDiplomaMark' => $user['insearch_diploma_mark'],
            'FoundationCourse' => (bool) $user['foundation_course'],
            'FoundationCourseMark' => $user['foundation_course_mark'],
            'CreatorId' => 123456
        ]);

        User::setFirstUse();
        User::setLastLogin();
        Session::setSuccess('Register complete!');
        Session::redirect('/');

    }

    // Get the user
    $page['user'] = User::getUser();

    $page['educational-backgrounds'] = [
        'hsc' => [
            'label' => 'HSC',
            'key' => 'hsc',
        ],
        'ielts' => [
            'label' => 'IELTS',
            'key' => 'ielts',
        ],
        'toefl' => [
            'label' => 'TOEFL',
            'key' => 'toefl',
        ],
        'tafe' => [
            'label' => 'TAFE',
            'key' => 'tafe',
        ],
        'cult' => [
            'label' => 'CULT',
            'key' => 'cult',
        ],
        'insearchDeep' => [
            'label' => 'Insearch DEEP',
            'key' => 'insearchDeep',
        ],
        'insearchDiploma' => [
            'label' => 'Insearch Diploma',
            'key' => 'insearchDiploma',
        ],
        'foundationCourse' => [
            'label' => 'Foundation Course',
            'key' => 'foundationCourse',
        ],
    ];

?>