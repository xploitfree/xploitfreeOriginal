<?php
    $response = array();
    $con = mysqli_connect("localhost","root","","xploitfree") or die(mysqli_error($con));
    $body= file_get_contents('php://input');
    $string=json_decode($body);

    
    if(isset($string->name) && isset($string->phone) && isset($string->email) && isset($string->training) ||
    isset($string->name) && isset($string->phone) && isset($string->email) && isset($string->service) && isset($string->domain)){
        $name = $string->name;
        $phone = $string->phone;
        $email = $string->email;
        if(!isset($string->training)){
            $training="";
        }else{
            $training = $string->training;
         }

        if(!isset($string->service)){
            $service = "";
        }else{
            $service = $string->service;
        }

        if(!isset($string->domain)){
            $domain="" ;
        }else{
            $domain = $string->domain;
        }
        if ($name != "") {
            $name = filter_var($name, FILTER_SANITIZE_STRING);
            if ($name == "") {
                $response['name'] = "Invalid Name";
            }
        } else {
            $response['name'] = "Invalid Name";
               
        }
         //email
         if ($email != "") {
            $email = filter_var($email, FILTER_SANITIZE_EMAIL);
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $response['email'] = "$email is not a valid email address.";
                $email = "";
            }
        } else {
            $response['email'] = "Not a valid email address.";
            
        }
        //phone
        if($phone != ""){
            $phone = (int)$phone;
            $phone = filter_var($phone, FILTER_SANITIZE_NUMBER_INT);
            if (strlen($phone) > 10) {
                $response['phone'] = "$phone is not valid.";
                $phone = "";
            }else {
                $phone = (string)$phone;
            }
        }else {
            $response['phone'] = 'Please enter your Number.';
            
        }
       
   if($training != ""){
    $training = filter_var($training, FILTER_SANITIZE_STRING);
        if ($training == "") {
                $response['training'] = "Invalid training";
        }
   }else {
       $response['training'] = "Cannot be null";
   }
   //domain
    if ($domain != "") {
        $domain = filter_var($domain, FILTER_SANITIZE_URL);
        if (!filter_var(gethostbyname($domain), FILTER_VALIDATE_IP)) {
            $response['domain'] = 'Please enter a valid domain name.';
            $domain = "";
        }
    }
    //service
    if ($service != "") {
        $service = filter_var($service, FILTER_SANITIZE_STRING);
        if ($service == "") {
            $response['service'] = 'Please enter desired service.';

        }
    }

    if ($name != "" && $phone != "" && $email != "" && $training != ""){
        $query1 = "INSERT INTO RegisteredStudents(name,email,phone) values('$name','$email','$phone')";
        $query2 = "INSERT INTO StudentInterests(name,interest,phone) values('$name','$training','$phone')";
        $query_result1 = mysqli_query($con,$query1);
        $query_result2 = mysqli_query($con,$query2);

        if($query_result1 || $query_result2){
            $response['success'] = true;
            $response['message'] = "successful";   
        }
        else{
            
            $response['success'] = false;
            $response['message'] = "could not register";
        }
    }else{
        $response['general'] = "wrong credentials";
        echo json_encode($response);
    }

    if ($name != "" && $phone != "" && $service != "" && $email != "" && $domain != ""){
        //something
    }

    

}else {
    $response['general'] = "credentials cannot be null";
    
    echo json_encode($response);
}

?>