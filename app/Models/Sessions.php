<?php 
namespace App\Models;
  
use Illuminate\Database\Eloquent\Model;
  
class Sessions extends Model{
    
    const TABLE_SESSIONS = "ttsessions";
    
    const SESSION_TOKEN = "tokenID";
    
    const SESSION_USERNAME = "username";
    
    private $tokenID = 'tokenID';
    
    private $username = 'username';
    
    public function __construct(){
        
    }
    
    public function setTokenID($tokenID){
        $this->tokenID = $tokenID;
    }
    
    public function getTokenID(){
        return $this->tokenID;
    }
    
    public function setUserName($username){
        $this->username = $username;
    }
    
    public function getUserName(){
        return $this->username;
    }
     
}
?>