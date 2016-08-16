<?php 
namespace App\Models;
  
use Illuminate\Database\Eloquent\Model;
  
class Language extends Model{
    
    const TABLE_LANGUAGE = "ttlanguages";
    
    const LANGUAGE_ID = "id";
    
    const LANGUAGE_NAME = "language";
    
    private $id = 'id';
    
    private $name = 'language';
    
    public function __construct(){
        
    }
    
    public function setId($id){
        $this->id = $id;
    }
    
    public function getId(){
        return $this->id;
    }
    
    public function setLanguage($name){
        $this->name = $name;
    }
    
    public function getLanguage(){
        return $this->name;
    }
     
}
?>