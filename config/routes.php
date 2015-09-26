<?php

    $router->map('GET', '/', function () {
       echo superHandler('index.php', 'index.html', 'Index', true, false, false);
    });

    $router->map('GET', '/faq', function () {
        echo superHandler('faq/faq.php', 'faq/faq.html', 'FAQ', true, false, false);
    });

    $router->map('GET', '/workshops', function () {
        echo superHandler('workshops/workshops.php', 'workshops/workshops.html', 'Workshops', true, true, true);
    });

    $router->map('GET', '/workshop/[i:workshopSetId]', function ($workshopSetId) {
        $parameters = ['workshopSetId' => $workshopSetId];
        echo superHandler('workshops/workshop.php', 'workshops/workshop.html', 'Workshop', true, true, true, $parameters);
    });

    $router->map('POST', '/workshop/confirm-booking', function () {
        echo superHandler('workshops/confirm-booking.php', 'workshops/confirm-booking.html', 'Confirm Booking', true, true, true);
    });

    $router->map('POST', '/workshop/confirm-waiting-list', function () {
       echo superHandler('workshops/confirm-waiting-list.php', 'workshops/confirm-waiting-list.html', 'Confirm Waiting List', true, true, true);
    });

    // Misc routes

    $router->map('GET', '/logout', function () {
        echo superHandler('session/logout.php', null, 'Logout', false, true, false);
    });

    $router->map('GET|POST', '/login', function () {
        echo superHandler('session/login.php', 'session/login.html', 'Login', true, false, false);
    });

    $router->map('GET|POST', '/register', function () {
        echo superHandler('session/register.php', 'session/register.html', 'Register', true, true, false);
    });

	$router->map('GET', '/compile/less', function() {
		require __DIR__ . '/less.compile.php';
	});

    /**
     * Handles rendering the header, footer, content and initialising the page
     *
     * @param $controller
     * @param $view
     * @param $title
     * @param $flashes
     * @param $restricted
     * @param $registered
     * @param $parameters
     * @return string
     */
    function superHandler($controller, $view, $title, $flashes, $restricted, $registered, $parameters = null) {

        // Set our controller and view directories
        $controllerDirectory = __DIR__ . '/../controllers/';
        $viewDirectory = __DIR__ . '/../views/';

        // Initialise our page array
        $page = Session::init($title, $flashes, $restricted, $registered);
        $page['parameters'] = $parameters;

        // Require our controller
        require $controllerDirectory . $controller;

        // Initialise our h2o object
        $h2o = new h2o(null, array('autoescape' => false));

        $output = "";

        // load the templates and render each one
        $h2o->loadTemplate($viewDirectory . 'global/header.html');
        $output .= $h2o->render(compact('page'));

        $h2o->loadTemplate($viewDirectory . $view);
        $output .= $h2o->render(compact('page'));

        $h2o->loadTemplate($viewDirectory . 'global/footer.html');
        $output .= $h2o->render(compact('page'));

        // return output
        return $output;

    }

?>