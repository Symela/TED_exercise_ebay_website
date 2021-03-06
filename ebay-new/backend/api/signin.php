<?php

require 'connect.php';

$_POST = json_decode(file_get_contents('php://input'), true);

if(isset($_POST) && !empty($_POST)) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // $username = "administrator";
    // $password = "admin";

    $username = htmlspecialchars($username);
    $password = htmlspecialchars($password);

    if(trim($username) == "guest" && trim($password) == "guest") {
        echo json_encode("0");
        exit;
    }

    $user = [];

    $sql1 = "SELECT password FROM user WHERE username=?;";

    if($stmt1 = mysqli_prepare($con, $sql1)) {
        mysqli_stmt_bind_param($stmt1, "s", $param_username);
        $param_username = $username;

        if(mysqli_stmt_execute($stmt1)) {

            mysqli_stmt_bind_result($stmt1, $data_password);

            if(mysqli_stmt_fetch($stmt1) == 1) {

                if(password_verify($password, $data_password)) {

                    mysqli_stmt_close($stmt1);

                    $sql = "SELECT id, user_category_id, name, surname, phone_number, email, country, state, town, address, postcode, afm, rating_bidder, rating_seller FROM user WHERE username=\"".$param_username."\";";
                    
                    $result = mysqli_query($con, $sql);
                    
                    if(mysqli_num_rows($result) > 0) {
                        
                        $row = mysqli_fetch_assoc($result);
                        if ($row['user_category_id'] == 1) {
                          echo json_encode(1);
                        }else {
                          echo json_encode($row['id']); //user
                        }
                        // echo json_encode($row);
                    } else {
                        echo json_encode("-1 ".$sql);
                    }
                } else {
                    echo json_encode("Wrong Password. Please try again.");
                }
            } else {
                echo json_encode("No user with username \"".$username);
            }
        }
        else {
            echo json_encode("-6");
        }
    } else {
        echo json_encode("-7");
    }
} else {
    // http_response_code("NO ONE REQUESTED THIS! WHY DO YOU ASK FOR IT?!");
    http_response_code(404);
}
?>
