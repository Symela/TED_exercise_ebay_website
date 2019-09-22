<?php

require 'connect.php';

$_POST = json_decode(file_get_contents('php://input'), true);

if(isset($_POST) && !empty($_POST)) {

    $bids = [];

    $auctionId = htmlspecialchars($_POST['id']);

    $sql = "SELECT u.username, b.amount_of_money, b.time_of_bid
            FROM user AS u INNER JOIN bid AS b ON u.id = b.user_id
            WHERE b.bids_id = (SELECT id FROM bids WHERE auction_id = ?);";

    if($stmt = mysqli_prepare($con, $sql)) {
        mysqli_stmt_bind_param($stmt, "i", $param_id);
        $param_id = $auctionId;

        if(mysqli_stmt_execute($stmt)) {
            if($result = mysqli_stmt_get_result($stmt)) {
                $cr = 0;
                while($row = mysqli_fetch_assoc($result))
                {
                    $bids[$cr]['username'] = $row['username'];
                    $bids[$cr]['money'] = $row['amount_of_money'];
                    $bids[$cr]['time'] = $row['time_of_bid'];

                    $cr++;
                }

                json_encode($bids);
            } else {
                json_encode("Couldn't get results");
            }
        } else {
            json_encode("Couldn't execute");
        }
    } else {
        json_encode("Couldn't prepare");
    }
} else {
    // http_response_code("NO ONE REQUESTED THIS! WHY DO YOU ASK FOR IT?!");
    http_response_code(404);
}
?>