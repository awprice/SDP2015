<?php

$h2o = new h2o(__DIR__ . '/../../views/faq/faq.html');
echo $h2o->render(compact('page'));

?>