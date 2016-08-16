<?php
  
namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\User;
use App\Models\Chat;
use App\Models\UnLike;
use App\Models\Device;
use App\Models\ofUser;
use App\Models\Like;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Json;
use App\Models\Sessions;
use App\Models\Language;
use App\Businesses\MatchBusinesses;
  
  
class ApiController extends Controller{
    
    
    //Create User for app
    //para: new User and new Device
    //{
    //    USERS_ID,USERS_EMAIL,USERS_NAME,USERS_GENDER,USERS_ONLINE
    //
    //    DEVICES_CLOUD
    //
    //    LANGUAGE_ID
    //}
    public function createUser(Request $request){
        if ($request->input(User::USERS_ID) == "") {
            
            return $this->resultApi(array(),"false","deficient parameter user ".User::USERS_ID);
            
        } else if ($request->input(User::USERS_ONLINE) == "") {
            
            return $this->resultApi(array(),"false","deficient parameter user ".User::USERS_ONLINE);
            
        }else if ($request->input(Device::DEVICES_CLOUD) == "") {
            
            return $this->resultApi(array(),"false","deficient parameter device ".Device::DEVICES_CLOUD);
            
        }else if ($request->input(User::USERS_GENDER) == "") {
            
            return $this->resultApi(array(),"false","deficient parameter user ".User::USERS_GENDER);
            
        }else {
            $user = new User();
            if ($request->input(User::USERS_EMAIL) == "") {
                $user->setEmail("null");
            }else{
                $user->setEmail($request->input(User::USERS_EMAIL));
            }
            if ($request->input(User::USERS_NAME) == "") {
                $user->setName("null");
            }else{
                $user->setName($request->input(User::USERS_NAME));
            }
            
            $language = new Language();
            if($request->input(Language::LANGUAGE_ID) == ""){
                
                $language->setLanguage("en");
                
            }else{
                
                $language->setLanguage($request->input(Language::LANGUAGE_ID));
            }
            $user->setId($request->input(User::USERS_ID));

            $user->setGender($request->input(User::USERS_GENDER));

            $user->setOnline($request->input(User::USERS_ONLINE));
            
            $device = new Device();
            
            $device->setName($request->input(User::USERS_ID));
            
            $device->setCloud($request->input(Device::DEVICES_CLOUD));
        
            
            $result = MatchBusinesses::createUser($user,$device);        
    
            return $this->resultObject($result,"true","successfully");
        }
        
        
    }
    
    //load list user
    //para: username like
    // USERNAME_ID
    
    public function getUserToMatch($id){
        
        $users = MatchBusinesses::getUserToMatch($id);
        
        return $this->resultJson($users,"true","successfully");
    }
    
    // Online or Offline of User
    //para: username and status online or offline
    //{
    //  USERS_ID, USERS_ONLINE   
    //}
    public function status(Request $request){
        
        if($request->input(User::USERS_ID) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter user ".User::USERS_ID);
            
        }else if($request->input(User::USERS_ONLINE) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter user ".User::USERS_ONLINE);
        
        }else{
            
            $language = new Language();
            if($request->input(Language::LANGUAGE_ID) == ""){
                
                $language->setLanguage("en");
                
            }else{
                
                $language->setLanguage($request->input(Language::LANGUAGE_ID));
            }
            
            $User = new User();
        
            $User->setId($request->input(User::USERS_ID));
            
            $User->setOnline($request->input(User::USERS_ONLINE));
            
            $result = MatchBusinesses::status($User);
            
            return $this->resultApi(array(),"true",$result);
        }
    }
    
