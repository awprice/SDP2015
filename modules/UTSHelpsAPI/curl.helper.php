<?php

	function curl_get($path, $appkey) {

		$url = $GLOBALS["helps-url"] . $path;

		$ch = curl_init(); 

		// Set options
		curl_setopt($ch, CURLOPT_URL, $url); 
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		if ($appkey) {
			curl_setopt($ch, CURLOPT_HTTPHEADER, ['AppKey: ' . $GLOBALS["helps-appkey"]]);
		}

		$result = curl_exec($ch); 

		// close connection
		curl_close($ch);

		return $result;
	}

	function curl_post($path, $data, $appkey) {

		$url = $GLOBALS["helps-url"] . $path;

		$fieldstring = "";

		// Make our post field
		foreach($data as $key => $value) {
			$fieldstring .= $key . '=' . urlencode($value) . '&';
		}
		$fieldstring = rtrim($fieldstring, '&');

		$ch = curl_init();

		// Set options
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_POST, count($data));
		curl_setopt($ch, CURLOPT_POSTFIELDS, $fieldstring);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		if ($appkey) {
			curl_setopt($ch, CURLOPT_HTTPHEADER, ['AppKey: ' . $GLOBALS["helps-appkey"]]);
		}

		$result = curl_exec($ch);

		// close connection
		curl_close($ch);

		return $result;
	}

	function curl_put($path, $data, $appkey) {

	}

?>