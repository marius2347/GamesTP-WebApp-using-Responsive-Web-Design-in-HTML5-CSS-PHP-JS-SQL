<?php
include('database.php'); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GamesTP</title>
    <link rel="stylesheet" href="./CSS/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" type="image/jpg" href="./logo.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <script src="app.js" defer></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
    <header class="nav-down">
        <div class="header-logo">
            <a href="./index.php">
                <h1 class="desktop" title="Home">GamesTP</h1>
                <h1 class="mobile">GTP</h1>
            </a>

        </div>
        <div class="header-searchbar">
            <form class="example" action="index.php" method="post">
                <input type="text" placeholder="Search a game or a category.." name="search">
                <button type="submit" name="submit"><i class="fa fa-search"></i></button>
            </form>
        </div>
        
        <div class="header-contact">
        <?php
            if (!isset($_POST['submit'])) {

        ?>
        <button id="theme-switcher" class="btn"><h1><span title="Change Background Image" class="material-symbols-outlined">image</span></h1></button>
            <!-- <button id="click"><h1>Background</h1></button> 
            <script type="text/javascript"> 
                   const chBackground = document.querySelector("#click");
                   const BODY = document.querySelector("body");
                   const arr = ["./wallpapers/gta5.jpg", "./wallpapers/spiderman.png"];
                   let i = 0;
                   chBackground.addEventListener("click", function(e) {
                        BODY.style.backgroundImage = `linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url(${arr[i++ % arr.length]})`;
                        console.log(BODY)
                   })

            </script>  -->
        
        <?php } else {
        ?>
            <button id="theme-switcher" class="btn" hidden><h1><span title="Change Background Image" class="material-symbols-outlined">image</span></h1></button>
        <?php 
        }
        ?>
        </div>
    </header>
    <div class="box">
        <?php
        // $game = $_POST['search'];
        // if (isset($_POST['submit'])) {
        //     $mysqli =  $connection_string;
        //     $query = "SELECT COUNT(*) FROM games";
        //     $result = mysqli_query($mysqli,$query);
        //     $rows = mysqli_fetch_row($result);
        //     $query2 = "SELECT COUNT(*) FROM games WHERE status = 'STORY COMPLETED'";
        //     $result2 = mysqli_query($mysqli,$query2);
        //     $rows2 = mysqli_fetch_row($result2);
        //     echo '<h1 class="mobile-responsive">Total Games: ' .$rows[0]. ' | Story Completed: ' .$rows2[0]. '</h1>';
        // }
        if (!isset($_POST['submit'])) {
            $mysqli =  $connection_string;
            $query = "SELECT COUNT(*) FROM games";
            $result = mysqli_query($mysqli,$query);
            $rows = mysqli_fetch_row($result);
            echo '<h1 class="mobile-responsive">Total Games: ' .$rows[0]. '</h1>';
        }
        if (isset($_POST['submit'])) {
            $game = $_POST['search'];
            $game = strtolower($game);
            if ($game == "STORY COMPLETED" or $game == "story completed") {
                $mysqli =  $connection_string;
                $query = "SELECT COUNT(*) FROM games WHERE LOWER(status) = 'STORY COMPLETED'";
                $result = mysqli_query($mysqli,$query);
                $rows = mysqli_fetch_row($result);
                echo '<h1 class="mobile-responsive"> Story Completed: ' .$rows[0]. '</h1>';
            }
        }
        if (isset($_POST['submit'])) {
            $game = $_POST['search'];
            $game = strtolower($game);
            if ($game == "STORY NOT COMPLETED" or $game == "story not completed") {
                $mysqli =  $connection_string;
                $query = "SELECT COUNT(*) FROM games WHERE LOWER(status) = 'STORY NOT COMPLETED'";
                $result = mysqli_query($mysqli,$query);
                $rows = mysqli_fetch_row($result);
                echo '<h1 class="mobile-responsive"> Story Not Completed: ' .$rows[0]. '</h1>';
            }
        }
        if (isset($_POST['submit'])) {
            $game = $_POST['search'];
            $game = strtolower($game);
            if ($game == "JUST PLAYED" or $game == "just played") {
                $mysqli =  $connection_string;
                $query = "SELECT COUNT(*) FROM games WHERE LOWER(status) = 'JUST PLAYED'";
                $result = mysqli_query($mysqli,$query);
                $rows = mysqli_fetch_row($result);
                echo '<h1 class="mobile-responsive"> Just Played: ' .$rows[0]. '</h1>';
            }
        }
        ?>
        
    </div>
    <div class="container">
    
            <?php
            
            if (isset($_POST['submit'])) {
                
                // Escape the search string and trim
                // all whitespace
                $searchString = mysqli_real_escape_string($connection_string, trim(htmlentities($_POST['search'])));
        
                // Check for empty strings and non-alphanumeric
                // characters.
                // Also, check if the string length is less than
                // three. If any of the checks returns "true",
                // return "Invalid search string", and
                // kill the script.
                // if ($searchString === "" || !ctype_alnum($searchString) || $searchString < 3) {
                //     echo "Invalid search string";
                //     exit();
                // }
        
                // We are using a prepared statement with the
                // search functionality to prevent SQL injection.
                // So, we need to prepend and append the search
                // string with percent signs
                $searchString = "%$searchString%";
                $game = $_POST['search'];
                $game = strtolower($game);
                // The prepared statement
                if ($game != "STORY COMPLETED" and $game != "story completed" and $game != "STORY NOT COMPLETED" and $game != "story not completed" and $game != "JUST PLAYED" and $game != "just played") {
                    $sql = "SELECT * FROM games WHERE title LIKE ?";
                }
                elseif ($game == "STORY COMPLETED" or $game == "story completed" or $game == "STORY NOT COMPLETED" or $game == "story not completed" or $game == "JUST PLAYED" or $game == "just played") {
                    $sql = "SELECT * FROM games WHERE status LIKE ?";
                } else {
                    $sql = "SELECT * FROM games WHERE title LIKE ?";
                }
                // Prepare, bind, and execute the query
                $prepared_stmt = $connection_string->prepare($sql);
                $prepared_stmt->bind_param('s', $searchString);
                $prepared_stmt->execute();
        
                // Fetch the result
                $result = $prepared_stmt->get_result();
        
                if ($result->num_rows === 0) {
                    // No match found
                    echo "<h1> No game found. </h1>";
                    // Kill the script
                    exit();
        
                } else {
                    // Process the result(s)
                    while ($row = $result->fetch_assoc()) {
                        // echo "<b>ID game:</b>: ". $row['id'] . "<br />";
                        $game = $_POST['search'];
                        $game = strtolower($game);
                        $image = $row['image'];
                        // $imgx = imagecreatefromstring($image);
                        // $data = 'iVBORw0KGgoAAAANSUhEUgAAABwAAAASCAMAAAB/2U7WAAAABl'
                        //         . 'BMVEUAAAD///+l2Z/dAAAASUlEQVR4XqWQUQoAIAxC2/0vXZDr'
                        //         . 'EX4IJTRkb7lobNUStXsB0jIXIAMSsQnWlsV+wULF4Avk9fLq2r'
                        //         . '8a5HSE35Q3eO2XP1A1wQkZSgETvDtKdQAAAABJRU5ErkJggg==';
                        // $data = base64_decode($data);
                        // $im = imagecreatefromstring($data);
                        // $imgx = imagescale($imgx, 100, 100);
                        // ob_start();
                        // imagejpeg($imgx);
                        // $contents = ob_get_contents();
                        // ob_end_clean();
                        // width: 419, height = 196
                        $status = $row['status'];
                        $title = $row['title'];
                        $trailer = $row['trailer'];
                        if ($status == "STORY COMPLETED") {
                            echo '<a href="'.$trailer.'" target="_blank">';
                                echo '<div class="content-green">';
                                    echo '<img class="img-box" title="Show trailer on YouTube for '.ucwords($title).'" src="./images/'.$image.'"/>';
                                    
                                    echo '<div class="bottom-center">' .$status. '</div>';
                                echo '</div>';
                            echo '</a>';
                        } elseif ($status == "STORY NOT COMPLETED") {
                            echo '<a href="'.$trailer.'" target="_blank">';
                                echo '<div class="content-red">';
                                    echo '<img class="img-box" title="Show trailer on YouTube for '.ucwords($title).'" src="./images/'.$image.'"/>';
                                    echo '<div class="bottom-center">' .$status. '</div>';
                                echo '</div>';
                            echo '</a>';
                        } elseif ($status == "JUST PLAYED") {
                            echo '<a href="'.$trailer.'" target="_blank">';
                                echo '<div class="content-orange">';
                                    echo '<img class="img-box" title="Show trailer on YouTube for '.ucwords($title).'" src="./images/'.$image.'"/>';
                                    echo '<div class="bottom-center">' .$status. '</div>';
                                echo '</div>';
                            echo '</a>';
                        } else {
                            echo '<a href="'.$trailer.'" target="_blank">';
                                echo '<img class="img-box" title="Show trailer on YouTube for '.ucwords($title).'" src="./images/'.$image.'"/>';
                            echo '</a>';
                        }
                        $new_title = str_replace(' ', '', $title);
                        $new_title .=".jpg";
                        $new_game = str_replace(' ', '', $game);
                        $new_game .= ".jpg";
                        $count = 0;
                        $count2 = 0;
                        $scan = scandir('./wallpapers');
                        
                        foreach($scan as $file) {
                            if(strpos($new_game, $file) !== false) {
                                $count++;
                            }
                        }
                        foreach($scan as $file) {
                            if(strpos($new_title, $file) !== false) {
                                $count2++;
                            }
                        }
                        if($count > 1 and $game != "STORY COMPLETED" and $game != "story completed" and $game != "STORY NOT COMPLETED" and $game != "story not completed" and $game != "JUST PLAYED" and $game != "just played") {
                            echo '<script>  
                                   sessionStorage.setItem("mode2", 0);
                             </script>';
                            echo '<style>
                                    body {
                                        background-image: 
                                        linear-gradient(
                                        rgba(0, 0, 0, 0.5),
                                        rgba(0, 0, 0, 0.5)
                                        ),
                                        url(./wallpapers/' .$new_game.');
                                        font-weight:inherit;
                                        opacity: 0.8;
                                        background-position: center center;
                                        background-repeat: no-repeat;
                                        background-attachment: fixed;
                                        background-size: cover;
                                        background-color: #121212;
                                        }
                                    </style>';
                            
                        }
                        elseif ($count2 > 1 and $game != "STORY COMPLETED" and $game != "story completed" and $game != "STORY NOT COMPLETED" and $game != "story not completed" and $game != "JUST PLAYED" and $game != "just played"){
                            echo '<script>  
                                   sessionStorage.setItem("mode2", 0);
                             </script>';
                            echo '<style>
                                    body {
                                        background-image: 
                                        linear-gradient(
                                        rgba(0, 0, 0, 0.5),
                                        rgba(0, 0, 0, 0.5)
                                        ),
                                        url(./wallpapers/'  .$new_title. ');
                                        font-weight:inherit;
                                        opacity: 0.8;
                                        background-position: center center;
                                        background-repeat: no-repeat;
                                        background-attachment: fixed;
                                        background-size: cover;
                                        background-color: #121212;
                                        }
                                    </style>';
                        } else {
                            echo '<script>  
                                   sessionStorage.setItem("mode2", 0);
                             </script>';
                            echo '<style>
                                    body {
                                        background-image: 
                                        linear-gradient(
                                        rgba(0, 0, 0, 0.5),
                                        rgba(0, 0, 0, 0.5)
                                        ),
                                        url(./wallpapers/spiderman.png);
                                        font-weight:inherit;
                                        opacity: 0.8;
                                        background-position: center center;
                                        background-repeat: no-repeat;
                                        background-attachment: fixed;
                                        background-size: cover;
                                        background-color: #121212;
                                        }
                                    </style>';
                                    
                        }
                        // imagedestroy($imgx);
                        // echo "<h1>". $row['title'] . "</h1>";
                    } // end of while loop
                    
                } // end of if($result->num_rows)
                
        
            } else { // The user accessed the script directly
        
                // Tell them nicely and kill the script.
                $mysqli = "SELECT * FROM games";
                $prepared_stmt = $connection_string->prepare($mysqli);
                $prepared_stmt->execute();
                // Fetch the result
                $result = $prepared_stmt->get_result();
                while ($row = $result->fetch_assoc()) {
                    $image = $row['image'];
                    $status = $row['status'];
                    $title = $row['title'];
                    $trailer = $row['trailer'];
                    if ($status == "STORY COMPLETED") {
                        echo '<a href="'.$trailer.'" target="_blank">';
                            echo '<div class="content-green">';
                                echo '<img class="img-box" title="Show trailer on YouTube for '.ucwords($title).'" src="./images/'.$image.'"/>';
                                echo '<div class="bottom-center">' .$status. '</div>';
                            echo '</div>';
                        echo '</a>';
                    } elseif ($status == "STORY NOT COMPLETED") {
                        echo '<a href="'.$trailer.'" target="_blank">';
                            echo '<div class="content-red">';
                                echo '<img class="img-box" title="Show trailer on YouTube for '.ucwords($title).'" src="./images/'.$image.'"/>';
                                echo '<div class="bottom-center">' .$status. '</div>';
                            echo '</div>';
                        echo '</a>';
                    } elseif ($status == "JUST PLAYED") {
                        echo '<a href="'.$trailer.'" target="_blank">';
                            echo '<div class="content-orange">';
                                echo '<img class="img-box" title="Show trailer on YouTube for '.ucwords($title).'" src="./images/'.$image.'"/>';
                                echo '<div class="bottom-center">' .$status. '</div>';
                            echo '</div>';
                        echo '</a>';
                    } else {
                        echo '<a href="'.$trailer.'" target="_blank">';
                            echo '<img class="img-box" title="Show trailer on YouTube for '.ucwords($title).'" src="./images/'.$image.'"/>';
                    }   echo '</a>';
                }
                exit();
            }
        
        ?>
    </div>
    
</body>

</html>
