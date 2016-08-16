<?php 
namespace App\Models;
  
use Illuminate\Database\Eloquent\Model;
  
class Like extends Model{
    
    //protected $fillable = ['id','like','passive','status'];
    
    const TABLE_LIKE = 'ttlikes';
    
    const LIKE_ID = 'id';
    
    const LIKE_USER = 'like';
    
    const LIKE_PASSIVE = 'passive';
    
    const LIKE_STATUS = 'status';
    
    private $id = 'id';
    
    private $like = 'like';
    
    private $passive = 'passive';
    
    private $status = 'status';
    
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
    
    public function setStatus($status){
        $this->status = $status;
    }
    
    public function getStatus(){
        return $this->status;
    }
     
}
?>