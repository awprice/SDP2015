<?php

	$router->map('GET', '/', function() {
        $page = Session::init('Index', true, false);
        $page['_SESSION']['font-size'] = 'large';
		require __DIR__ . '/../controllers/index.php';
	});

    // Misc routes

    $router->map('GET', '/logout', function () {
        $page = Session::init('Logout', false, true);
        require __DIR__ . '/../controllers/session/logout.php';
    });

    $router->map('GET|POST', '/login', function () {
        $page = Session::init('Login', true, false);
        require __DIR__ . '/../controllers/session/login.php';
    });

    $router->map('GET', '/signup', function () {
        $page = Session::init('Signup', true, false);
        require __DIR__ . '/../controllers/session/signup.php';
    });

	$router->map('GET', '/compile/less', function() {
		require __DIR__ . '/less.compile.php';
	});

    $router->map('GET', '/example', function() {
        require __DIR__ . '/../controllers/example/example.php';
    });

?>