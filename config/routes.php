<?php

	$router->map('GET', '/', function() {
		require __DIR__ . '/../controllers/index.php';
	});

	$router->map('GET', '/compile/less', function() {
		require __DIR__ . '/less.compile.php';
	})

?>