<?php
  
namespace App\Http\Controllers;

use App\Models\Chat;
use App\Models\Like;
use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class ChatController extends Controller{
	
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
  
        $Chat = Chat::all();

        $data = array('chat' => $Chat, 'menu' => 'chat');

       return view('MathGame.chat')->with('user', $data);


    }
    
    public function getChat($id){
  
        $Chat = Chat::where('like','=',$id)->get();
  
        return response()->json($Chat);
    }
	
	
    public function gotoCreate(){
        return view('MathGame.create_chat')->with('user', 'sa');
    }

    public function getChatById(Request $request)
    {

        $edit = (string)$request->input('edit');
        $delete = (string)$request->input('delete');
        if($edit != '') {
            $flights = Chat::where('id', $edit)
                ->take(1)
                ->get();
            $data = array('chat' => $flights, 'menu' => 'chat');

            return view('MathGame.edit_chat')->with('user', $data);
        }else{
            $flight = Chat::find($delete);
            $flight->delete();

            $Chat = Chat::all();

            $data = array('chat' => $Chat, 'menu' => 'chat');

            return view('MathGame.chat')->with('user', $data);
        }



    }

    public function editChat(Request $request)
    {
        $back = (string)$request->input('back');
        if($back != '') {
            $id = (string)$request->input('id');
            $name = (string)$request->input('name');
            $email = (string)$request->input('email');

            $flights = Chat::where('id', $id)
                ->update(['id' => $id, 'passive' => $name, 'like' => $email]);
            $User = Chat::all();
            return view('MathGame.chat')->with('user', $User);
            // return view('Notification.edit')->with('user', $flights);
        }else{
            $User = Chat::all();
            return view('MathGame.chat')->with('user', $User);
        }



    }
    public function createChat(Request $request)
    {
        $email = $request->input('email');
        $name = $request->input('name');
            $User = Chat::insert(['like' => $email, 'passive' => $name]);
            if ($User == null) {
                $User = Chat::create($request->all());
            }
            $Chat = Chat::all();

            return view('MathGame.chat')->with('user', $Chat);

    }
	 public function chatlist($id){
  
        $Chat = Chat::where('like','=',$id)->get();
        
        $finalObj = "";
        
        foreach($Chat as $i => $item){
            $finalObj[$i] = User::where('id','=',$item["passive"])->get();
        }
        
        return response()->json($finalObj);
    }
	
	public function chat($id){
        
		define("GOOGLE_API_KEY", "AIzaSyCXgHnfMTNQ3UYPGYM9yFDB46uM1MTxO3g"); 

        $Like = Like::where('like','=',$id)->get();
        $r = null;
        foreach($Like as $i => $item){
            $r[$i] = Like::where('like','=',$item['passive'])->where('passive','=',$id)->get();
            if($r[$i]->avg('id') != null){
                $check = Chat::where('like','=',$id)->where('passive','=',$item['passive'])->get();

                if($check->avg('id') == null){
                    $Device = Device::where('name','=',$item['passive'])->get();
                    foreach ($Device as $items) {
                        $gcmRegID = $items["cloud_id"];
                        $pushMessage = "MY FRIEND";
                        if (isset($gcmRegID) && isset($pushMessage)) {		
						$gcmRegIds = array($gcmRegID);
						$message = array("m" => $pushMessage);	
						$pushStatus = LikeController::sendMessageThroughGCM($gcmRegIds, $message);
		        }
                    }
                    $chat = new Chat();
                    $chat->like = $id;
                    $chat->passive = $item['passive'];
                    $chat->save();
                    $chat = new Chat();
                    $chat->passive= $id;
                    $chat->like = $item['passive'];
                    $chat->save();
		    
                }
            }
        }
  
        return response()->json($r);
    }
	
	
	
}
?>	