<?php

    $router->map('GET', '/', function () {
        $parameters = [
            'controller' => 'index.php',
            'view' => 'index.html',
            'title' => 'Index',
            'flashes' => false,
            'customflashes' => true,
            'restricted' => false,
            'registered' => false,
            'header' => true,
            'footer' => true,
            'navbar' => false,
        ];
       echo superHandler($parameters);
    });

    $router->map('GET', '/faq', function () {
        $parameters = [
            'controller' => 'faq.php',
            'view' => 'faq.html',
            'title' => 'FAQ',
            'flashes' => true,
            'restricted' => false,
            'registered' => false,
            'header' => true,
            'footer' => true,
            'navbar' => false,
        ];
        echo superHandler($parameters);
    });

    $router->map('GET|POST', '/contact', function () {
        $parameters = [
            'controller' => 'contact.php',
            'view' => 'contact.html',
            'title' => 'Contact Us',
            'flashes' => true,
            'restricted' => false,
            'registered' => false,
            'header' => true,
            'footer' => true,
            'navbar' => false,
        ];
        echo superHandler($parameters);
    });

    $router->map('GET', '/workshops', function () {
        $parameters = [
            'controller' => 'workshops/workshops.php',
            'view' => 'workshops/workshops.html',
            'title' => 'Workshops',
            'flashes' => true,
            'restricted' => true,
            'registered' => true,
            'header' => true,
            'footer' => true,
            'navbar' => true,
            'navbar-params' => [
                'direction' => 'back',
                'label' => 'Back to Dashboard',
                'link' => '/'
            ],
        ];
        echo superHandler($parameters);
    });

    $router->map('GET', '/workshop/[i:workshopSetId]', function ($workshopSetId) {
        $parameters = [
            'controller' => 'workshops/workshop.php',
            'view' => 'workshops/workshop.html',
            'title' => 'Workshop',
            'flashes' => true,
            'restricted' => true,
            'registered' => true,
            'parameters' => [
                'workshopSetId' => $workshopSetId,
            ],
            'header' => true,
            'footer' => true,
            'navbar' => true,
            'navbar-params' => [
                'direction' => 'back',
                'label' => 'Back to Workshops',
                'link' => '/workshops'
            ],
        ];
        echo superHandler($parameters);
    });

    $router->map('GET', '/bookings', function () {
        $parameters = [
            'controller' => 'bookings/bookings.php',
            'view' => 'bookings/bookings.html',
            'title' => 'Bookings',
            'flashes' => true,
            'restricted' => true,
            'registered' => true,
            'header' => true,
            'footer' => true,
            'navbar' => true,
            'navbar-params' => [
                'direction' => 'back',
                'label' => 'Back to Dashboard',
                'link' => '/'
            ],
        ];
        echo superHandler($parameters);
    });

    $router->map('GET|POST', '/booking/attendance/[i:bookingId]', function ($bookingId) {
        $parameters = [
            'controller' => 'bookings/attendance.php',
            'view' => 'bookings/attendance.html',
            'title' => 'Record Attendance',
            'flashes' => true,
            'restricted' => true,
            'registered' => true,
            'parameters' => [
                'bookingId' => $bookingId,
            ],
            'header' => true,
            'footer' => true,
            'navbar' => true,
            'navbar-params' => [
                'direction' => 'back',
                'label' => 'Back to Bookings',
                'link' => '/bookings'
            ],
        ];
        echo superHandler($parameters);
    });

    $router->map('GET|POST', '/booking/non-attendance/[i:bookingId]', function ($bookingId) {
        $parameters = [
            'controller' => 'bookings/no-attendance.php',
            'view' => 'bookings/no-attendance.html',
            'title' => 'Record No Attendance',
            'flashes' => true,
            'restricted' => true,
            'registered' => true,
            'parameters' => [
                'bookingId' => $bookingId,
            ],
            'header' => true,
            'footer' => true,
            'navbar' => true,
            'navbar-params' => [
                'direction' => 'back',
                'label' => 'Back to Bookings',
                'link' => '/bookings'
            ],
        ];
        echo superHandler($parameters);
    });

    $router->map('GET|POST', '/booking/view-attendance/[i:bookingId]', function ($bookingId) {
        $parameters = [
            'controller' => 'bookings/view-attendance.php',
            'view' => 'bookings/view-attendance.html',
            'title' => 'View Attendance',
            'flashes' => true,
            'restricted' => true,
            'registered' => true,
            'parameters' => [
                'bookingId' => $bookingId,
            ],
            'header' => true,
            'footer' => true,
            'navbar' => true,
            'navbar-params' => [
                'direction' => 'back',
                'label' => 'Back to Bookings',
                'link' => '/bookings'
            ],
        ];
        echo superHandler($parameters);
    });

    $router->map('GET|POST', '/profile', function () {
        $parameters = [
            'controller' => 'profile.php',
            'view' => 'profile.html',
            'title' => 'Profile',
            'flashes' => true,
            'restricted' => true,
            'registered' => true,
            'header' => true,
            'footer' => true,
            'navbar' => true,
            'navbar-params' => [
                'direction' => 'back',
                'label' => 'Back to Dashboard',
                'link' => '/'
            ],
        ];
        echo superHandler($parameters);
    });

    // Misc routes

    $router->map('GET', '/logout', function () {
        $parameters = [
            'controller' => 'session/logout.php',
            'view' => null,
            'title' => null,
            'flashes' => false,
            'restricted' => true,
            'registered' => false,
            'header' => false,
            'footer' => false,
            'navbar' => false,
        ];
        echo superHandler($parameters);
    });

    $router->map('GET', '/logout-confirm', function () {
        $parameters = [
            'controller' => 'session/logout-confirm.php',
            'view' => 'session/logout-confirm.html',
            'title' => 'Confirm Logout',
            'flashes' => false,
            'restricted' => true,
            'registered' => false,
            'header' => true,
            'footer' => true,
            'navbar' => false,
        ];
        echo superHandler($parameters);
    });

    $router->map('GET|POST', '/login', function () {
        $parameters = [
            'controller' => 'session/login.php',
            'view' => 'session/login.html',
            'title' => 'Login',
            'flashes' => true,
            'restricted' => false,
            'registered' => false,
            'header' => true,
            'footer' => true,
            'navbar' => false,
        ];
        echo superHandler($parameters);
    });

    $router->map('GET|POST', '/register', function () {
        $parameters = [
            'controller' => 'session/register.php',
            'view' => 'session/register.html',
            'title' => 'Register',
            'flashes' => true,
            'restricted' => true,
            'registered' => false,
            'header' => true,
            'footer' => true,
            'navbar' => false,
        ];
        echo superHandler($parameters);
    });

    $router->map('POST', '/ajax/workshop/book', function () {
        $parameters = [
            'controller' => 'ajax/workshop/book.php',
            'view' => null,
            'title' => null,
            'flashes' => false,
            'restricted' => true,
            'registered' => true,
            'header' => false,
            'footer' => false,
            'navbar' => false,
        ];
        echo superHandler($parameters);
    });

    $router->map('POST', '/ajax/booking/cancel', function () {
        $parameters = [
            'controller' => 'ajax/booking/cancel.php',
            'view' => null,
            'title' => null,
            'flashes' => false,
            'restricted' => true,
            'registered' => true,
            'header' => false,
            'footer' => false,
            'navbar' => false,
        ];
        echo superHandler($parameters);
    });

    $router->map('POST', '/ajax/workshop/join-waiting-list', function () {
        $parameters = [
            'controller' => 'ajax/workshop/join-waiting-list.php',
            'view' => null,
            'title' => null,
            'flashes' => false,
            'restricted' => true,
            'registered' => true,
            'header' => false,
            'footer' => false,
            'navbar' => false,
        ];
        echo superHandler($parameters);
    });

	$router->map('GET', '/compile/less', function() {
		require __DIR__ . '/less.compile.php';
	});

    $router->map('GET|POST', '/setcurrentdate', function () {
       require __DIR__ . '/setcurrentdate.php';
    });

    /**
     * Handles rendering the header, footer, content and initialising the page
     *
     * @param $parameters
     * @return string
     */
    function superHandler($parameters) {

        // Set our controller and view directories
        $controllerDirectory = __DIR__ . '/../controllers/';
        $viewDirectory = __DIR__ . '/../views/';

        // Initialise our page array
        $page = Session::init($parameters['title'], $parameters['flashes'], $parameters['restricted'], $parameters['registered']);

        if ($parameters['flashes'] == false && $parameters['customflashes'] == true) {
            $page['customflashes'] = Session::getFlashes();
        }

        // if parameters are passed, then add them
        if (array_key_exists('parameters', $parameters)) {
            $page['parameters'] = $parameters['parameters'];
        }

        $page['navbar'] = $parameters['navbar'];
        if (array_key_exists('navbar-params', $parameters)) {
            $page['navbar-params'] = $parameters['navbar-params'];
        }

        // Require our controller
        require $controllerDirectory . $parameters['controller'];

        // Initialise our h2o object
        $h2o = new h2o(null, array('autoescape' => false));

        $output = "";

        if (array_key_exists('header', $parameters) && $parameters['header'] == true) {
            $h2o->loadTemplate($viewDirectory . 'global/header.html');
            $output .= $h2o->render(compact('page'));
        }

        if ($parameters['view'] != null) {
            $h2o->loadTemplate($viewDirectory . $parameters['view']);
            $output .= $h2o->render(compact('page'));
        }

        if (array_key_exists('footer', $parameters) && $parameters['footer'] == true) {
            $h2o->loadTemplate($viewDirectory . 'global/footer.html');
            $output .= $h2o->render(compact('page'));
        }

        // return output
        return $output;

    }

?>