<?php

    $page["title"] = "Index page";

    $h2o = new h2o(__DIR__ . '/../views/index.html');
    echo $h2o->render(compact('page'));

?>