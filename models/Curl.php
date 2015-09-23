<?php

class Curl {

    /**
     * Sends a HTTP Get request
     *
     * @param $path
     * @param null $parameters
     * @param $appkey
     * @return mixed
     */
    static function curl_get($path, $parameters = null, $appkey) {

        $url = $GLOBALS["helps-url"] . $path;

        if ($parameters != null) {
            $url .= http_build_query($parameters);
        }

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

    /**
     * Sends a HTTP Post request
     *
     * @param $path
     * @param $data
     * @param $appkey
     * @return mixed
     */
    static function curl_post($path, $data, $appkey) {

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

    /**
     * Sends a HTTP Put request
     *
     * @param $path
     * @param $data
     * @param $appkey
     * @return mixed
     */
    static function curl_put($path, $data, $appkey) {

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

}

?>