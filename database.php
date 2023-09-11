<?php
    // Connect to the database
    $serverName = "";
    $dBUsername = "";
    $dBPassword = "";
    $dBName = "";
    $connection_string = mysqli_connect($serverName, $dBUsername, $dBPassword, $dBName);
    // $connection_string = new mysqli("localhost", "root", "", "gamestp");
    
    // If there is a connection error, notify
    // the user, and Kill the script.
    if ($connection_string->connect_error) {
        echo "Failed to connect to Database";
        exit();
    }
?>