<?php
  
namespace App\Http\Controllers;

use App\Models\ofUser;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class ofUserController extends Controller{
    
    public function create(Request $request){
        
        $ofUser  = ofUser::where('username','=',$request->input('username'))->first();
        
        if($ofUser == null){
            $url = 'http://52.202.183.213:9090/plugins/userService/users';
            $headers = array(
                "Content-Type: application/xml",
                "Authorization: 4E0PCET8",
            );
            $ch = curl_init();
            curl_setopt( $ch, CURLOPT_URL, $url);
            curl_setopt( $ch, CURLOPT_POST, true );
            curl_setopt( $ch, CURLOPT_HTTPHEADER, $headers);
            curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true );
            curl_setopt( $ch, CURLOPT_POSTFIELDS, "<user><username>".$request->input('username')."</username><password>".$request->input('password')."</password><name>Test User</name><email>test@localhost.de</email></user>" );
            $result = curl_exec($ch);
            curl_close($ch);
        }
  
        return response()->json($ofUser);
    }
}
    
?>