    //Like or Unlike User 0: unlike, 1: like
    //para: two username
    //{
    //    LIKE_USER,LIKE_STATUS,LIKE_PASSIVE
    //}
    public function likeHere(Request $request){
        
        if($request->input(Like::LIKE_USER) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter like ".Like::LIKE_USER);
        
        }else if($request->input(Like::LIKE_STATUS) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter like ".Like::LIKE_STATUS);
        
        }else if($request->input(Like::LIKE_PASSIVE) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter like ".Like::LIKE_PASSIVE);
        
        }else{
            
            $language = new Language();
            if($request->input(Language::LANGUAGE_ID) == ""){
                
                $language->setLanguage("en");
                
            }else{
                
                $language->setLanguage($request->input(Language::LANGUAGE_ID));
            }
            
            $Like = new Like();
        
            $Like->setLike($request->input(Like::LIKE_USER));
            
            $Like->setStatus($request->input(Like::LIKE_STATUS));
            
            $Like->setPassive($request->input(Like::LIKE_PASSIVE));
            
            $result = MatchBusinesses::like($Like);
            
            return $this->resultApi(array(),"true",$result);
        }
        
        
  
    }
    //old create cloud message 
    
    //para: Device
    //{
    //    DEVICES_USER_NAME,DEVICES_CLOUD
    //}
    
    public function createDevice(Request $request){
        
        if($request->input(Device::DEVICES_USER_NAME) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter device ".Device::DEVICES_USER_NAME);
            
        }else if($request->input(Device::DEVICES_CLOUD) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter device ".Device::DEVICES_CLOUD);
            
        }else{
            
            $language = new Language();
            if($request->input(Language::LANGUAGE_ID) == ""){
                
                $language->setLanguage("en");
                
            }else{
                
                $language->setLanguage($request->input(Language::LANGUAGE_ID));
            }
            
            $device = new Device();
        
            $device->setName($request->input(Device::DEVICES_USER_NAME));
            
            $device->setCloud($request->input(Device::DEVICES_CLOUD));
            
            $result = MatchBusinesses::createDevice($device);
            
            return $this->resultApi(array(),"true",$result);
        }
        
    }
    // para: new Device 
    //{
    //    DEVICES_USER_NAME,DEVICES_CLOUD
    //}
    public function deleteDevice(Request $request){
        
        if($request->input(Device::DEVICES_USER_NAME) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter device ".Device::DEVICES_USER_NAME);
            
        }else if($request->input(Device::DEVICES_CLOUD) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter device ".Device::DEVICES_CLOUD);
            
        }else{
            
            $language = new Language();
            if($request->input(Language::LANGUAGE_ID) == ""){
                
                $language->setLanguage("en");
                
            }else{
                
                $language->setLanguage($request->input(Language::LANGUAGE_ID));
            }
            
            $device = new Device();
        
            $device->setName($request->input(Device::DEVICES_USER_NAME));
            
            $device->setCloud($request->input(Device::DEVICES_CLOUD));
            
            $result = MatchBusinesses::deleteDevice($device);
            
            return $this->resultApi(array(),"true",$result);
        }
        
        
    }
    
    //para username
    public function getChatListAvailable($id){
        
        $result = MatchBusinesses::getChatListAvailable($id);
        
        return $this->resultJson($result,"true","successfully");
        
    }
    
    //para: username
    //USERS_ID 
    public function logIn($id){
        
        if($id == ""){
            
            return $this->resultApi(array(),"false","deficient parameter username ".User::USERS_ID);
            
        }else{
            
            $language = new Language();
            if($request->input(Language::LANGUAGE_ID) == ""){
                
                $language->setLanguage("en");
                
            }else{
                
                $language->setLanguage($request->input(Language::LANGUAGE_ID));
            }
            
            $result = MatchBusinesses::logIn($id);
            
            return $this->resultJson($result,"true","successfully");
        }
    }
    
