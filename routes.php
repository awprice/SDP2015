<?

	$router->map('GET', '/', function() {
		echo 'Hello world!';
	});

	$router->map('GET', '/hello/world', function() {
		echo 'This is is a test';
	});

?>