<?php
  
namespace App\Http\Controllers;

use App\Models\Notification;
use App\Models\Device;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class NotificationController extends Controller{
    
    public function sendMessageThroughGCM($registatoin_ids, $message) {
		//Google cloud messaging GCM-API url
        $url = 'https://android.googleapis.com/gcm/send';
        $fields = array(
            'registration_ids' => $registatoin_ids,
            'data' => $message,
        );
		// Update your Google Cloud Messaging API Key
				
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
    public function index(){
        
        $Notification = Notification::all();
        $Device = Device::all();
        
        return view('Notification.index')->with('name' , $Notification);
    }
    
     public function send(Request $request){
        define("GOOGLE_API_KEY", "AIzaSyCXgHnfMTNQ3UYPGYM9yFDB46uM1MTxO3g"); 
        $Device = Device::all();
        
		foreach ($Device as $items) {
		  $gcmRegID = $items["cloud_id"];
          $pushMessage = $request->input('Autosize');
          if (isset($gcmRegID) && isset($pushMessage)) {		
			$gcmRegIds = array($gcmRegID);
			$message = array("m" => $pushMessage);	
			$pushStatus = NotificationController::sendMessageThroughGCM($gcmRegIds, $message);
		  }
        }
        $Notifi = new Notification();
        $Notifi->device = "SamSung White";
        $Notifi->content = $request->input('Autosize');
        
        $Notifi->save();
        $Notification = Notification::all();
		
        return view('Notification.index')->with('name' , $Notification);
    }
}
?>