<?php

namespace app\core;

class Core {
    protected $dev = False;

    public function __construct() {
        require_once "./app/libs/lang.php";
    }

    public function dev_mode($const) {
        if(isset($const)) {
            $this->dev = True;
            // Enable errors
            error_reporting(E_ALL);
            ini_set('display_startup_errors', 1);
            ini_set('display_errors', 1);
        } else { 
            $this->dev = False;
            return "Prod Mode";
        }
    }

    # Debug
    public function x($data) {
        echo '<pre>';
            var_dump($data);
        echo '</pre>';
        exit();
    }
}

$core = new Core;