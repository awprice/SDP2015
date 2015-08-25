<?php

    // This is an example controller to demonstrate how the MVC framework works

    // Lets declare some strings
    $string1 = 'This is an example string';
    $string2 = 'This is another example string';

    // some integers
    $integer1 = 33;
    $integer2 = 104;

    // floats
    $float1 = 3.14;

    // boolean
    $boolean1 = true;
    $boolean2 = false;

    // arrays

    $array1 = [
        'key1' => 'value1',
        'key2' => 'value2',
        'key3' => [
            'subkey1' => 'subvalue1',
            'subkey2' => 'subvalue2',
        ],
    ];

    $array2 = ['the', 'quick', 'brown', 'fox', 'jumped', 'over', 'the', 'lazy', 'dog'];


    // Lets add them to the page array for rendering

    $page = [
        'string1' => $string1,
        'string2' => $string2,
        'integer1' => $integer1,
        'integer2' => $integer2,
        'float1' => $float1,
        'boolean1' => $boolean1,
        'boolean2' => $boolean2,
        'array1' => $array1,
        'array2' => $array2,
    ];

    // and render the view
    $h2o = new h2o(__DIR__ . '/../../views/example/example.html');
    echo $h2o->render(compact('page'));

?>