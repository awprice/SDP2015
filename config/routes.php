<?php

	$router->map('GET', '/', function() {
        $page['flash'] = Session::getFlashes();
        $page['title'] = 'Index';
		require __DIR__ . '/../controllers/index.php';
	});

    // Misc routes

    $router->map('GET', '/logout', function () {
        require __DIR__ . '/../controllers/session/logout.php';
    });

    $router->map('GET|POST', '/login', function () {
        $page['flash'] = Session::getFlashes();
        $page['title'] = 'Login';
        require __DIR__ . '/../controllers/session/login.php';
    });

    $router->map('GET', '/signup', function () {
        $page['flash'] = Session::getFlashes();
        $page['title'] = 'Signup';
        require __DIR__ . '/../controllers/session/signup.php';
    });

	$router->map('GET', '/compile/less', function() {
		require __DIR__ . '/less.compile.php';
	});

    $router->map('GET', '/example', function() {
        require __DIR__ . '/../controllers/example/example.php';
    });

?>