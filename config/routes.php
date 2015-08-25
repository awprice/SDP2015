<?php

	$router->map('GET', '/', function() {
		require __DIR__ . '/../controllers/index.php';
	});

    // Misc routes

    $router->map('GET', '/logout', function () {
        require __DIR__ . '/../controllers/session/logout.php';
    });

    $router->map('GET', '/login', function () {
        require __DIR__ . '/../controllers/session/login.php';
    });

    $router->map('GET', '/signup', function () {
        require __DIR__ . '/../controllers/session/signup.php';
    });

	$router->map('GET', '/compile/less', function() {
		require __DIR__ . '/less.compile.php';
	});

?>