    //para: info Device
    //{
    //    DEVICES_USER_NAME,DEVICES_CLOUD
    //}
    public function logOut(Request $request){
        
        if($request->input(Device::DEVICES_USER_NAME) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter device ".Device::DEVICES_USER_NAME);
            
        }else if($request->input(Device::DEVICES_CLOUD) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter device ".Device::DEVICES_CLOUD);
            
        }else{
            
            $language = new Language();
            if($request->input(Language::LANGUAGE_ID) == ""){
                
                $language->setLanguage("en");
                
            }else{
                
                $language->setLanguage($request->input(Language::LANGUAGE_ID));
            }
            
            $device = new Device();
        
            $device->setName($request->input(Device::DEVICES_USER_NAME));
            
            $device->setCloud($request->input(Device::DEVICES_CLOUD));
            
            $result = MatchBusinesses::deleteDevice($device);
            
            return $this->resultJson(array(),"true",$result);
        }
        
        
    }
    //para: two user 
    //{
    //    UNLIKE_USER, UNLIKE_PASSIVE
    //}
    public function unLike(Request $request){
        
        if($request->input(UnLike::UNLIKE_USER) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter unlike ".UnLike::UNLIKE_USER);
            
        }else if($request->input(UnLike::UNLIKE_PASSIVE) == ""){
            
            return $this->resultApi(array(),"false","deficient parameter unlike ".UnLike::UNLIKE_PASSIVE);
        }else{
            
            $language = new Language();
            if($request->input(Language::LANGUAGE_ID) == ""){
                
                $language->setLanguage("en");
                
            }else{
                
                $language->setLanguage($request->input(Language::LANGUAGE_ID));
            }
            
            $unLike = new UnLike();
        
            $unLike->setUnLike($request->input(UnLike::UNLIKE_USER));
            
            $unLike->setPassive($request->input(UnLike::UNLIKE_PASSIVE));
            
            $result = MatchBusinesses::unLike($unLike);
            
            return $this->resultApi(array(),$result,"successfully");
        }
        
    }
    
    
    //time id down size
    
    public function getUserPara(Request $request){
        
        if($request->input(User::USERS_TOKEN) == ""){
            
            return $this->resultApi(array(),null,"deficient parameter ".User::USERS_TOKEN);
        }
        
        if($request->input(User::USERS_TIME) == ""){
            
            return $this->resultApi(array(),null,"deficient parameter ".User::USERS_TIME);
        }
        
        if($request->input(User::USERS_DOWNORUP) == ""){
            
            return $this->resultApi(array(),null,"deficient parameter ".User::USERS_DOWNORUP);
        }
        
        if($request->input(User::USERS_SIZE) == ""){
            
            return $this->resultApi(array(),null,"deficient parameter ".User::USERS_SIZE);
        }
        
        
        $result = MatchBusinesses::getUserPara(
                                            $request->input(User::USERS_TIME),
                                            $request->input(User::USERS_TOKEN),
                                            $request->input(User::USERS_DOWNORUP),
                                            $request->input(User::USERS_SIZE)
                                            );
        
        return $this->resultJson($result,"true","successfully");
        
    }
    
    
    public function getCountUser(Request $request){
        
        $result = MatchBusinesses::getUserToMatch($request->input(User::USERS_TOKEN));
        
        $result = count($result);
        
        $array = array(User::USERS_SIZE => $result);
        
        return $this->resultArray($array,"true","successfully");
        
    }
    
    public function location(Request $request){
        
        
        if($request->input(User::USERS_LATITUDE) == ""){
            
            return $this->resultApi(array(),null,"deficient parameter ".User::USERS_LATITUDE);
        }
        
        if($request->input(User::USERS_LONGITUDE) == ""){
            
            return $this->resultApi(array(),null,"deficient parameter ".User::USERS_LONGITUDE);
        }
        
        if($request->input(User::USERS_TOKEN) == ""){
            
            return $this->resultApi(array(),null,"deficient parameter ".User::USERS_TOKEN);
        }
        
        $result = MatchBusinesses::location(
                                            $request->input(User::USERS_TOKEN),
                                            $request->input(User::USERS_LATITUDE),
                                            $request->input(User::USERS_LONGITUDE)
                                            );
        
        return $this->resultApi(array(),"true","successfully");
        
    }
    
    
}
    
?>