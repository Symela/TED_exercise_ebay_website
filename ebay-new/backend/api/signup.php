<?php

#summer zodiac
#// TODO:
  #$_POST for everything on html file -done
  #check for XSS  -done
  #...etc comming soon  -done
  #check if someone is already in db with that username or password or email or phone_number or afm (query using prepared statements) -done
  #check if email is realistic  -done?
  #encrypt password before inserting on db -done
  #insert everything on db using prepared statements	-done
require 'connect.php';

$_POST = json_decode(file_get_contents('php://input'), true);

if(isset($_POST) && !empty($_POST)) {
    // $username = "kapoiona";
    // $tpassword = "kapoiona";
    // $name = "kapoias";
    // $surname = "kapoias";
    // $email = "kapoiona@gmail.com";
    // $phone_number=6988888899;
    // $country="gr";
    // $state="elasona";
    // $town="zouliani";
    // $address="edo29";
    // $postcode="123556789";
    // $afm = 999888888;

    //xss protection and of the user of post method(at the same time 2 things)
    $username = htmlspecialchars($_POST['username']);
    $tpassword = htmlspecialchars($_POST['password']);//temporary password. It is gonna be encoded
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



    //do not check password maching, we have a master front end dev

    //now we are gonna prepare the first statement to see if there is already a user like him
    $sqltemp = "SELECT * FROM user WHERE email=? OR username=? OR password=? OR phone_number=? OR afm=? LIMIT 1;";
    $sqltemplist = "SELECT * FROM userlist WHERE email=? OR username=? OR password=? OR phone_number=? OR afm=? LIMIT 1;";
    if($stmttemp = mysqli_prepare($con, $sqltemp)) {

      //bind parameters
      mysqli_stmt_bind_param($stmttemp, "ssssi", $param_email, $param_username, $param_password, $param_phone_number, $param_afm);

      //set parameters and execute
      $param_email=$email;
      $param_username=$username;
      $param_password=$tpassword;
      $param_phone_number=$phone_number;
      $param_afm=$afm;
      if (mysqli_stmt_execute($stmttemp)) {

        if (mysqli_stmt_fetch($stmttemp) > 0) {
          mysqli_stmt_close($stmttemp);

          $sql1="SELECT * FROM user WHERE email= '".$param_email."' OR username= '".$param_username."' OR password= '".$param_password."' OR phone_number= '".$param_phone_number."' OR afm= '".$param_afm."' LIMIT 1;";
          $result = mysqli_query($con, $sql1);
          //userk is the user on db with at least one same attribute as the one doing sign up
          $userk = mysqli_fetch_assoc($result);

          //if he exists
          if ($userk) {
            //print_r($userk);
            //let's find the attribute that is the same
            if ($userk['username'] === $param_username) {
              ////print_r("found same username\n");
              echo 4;
            }elseif ($userk['password'] == $param_password) {
              //print_r("found same password\n");
              echo 5;
            }elseif ($userk['email'] === $param_email) {
              //print_r("found same email\n");
              echo 6;
            }elseif ($userk['phone_number'] == $param_phone_number) {
              //print_r("found same phone number\n");
              echo 7;
            }else {
              //same afm
              //print_r("found same afm\n");
              echo 8;
            }

          }else {
            echo 3;
            //print_r("edo oxi");
          }

        }else {

          //print_r("Ola kala sto table user\n");

          //edo sunexizoume, den bre8ike user with the same username or password or email or phone_number or afm sto table user, as psaksoume an einai se anamoni o user
          if($stmttemplist = mysqli_prepare($con, $sqltemplist)) {

            //bind parameters
            mysqli_stmt_bind_param($stmttemplist, "ssssi", $pparam_email, $pparam_username, $pparam_password, $pparam_phone_number, $pparam_afm);

            //set parameters and execute
            $pparam_email=$email;
            $pparam_username=$username;
            $pparam_password=password_hash($tpassword,PASSWORD_DEFAULT);
            $pparam_phone_number=$phone_number;
            $pparam_afm=$afm;
            if (mysqli_stmt_execute($stmttemplist)) {

              if (mysqli_stmt_fetch($stmttemplist) > 0) {
                mysqli_stmt_close($stmttemplist);

                $sqltl="SELECT * FROM userlist WHERE email= '".$param_email."' OR username= '".$param_username."' OR password= '".$param_password."' OR phone_number= '".$param_phone_number."' OR afm= '".$param_afm."' LIMIT 1;";
                $result = mysqli_query($con, $sqltl);
                //userk is the user on db with at least one same attribute as the one doing sign up
                $usertl = mysqli_fetch_assoc($result);

                //if he exists
                if ($usertl) {
                  ////print_r($usertl);
                  //let's find the attribute that is the same
                  if ($usertl['username'] === $pparam_username) {
                    //print_r("found same username on waiting list\n");
                    echo 4;
                  }elseif ($usertl['password'] === $pparam_password) {
                    //print_r("found same password on waiting list\n");
                    echo 5;
                  }elseif ($usertl['email'] === $pparam_email) {
                    //print_r("found same email on waiting list\n");
                    echo 6;
                  }elseif ($usertl['phone_number'] === $pparam_phone_number) {
                    //print_r("found same phone number on waiting list\n");
                    echo 7;
                  }else {
                    //same afm
                    //print_r("found same afm on waiting list\n");
                    echo 8;
                  }
                  // require 'printuserlist.php';
                  exit();
                }else {
                  echo -1;
                  //print_r("tl");
                }
              }else {
                //print_r("Ola kala den bre8ike sto waiting list\n");
              }
            }
          }
          //check for email now, if it's realistic
          //the only safe way to do that is by sending an email to user, he clicks it, and the activate the rest. But unfortunately, we don't have the passion to do that and the front end is far away to ask him what we shoud do.
          //So we chose two other options (optional options xD) to close the gap for the email problem. Some of these may have been already done by our master front end dev
          //In our example, email is valid but it doesn't exist. Unfortunately, we check true.
          //Let's get started:::

          // Check that the address is formatted correctly
          if (filter_var($param_email, FILTER_VALIDATE_EMAIL) !== FALSE) {
            //print_r("1st try email ok  ");
          }else {
            //print_r("1st try email is not ok  ");
            echo 8;
          }
          // Check that the DNS record exists for the domain name
          $domain = substr($param_email, strpos($param_email, '@') + 1);
          if  (checkdnsrr($domain) !== FALSE) {
            //print_r('2nd try email is ok cause domain is valid!');
          }else {
            //print_r('2nd try email is not ok ';
            echo 9;
          }
          //that's all for now m8s

          #this is where the fun begins



         $new_pass = $pparam_password;

         $sqluserlist = "INSERT INTO userlist (username, password, name, surname, email, phone_number, country, state, town, address, postcode, afm) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
         if($stmtuserlist = mysqli_prepare($con, $sqluserlist)) {
           mysqli_stmt_bind_param($stmtuserlist, "sssssssssssi", $uusername, $ppassword, $nname, $ssurname, $eemail, $pphone_number, $ccountry, $sstate, $ttown, $aaddress, $ppostcode, $aafm);
           $uusername=$param_username;
           $ppassword=$new_pass;
           $nname=$name;
           $ssurname=$surname;
           $eemail=$param_email;
           $pphone_number=$param_phone_number;
           $ccountry=$country;
           $sstate=$state;
           $ttown=$town;
           $aaddress=$address;
           $ppostcode=$postcode;
           $aafm=$param_afm;

           #parameters of mail
           $to = $eemail;
           $subject = "Mail varification";
           $txt = $uusername;
           $headers = $headers=array(
             'From: "admin@ted_ebay.com',
             'Content-Type:text/html;charset=UTF-8',
             );
           $headers = implode("\r\n", $headers);

           #just send it
           //You should do localy sudo apt-get install sendmail
           mail($to,$subject,$txt,$headers);

           //execute and insert into the db
           mysqli_stmt_execute($stmtuserlist);
           #//print_r("Mpikan sto temporary table (lista)\n");

           echo 99;


         }else {
           echo 13;
           //print_r("Den mpikan sto userlist\n");
         }


          //  And now let's go to insert the values
          // $sql = "INSERT INTO user (username, password, name, surname, email, phone_number, country, state, town, address, postcode, afm) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
          // if($stmt = mysqli_prepare($con, $sql)) {
          //   mysqli_stmt_bind_param($stmt, "sssssssssssi", $uusername, $ppassword, $nname, $ssurname, $eemail, $pphone_number, $ccountry, $sstate, $ttown, $aaddress, $ppostcode, $aafm);
          //   $uusername=$param_username;
          //   $ppassword=$new_pass;
          //   $nname=$name;
          //   $ssurname=$surname;
          //   $eemail=$param_email;
          //   $pphone_number=$param_phone_number;
          //   $ccountry=$country;
          //   $sstate=$state;
          //   $ttown=$town;
          //   $aaddress=$address;
          //   $ppostcode=$postcode;
          //   $aafm=$param_afm;
          //
          //
          //   //execute and insert into the db
          //   mysqli_stmt_execute($stmt);
          //   //print_r("executed\n");
          //
          //
          // }else {
          //   echo "10");
          // }

        }

      }else {
        echo 2;
        //print_r("something is off with execution\n";
      }

    }else {
      echo 1;
    }


//    echo "Let's say that i did that");
} else {
    // http_response_code("NO ONE REQUESTED THIS! WHY DO YOU ASK FOR IT?!");
    http_response_code(404);
}
?>
