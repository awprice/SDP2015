<?php

	require __DIR__ . '/AltoRouter/AltoRouter.php';

	$router = new AltoRouter();

	require __DIR__ . '/routes.php';

	$match = $router->match();

	$content_types = array(
		'js' => 'application/javascript',
		'png' => 'image/png',
		'jpg' => 'image/jpeg',
		'css' => 'text/css',
	);

	if ($match && is_callable($match['target'])) {
		call_user_func_array($match['target'], $match['params']);
	} else if (is_file(__DIR__ . $_SERVER["REQUEST_URI"])) {
		$extension = pathinfo($_SERVER["REQUEST_URI"])["extension"];
		if (array_key_exists($extension, $content_types)) {
			header('Content-Type: ' . $content_types[$extension]);
		}
		readfile(__DIR__ . $_SERVER["REQUEST_URI"]);
	} else {
		http_response_code(404);
		echo '404 Not Found';
	}

?>
