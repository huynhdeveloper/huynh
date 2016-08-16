<?php
namespace App\Businesses;
use App\Models\User;
use App\Models\Like;
use App\Models\UnLike;
use App\Models\Device;
use App\Models\Chat;
use App\Models\Sessions;
use App\Businesses\Convert;
use Illuminate\Database\Eloquent\ModelNotFoundException;

use DB;

class MatchBusinesses{
    
    
    //para: new User and new Device
    public static function createUser(User $user,$device){
        $array = array(
            User::USERS_ID => $user->getId()."",
            User::USERS_EMAIL => $user->getEmail()."",
            User::USERS_NAME => $user->getName()."",
            User::USERS_GENDER => $user->getGender()."",
            User::USERS_ONLINE => $user->getOnline()."",
            User::USERS_TIME => Convert::updateTimeStamp()
        );
        
        $result = array();
        
        $count = DB::table(User::TABLE_USERS)->where(array(User::USERS_ID=> $user->getId()))->get();
        
        if(count($count) == 0){
            
            DB::table(User::TABLE_USERS)->insert($array);
            
            MatchBusinesses::createOpenFireUser($user);
            
        }
        
        $result = MatchBusinesses::logIn($user->getId(),$device);
        
        return $result;
        
    }
    
    public static function logIn($username,Device $device){
        
        $token = MatchBusinesses::createToken($username);
        
        $cloud = MatchBusinesses::createDevice($device);
        
        $array = array(
                Sessions::SESSION_TOKEN => $token[Sessions::SESSION_TOKEN],
                Device::DEVICES_CLOUD => $cloud[Device::DEVICES_CLOUD]
        );
        
        return $array;
    }
    
    public static function createOpenFireUser(User $user){
        
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
            curl_setopt( $ch, CURLOPT_POSTFIELDS, "<user><username>".$user->getId()."</username><password>123456</password><name>".$user->getName()."</name><email>".$user->getEmail()."</email></user>" );
            $result = curl_exec($ch);
            curl_close($ch);
            
    }
    
