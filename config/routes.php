<?php

	$router->map('GET', '/', function() {
		require __DIR__ . '/../controllers/index.php';
	});

	$router->map('GET', '/hello/world', function() {
		echo 'This is is a test';
	});

	$router->map('GET', '/compile/less', function() {
		require __DIR__ . '/less.compile.php';
	})

?>