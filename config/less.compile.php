<?php

	require __DIR__ . '/../less.php/Less.php';

	echo "Less Compilation.<br>";

	$input = __DIR__ . "/../less/style.less";
	$output = __DIR__ . "/../css/style.css";

	echo "Compiling " . $input . "...<br>";

	try {
	    $parser = new Less_Parser();
	    $parser->parseFile($input);
	    $css = $parser->getCss();
	} catch(Exception $e) {
	    echo $e->getMessage();
	    quit();
	}

	echo "Less compiled successfully.<br>";
	echo "Saving output CSS to file...<br>";

	try {
		$outputfile = fopen($output, "w");
	} catch(Exception $e) {
		echo $e->getMessage();
		quit();
	}

	fwrite($outputfile, $css);
	fclose($outputfile);

	echo "Wrote the following to " . $output . ":<br><br>";
	echo "<pre>" . $css . "</pre>";

?>