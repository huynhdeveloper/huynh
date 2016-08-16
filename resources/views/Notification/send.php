


<?php
    function sendMessageThroughGCM($registatoin_ids, $message) {
		//Google cloud messaging GCM-API url
        $url = 'https://android.googleapis.com/gcm/send';
        $fields = array(
            'registration_ids' => $registatoin_ids,
            'data' => $message,
        );
		// Update your Google Cloud Messaging API Key
		define("GOOGLE_API_KEY", "AIzaSyCXgHnfMTNQ3UYPGYM9yFDB46uM1MTxO3g"); 		
        $headers = array(
            'Authorization: key=' . GOOGLE_API_KEY,
            'Content-Type: application/json'
        );
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST, 0);	
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
        $result = curl_exec($ch);				
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }
        curl_close($ch);
        return $result;
    }
?>

<?php
    /*$user_name = "root";
    $password = "";
    $database = "lumen";
    $dbhost = "localhost";
    
    $db_handle = mysql_connect($dbhost, $user_name, $password);
    
    $db_found = mysql_select_db($database, $db_handle);
    $sql = "select * from devices";
    if ($db_found) {
        $retval = mysql_query( $sql, $db_handle );
        while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
        {
            
            $gcmRegID = $row["cloud_id"];
            if($_SERVER['REQUEST_METHOD'] == 'POST'){
		          $pushMessage = "HERE RUN";
            }
        		
            if (isset($gcmRegID) && isset($pushMessage)) {		
    			$gcmRegIds = array($gcmRegID);
    			$message = array("m" => $pushMessage);	
    			$pushStatus = sendMessageThroughGCM($gcmRegIds, $message);
                echo $gcmRegID;
	       }	
        }
        mysql_close($db_handle);
    }
    else {
    
    print "Database NOT Found ";
    
    }*/
    
    $user_name = "root";
    $password = "";
    $database = "lumen";
    $dbhost = "localhost";
    
    $db_handle = mysql_connect($dbhost, $user_name, $password);
    
    if (!$db_handle) {
    die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully';
mysql_close($db_handle);

?>


<?php
	
	//Post message to GCM when submitted
	
		/*$gcmRegID  = "APA91bHKMcrEbtSBaZz7J7dv-czWVAezw9blp1SEjiPEUCqIbu_Ai6re7kM7IdqGILp-MxxHb1UqzJZ6fZEZLAoZUxKx4s1Er6wLpD2FtWoaQu0HfPF-ZoPaiESz44kRf-VLHmDQPxYpHN9Z09Vdvj7GCYPK9m8Rog";
		if($_SERVER['REQUEST_METHOD'] == 'POST'){
		      $pushMessage = $_POST["Autosize"];
		}
        		
		if (isset($gcmRegID) && isset($pushMessage)) {		
			$gcmRegIds = array($gcmRegID);
			$message = array("m" => $pushMessage);	
			$pushStatus = sendMessageThroughGCM($gcmRegIds, $message);
		}*/	
        //echo $pushMessage;
?>