    /* l?y danh sách ngu?i dùng tr? ngu?i dang nh?p*/
    public static function getUserToMatch($id){
        
        $id = MatchBusinesses::getUserName($id);
        
        $result = DB::select('SELECT * 
                FROM '.User::TABLE_USERS.'
                WHERE '.User::USERS_ID.' NOT IN 
                (SELECT l.'.Like::LIKE_PASSIVE.' as '.User::USERS_ID.' 
                 FROM '.Like::TABLE_LIKE.' l 
                 WHERE l.'.Like::LIKE_USER.' = "'.$id.'"
                )
                AND '.User::USERS_ID.' NOT IN
                (SELECT u.'.Unlike::UNLIKE_PASSIVE.' as '.User::USERS_ID.' 
                 FROM '.Unlike::TABLE_UNLIKE.' u 
                 WHERE u.'.Unlike::UNLIKE_USER.' = "'.$id.'"
                )
                AND 
                '.User::USERS_ID.' <> "'.$id.'"');
                
        
        return $result;
    }
    
    
    /* ghi nh?n tình tr?ng online và offline c?a ngu?i dùng */
    
   public static function status(User $user){
        
        $array_where = array(User::USERS_ID =>MatchBusinesses::getUserName($user->getId()));
        
        $array_update = array(User::USERS_ONLINE => $user->getOnline());
        
        if(DB::table(User::TABLE_USERS)->where($array_where)->update($array_update) == 1){
            
            return "successfully";
        }
        
        return "failed";
        
    }

    public static function like(Like $like){
        
        $id =  MatchBusinesses::getUserName($like->getLike());
        $array = array(
            Like::LIKE_USER => $like->getPassive(),
            Like::LIKE_PASSIVE => $id
        );
        $passive = DB::table(Like::TABLE_LIKE)->where($array)->get();
        
        $array = array(
            Like::LIKE_USER => $id,
            Like::LIKE_PASSIVE => $like->getPassive(),
            Like::LIKE_STATUS => $like->getStatus()
        );
        
        DB::table(Like::TABLE_LIKE)->insert($array);
        
        $result = "Not Match Like";
        
        if(count($passive) > 0){
            $result = MatchBusinesses::chatToMatch($like);
        }
        
        return $result;
  
    }
    
    public static function chatToMatch(Like $like){
        
            $array = array(Chat::CHAT_LIKE => MatchBusinesses::getUserName($like->getLike()), Chat::CHAT_PASSIVE => $like->getPassive());
            
            if(DB::table(Chat::TABLE_CHAT)->insert($array) == 1){
                
                MatchBusinesses::pushNotification($like);
                
                return 'Insert Chat';
            }
            return 'Not Insert Chat';
    }
    
    public static function pushNotification(Like $like){
        
        $array = array(Device::DEVICES_USER_NAME => $like->getPassive());
        
        $devices = DB::table(Device::TABLE_DEVICES)->where($array)->get();
        
        foreach ($devices as $items) {
            $items = (array)$items;
            $gcmRegID = $items[Device::DEVICES_CLOUD];
            $pushMessage = "MY FRIEND";
            if (isset($gcmRegID) && isset($pushMessage)) {      
                $gcmRegIds = array($gcmRegID);
                $message = array("m" => $pushMessage);  
                $pushStatus = MatchBusinesses::sendMessageThroughGCM($gcmRegIds, $message);
            }
            
        }
    }
    
    public static function sendMessageThroughGCM($registatoin_ids, $message) {
        //Google cloud messaging GCM-API url
        $url = 'https://android.googleapis.com/gcm/send';
        $fields = array(
            'registration_ids' => $registatoin_ids,
            'data' => $message,
        );
        // Update your Google Cloud Messaging API Key       
        $headers = array(
            'Authorization: key = AIzaSyCXgHnfMTNQ3UYPGYM9yFDB46uM1MTxO3g',
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
    
    /* list chat vs you */
    
    public static function getChatListAvailable($id){
        
        $id = MatchBusinesses::getUserName($id);
        
        $array = array(User::TABLE_USERS.'.'.User::USERS_ID,User::USERS_EMAIL,User::USERS_NAME,User::USERS_GENDER,User::USERS_ONLINE);
        
        $array_where_like = array(Chat::TABLE_CHAT.'.'.Chat::CHAT_LIKE => $id);
        
        $array_where_passive = array(Chat::TABLE_CHAT.'.'.Chat::CHAT_PASSIVE => $id);  
        
        $chat_like = DB::table(Chat::TABLE_CHAT)
                ->leftjoin(User::TABLE_USERS,Chat::TABLE_CHAT.'.'.Chat::CHAT_PASSIVE,'=',User::TABLE_USERS.'.'.User::USERS_ID)
                ->where($array_where_like)
                ->select($array)->get();
        
        $chat_passive = DB::table(Chat::TABLE_CHAT)->leftjoin(User::TABLE_USERS,Chat::TABLE_CHAT.'.'.Chat::CHAT_LIKE,'=',User::TABLE_USERS.'.'.User::USERS_ID)->where($array_where_passive)->select($array)->get();
        
        return array_merge($chat_like,$chat_passive);
  
    }
    
    public static function createDevice(Device $device){
        
        $array = array(
                Device::DEVICES_USER_NAME=> $device->getName(),
                Device::DEVICES_CLOUD => $device->getCloud()
        );
        
        DB::table(Device::TABLE_DEVICES)->where(array(Device::DEVICES_CLOUD => $device->getCloud()))->delete();
        
        $check = DB::table(Device::TABLE_DEVICES)->where($array)->get();
        
        if(count($check) == 0){
            DB::table(Device::TABLE_DEVICES)->insert($array);
        }
        return array(Device::DEVICES_CLOUD => $device->getCloud());
        
    }
    
    public static function deleteDevice(Device $device){
        
        $array = array(
                Device::DEVICES_USER_NAME=> MatchBusinesses::getUserName($device->getName()),
                Device::DEVICES_CLOUD => $device->getCloud()
        );
        
        $array_where = array(User::USERS_ID =>MatchBusinesses::getUserName($device->getName()));
        
        $array_update = array(User::USERS_ONLINE => "0");
        
        DB::table(User::TABLE_USERS)->where($array_where)->update($array_update);
        
        if(DB::table(Device::TABLE_DEVICES)->where(array(Device::DEVICES_CLOUD => $device->getCloud()))->delete() == 1){
            
            MatchBusinesses::deleteToken($device->getName());
            
            return "Delete completed";
        }
        
        return "Not Delete";
    }
    
    
    public static function deleteToken($tokenID){
        
        DB::table(Sessions::TABLE_SESSIONS)->where(array(Sessions::SESSION_TOKEN => $tokenID))->delete();
        
    }
    
    public static function endcode($algo, $data, $salt){
        $context = hash_init($algo, HASH_HMAC, $salt);
        hash_update($context, $data);
        return hash_final($context);
    }
    
    
    public static function getUserName($tokenID){
        
        $userName = DB::table(Sessions::TABLE_SESSIONS)->where(Sessions::SESSION_TOKEN , "=", $tokenID)->get();
        
        foreach($userName as $i => $item){
            
            $item = (array)$item;
            
            return $item[Sessions::SESSION_USERNAME];
        }
        
        return null;
        
    }
    
    public static function crypto_rand_secure($min, $max)
    {
        $range = $max - $min;
        if ($range < 1) return $min; // not so random...
        $log = ceil(log($range, 2));
        $bytes = (int) ($log / 8) + 1; // length in bytes
        $bits = (int) $log + 1; // length in bits
        $filter = (int) (1 << $bits) - 1; // set all lower bits to 1
        do {
            $rnd = hexdec(bin2hex(openssl_random_pseudo_bytes($bytes)));
            $rnd = $rnd & $filter; // discard irrelevant bits
        } while ($rnd >= $range);
        return $min + $rnd;
    }

    public static function getToken($length)
    {
        $token = "";
        $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        $codeAlphabet.= "abcdefghijklmnopqrstuvwxyz";
        $codeAlphabet.= "0123456789";
        $max = strlen($codeAlphabet) - 1;
        for ($i=0; $i < $length; $i++) {
            $token .= $codeAlphabet[MatchBusinesses::crypto_rand_secure(0, $max)];
        }
        return $token;
    }
    
    public static function createToken($username){
        
        $check = DB::table(User::TABLE_USERS)->where(User::USERS_ID ,"=", $username)->get();
        
        if(count($check) != 0){
                
            $id = MatchBusinesses::getToken(20);
        
            $array = array(
                        Sessions::SESSION_TOKEN => $id,
                        Sessions::SESSION_USERNAME => $username);
        
            if(DB::table(Sessions::TABLE_SESSIONS)->insert($array) == 0){
            
                return array();
            }
            return array(Sessions::SESSION_TOKEN => $id);
        }
        
        return array();
        
    }
    
    
    public static function unLike(UnLike $unLike){
        
        $array = array(
            UnLike::UNLIKE_USER => MatchBusinesses::getUserName($unLike->getUnLike()),
            UnLike::UNLIKE_PASSIVE => $unLike->getPassive()
        );
        
        DB::table(UnLike::TABLE_UNLIKE)->insert($array);
        
        return true;
  
    }
    
    public static function getUserPara($time,$id,$down,$size){
        
        $id = MatchBusinesses::getUserName($id);
        $timestamp = "";
        if($time != 0){  
            if($down == 0){
                $timestamp = "AND ".User::USERS_TIME." < ".$time."";
            }else{
                $timestamp = "AND ".User::USERS_TIME." > ".$time."";
            }
            
        }
        
        /* id, mail, name, gender, online, delete, is_admin, pwd, timestamp*/
        
        $result = DB::select('SELECT '.User::USERS_ID.','.User::USERS_EMAIL.','.User::USERS_NAME.','.User::USERS_GENDER.','.User::USERS_ONLINE.',
        '.User::USERS_TIME.'
                FROM '.User::TABLE_USERS.'
                WHERE '.User::USERS_ID.' NOT IN 
                (SELECT l.'.Like::LIKE_PASSIVE.' as '.User::USERS_ID.' 
                 FROM '.Like::TABLE_LIKE.' l 
                 WHERE l.'.Like::LIKE_USER.' = "'.$id.'"
                )
                AND '.User::USERS_ID.' NOT IN
                (SELECT u.'.Unlike::UNLIKE_PASSIVE.' as '.User::USERS_ID.' 
                 FROM '.Unlike::TABLE_UNLIKE.' u 
                 WHERE u.'.Unlike::UNLIKE_USER.' = "'.$id.'"
                )
                AND 
                '.User::USERS_ID.' <> "'.$id.'" '.$timestamp.' ORDER BY '.User::USERS_CREATE_AT.' ASC LIMIT '.$size);
        
        return $result;
    }
    
    
    public static function location($token,$latitude,$longtitude){
        
        $id = MatchBusinesses::getUserName($token);
        
        $array_where = array(User::USERS_ID =>$id);
        
        $array_update = array(
                                User::USERS_LATITUDE => $latitude,
                                User::USERS_LONGITUDE => $longtitude
                                );
                                
        DB::table(User::TABLE_USERS)->where($array_where)->update($array_update);
        
    }
    
}