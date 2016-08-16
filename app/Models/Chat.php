<?php 
namespace App\Models;
  
use Illuminate\Database\Eloquent\Model;
  
class Chat extends Model{
    
    const TABLE_CHAT = 'ttchats';
    
    const CHAT_ID = 'id';
    
    const CHAT_LIKE = 'like';
    
    const CHAT_PASSIVE = 'passive';
    
    
    private $id = 'id';
    
    private $like = 'like';
    
    private $passive = 'passive';
    
    public function __construct(){
        
    }
    
    public function setId($id){
        $this->id = $id;
    }
    
    public function getId(){
        return $this->id;
    }
    
    public function setLike($like){
        $this->like = $like;
    }
    
    public function getLike(){
        return $this->like;
    }
    
    public function setPassive($passive){
        $this->passive = $passive;
    }
    
    public function getPassive(){
        return $this->passive;
    }
     
}
?>