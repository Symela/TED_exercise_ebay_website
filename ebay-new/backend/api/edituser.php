<?php

require 'connect.php';

$_POST = json_decode(file_get_contents('php://input'), true);

if(isset($_POST) && !empty($_POST)) {

  //xss protection and of the user of post method(at the same time 2 things)
  $id = htmlspecialchars($_POST['id']);
  $username = htmlspecialchars($_POST['username']);
  $name = htmlspecialchars($_POST['name']);
  $surname = htmlspecialchars($_POST['surname']);
  $email = htmlspecialchars($_POST['email']);
  $phone_number = htmlspecialchars($_POST['phone']);
  $country = htmlspecialchars($_POST['country']);
  $state = htmlspecialchars($_POST['state']);
  $town = htmlspecialchars($_POST['town']);
  $address = htmlspecialchars($_POST['address']);
  $postcode = htmlspecialchars($_POST['postcode']);
  $afm = htmlspecialchars($_POST['afm']);

  $sql = "UPDATE user SET username=?, name=?, surname=?, email=?, phone_number=?, country=?, state=?, town=?, address=?, postcode=?, afm=? WHERE id=?";

  if($stmt = mysqli_prepare($con, $sql)) {
    mysqli_stmt_bind_param($stmt, "ssssssssssii", $param_username, $param_name, $param_surname, $param_email, $param_phone, $param_country, $param_state, $param_town, $param_address, $param_postcode, $param_afm, $param_id);
    $param_username = $username;
    $param_name = $name;
    $param_surname = $surname;
    $param_email = $email;
    $param_phone = $phone_number;
    $param_country = $country;
    $param_state = $state;
    $param_town = $town;
    $param_address = $address;
    $param_postcode = $postcode;
    $param_afm = $afm;
    $param_id = $id;
    

    if(mysqli_stmt_execute($stmt)) {
      echo json_encode("1");
    } else {
      echo json_encode("Couldn't execute.");
    }

  } else {
    echo json_encode("Couldn't prepare.");
  }






  //epilegoume to user pou ta kanei ola auta
    // $sqltt = "SELECT * FROM user where username = 'divasa';";
    // $resultt = mysqli_query($con, $sqltt);

    // $usertt = mysqli_fetch_assoc($resultt);

    //parameters after editing, we will take them from post. This is for now!
    // $username = "divasaaa";
    // $tpassword = "filosu";
    // $name = "filoss";
    // $surname = "filsou";
    // $email = "vaggelisshmos@gmail.com";
    // $phone_number=6944754545;
    // $country="greece";
    // $state="e";
    // $town="petralona";
    // $address="edo29";
    // $postcode="123556789";
    // $afm = 123456889;
    // $id = $usertt['id'];
    // $user_category_id = $usertt['user_category_id'];
    // $rating_bidder = $usertt['rating_bidder'];
    // $rating_seller = $usertt['rating_seller'];
    //delete user
    //divasa is the name of the user who is doing the edit and he want's to edit himself
    // $sqld = "DELETE FROM user where username = 'divasa';";
    // if($resultd = mysqli_query($con,$sqld)){
    //   print_r("deleted\n");
    // }else {
    //   print_r("something is wrong with delete query\n");
    //   json_encode("something is wrong with delete query");
    //   exit;
    // }

    // $sqla = "SELECT * from auction where (select id from user where username = 'divasa' and id = auction.user_id);";
    // $resulta = mysqli_query($con, $sqlta);
    //
    // while ($userta = mysqli_fetch_assoc($resulta)){
    //   //do nothing, just for the save
    // }

    //xss protection and of the user of post method(at the same time 2 things)
    // $username = htmlspecialchars($_POST['Username']);
    // $tpassword = htmlspecialchars($_POST['Password']);//temporary password. It is gonna be encoded
    // $name = htmlspecialchars($_POST['Name']);
    // $surname = htmlspecialchars($_POST['Surname']);
    // $email = htmlspecialchars($_POST['Email']);
    // $phone_number = htmlspecialchars($_POST['Phone Number']);
    // $country = htmlspecialchars($_POST['Country']);
    // $state = htmlspecialchars($_POST['State']);
    // $town = htmlspecialchars($_POST['Town']);
    // $address = htmlspecialchars($_POST['Address']);
    // $postcode = htmlspecialchars($_POST['Postcode']);
    // $afm = htmlspecialchars($_POST['TIN / ΑΦΜ']);



    //do not check password maching, we have a master front end dev

    // //now we are gonna prepare the first statement to see if there is already a user like him
    // $sqltemp = "SELECT * FROM user WHERE email=? OR username=? OR password=? OR phone_number=? OR afm=? LIMIT 1;";
    // if($stmttemp = mysqli_prepare($con, $sqltemp)) {

    //   //bind parameters
    //   mysqli_stmt_bind_param($stmttemp, "ssssi", $param_email, $param_username, $param_password, $param_phone_number, $param_afm);

    //   //set parameters and execute
    //   $param_email=$email;
    //   $param_username=$username;
    //   $param_password=$tpassword;
    //   $param_phone_number=$phone_number;
    //   $param_afm=$afm;
    //   if (mysqli_stmt_execute($stmttemp)) {

    //     if (mysqli_stmt_fetch($stmttemp) > 0) {
    //       mysqli_stmt_close($stmttemp);

    //       $sql1="SELECT * FROM user WHERE email= '".$param_email."' OR username= '".$param_username."' OR password= '".$param_password."' OR phone_number= '".$param_phone_number."' OR afm= '".$param_afm."' LIMIT 1;";
    //       $result = mysqli_query($con, $sql1);
    //       //userk is the user on db with at least one same attribute as the one doing sign up
    //       $userk = mysqli_fetch_assoc($result);

    //       //if he exists
    //       if ($userk) {
    //         //let's find the attribute that is the same
    //         if ($userk['username'] === $param_username) {
    //           print_r("found same username\n");
    //           json_encode("4");
    //         }elseif ($userk['password'] === $param_password) {
    //           print_r("found same password\n");
    //           json_encode("5");
    //         }elseif ($userk['email'] === $param_email) {
    //           print_r("found same email\n");
    //           json_encode("6");
    //         }elseif ($userk['phone_number'] === $param_phone_number) {
    //           print_r("found same phone number\n");
    //           json_encode("7");
    //         }else {
    //           //same afm
    //           print_r("found same afm\n");
    //           json_encode('8');
    //         }

    //       }else {
    //         json_encode("3");

    //       }

    //     }else {

    //       print_r("Ola kala\n");

    //       //edo sunexizoume, den bre8ike user with the same username or password or email or phone_number or afm
    //       //check for email now, if it's realistic
    //       //the only safe way to do that is by sending an email to user, he clicks it, and the activate the rest. But unfortunately, we don't have the passion to do that and the front end is far away to ask him what we shoud do.
    //       //So we chose two other options (optional options xD) to close the gap for the email problem. Some of these may have been already done by our master front end dev
    //       //In our example, email is valid but it doesn't exist. Unfortunately, we check true.
    //       //Let's get started:::

    //       // Check that the address is formatted correctly
    //       if (filter_var($param_email, FILTER_VALIDATE_EMAIL) !== FALSE) {
    //         print_r("1st try email ok  ");
    //       }else {
    //         print_r("1st try email is not ok  ");
    //         json_encode("8");
    //       }
    //       // Check that the DNS record exists for the domain name
    //       $domain = substr($param_email, strpos($param_email, '@') + 1);
    //       if  (checkdnsrr($domain) !== FALSE) {
    //         print_r('2nd try email is ok cause domain is valid!');
    //       }else {
    //         print_r('2nd try email is not ok ');
    //         json_encode("9");
    //       }
    //       //that's all for now m8s

    //       //Now we want to encrypt our password to sha384(as it seems on a file i found for our front end dev)
    //       $salt= substr(str_shuffle(MD5(microtime())), 0, 10);  //optional
    //       $new_pass = hash('sha384', $param_password);
    //       print_r($new_pass);
    //       print_r("\n");


    //       //  And now let's go to insert the values
    //       $sql = "INSERT INTO user (id, user_category_id, username, password, name, surname, email, phone_number, country, state, town, address, postcode, afm, rating_bidder, rating_seller) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
    //       if($stmt = mysqli_prepare($con, $sql)) {
    //         mysqli_stmt_bind_param($stmt, "iisssssssssssidd", $id, $user_category_id, $uusername, $ppassword, $nname, $ssurname, $eemail, $pphone_number, $ccountry, $sstate, $ttown, $aaddress, $ppostcode, $aafm, $rating_bidder, $rating_seller);
    //         $id=$usertt['id'];
    //         $user_category_id = $usertt['user_category_id'];
    //         $uusername=$param_username;
    //         $ppassword=$new_pass;
    //         $nname=$name;
    //         $ssurname=$surname;
    //         $eemail=$param_email;
    //         $pphone_number=$param_phone_number;
    //         $ccountry=$country;
    //         $sstate=$state;
    //         $ttown=$town;
    //         $aaddress=$address;
    //         $ppostcode=$postcode;
    //         $aafm=$param_afm;
    //         $rating_bidder = $usertt['rating_bidder'];
    //         $rating_seller = $usertt['rating_seller'];

    //         //execute and insert into the db
    //         mysqli_stmt_execute($stmt);
    //         print_r("executed\n");
    //         print_r($id);

    //         //at last we are gonna update the user_id that has changed from auctions that user participated
    //         $sqla = "UPDATE from auction where (select id from user where username = 'divasa' and id = auction.user_id) SET user_id = $id;";  //parto


    //       }else {
    //         json_encode("10");
    //       }

    //     }

    //   }else {
    //     json_encode("2");
    //     print_r("something is off with execution\n");
    //   }

    // }else {
    //   json_encode("1");
    // }


//    echo json_encode("Let's say that i did that");
} else {
    // http_response_code("NO ONE REQUESTED THIS! WHY DO YOU ASK FOR IT?!");
    http_response_code(404);
}
?>
