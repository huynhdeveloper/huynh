<?php 
namespace App\Models;
  
use Illuminate\Database\Eloquent\Model;
  
class Unlike extends Model{
    
    const TABLE_UNLIKE = "ttunlikes";
    
    const UNLIKE_ID = "id";
    
    const UNLIKE_USER = "unlike";
    
    const UNLIKE_PASSIVE= "passive";
    
    private $id = 'id';
    
    private $unlike = 'unlike';
    
    private $passive = 'passive';
    
    public function __construct(){
        
    }
    
    public function setId($id){
        $this->id = $id;
    }
    
    public function getId(){
        return $this->id;
    }
    
    public function setUnLike($unlike){
        $this->unlike = $unlike;
    }
    
    public function getUnLike(){
        return $this->unlike;
    }
    
    public function setPassive($passive){
        $this->passive = $passive;
    }
    
    public function getPassive(){
        return $this->passive;
    }
     
}
?>