<?php 
namespace App\Models;
  
use Illuminate\Database\Eloquent\Model;
  
class Device extends Model{
    
    const TABLE_DEVICES = 'ttdevices';
    
    const DEVICES_ID = 'id';
    
    const DEVICES_USER_NAME = 'name';
    
    const DEVICES_CLOUD = 'cloud_id';
    
    private $id = 'id';
    
    private $name = 'name';
    
    private $cloud = 'cloud_id';
    
    public function __construct(){
        
    }
    
    public function setId($id){
        $this->id = $id;
    }
    
    public function getId(){
        return $this->id;
    }
    
    public function setName($name){
        $this->name = $name;
    }
    
    public function getName(){
        return $this->name;
    }
    
    public function setCloud($cloud){
        $this->cloud = $cloud;
    }
    
    public function getCloud(){
        return $this->cloud;
    }
    
     
}
?>