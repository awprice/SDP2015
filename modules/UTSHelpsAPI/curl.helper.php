<?php

	function curl_get($path, $appkey) {

		$url = $GLOBALS["helps-url"] . $path;

		$ch = curl_init($url);

		// Set options
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

		$ch = curl_init($url);

		// Set options
        curl_setopt($ch, CURLOPT_POST, count($data));
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
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

        $url = $GLOBALS['helps-url'] . $path;

        $ch = curl_init($url);

        // Set options
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "PUT");
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));

        if ($appkey) {
            curl_setopt($ch, CURLOPT_HTTPHEADER, ['AppKey: ' . $GLOBALS["helps-appkey"]]);
        }

        $result = curl_exec($ch);

        // close connection
        curl_close($ch);

        return $result;

	}

?>