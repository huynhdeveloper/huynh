<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User extends Model{

    

    //protected $fillable = ['id','email','name','gender','online'];
    
    const TABLE_USERS = "ttusers";
    
    const USERS_ID = "id";
    
    const USERS_NAME = "email";
    
    const USERS_EMAIL = "name";
    
    const USERS_GENDER = "gender";
    
    const USERS_ONLINE = "online";
    
    const USERS_DELETED = "deleted";
    
    const USERS_IS_ADMIN = "is_admin";
    
    const USERS_PWD = "pwd";
    
    const USERS_TIME = "timestamp";
    
    const USERS_DOWNORUP = "up";
    
    const USERS_SIZE = "size";
    
    const USERS_CREATE_AT = "created_at";
    
    const USERS_TOKEN = "token";
    
    const USERS_LATITUDE ="latitude";
    
    const USERS_LONGITUDE ="longitude";
    
    
    private $id = 'id';
    
    private $email = 'email';
    
    private $name = 'name';
    
    private $gender = 'gender';
    
    private $online = 'online';
    
    private $deleted = 'deleted';
    
    private $is_admin = 'is_admin';
    
    private $pwd = 'pwd';
    
    private $timestamp = 'timestamp';
    
    private $latitude = 'latitude';
    
    private $longitude = 'longitude';
    
    public function __construct(){
        
    }
    
    public function setId($id){
        $this->id = $id;
    }

    public function getId(){
        return $this->id;
    } 
    
    public function setEmail($email){
        $this->email = $email;
    }

    public function getEmail(){
        return $this->email;
    } 
    
    public function setName($name){
        $this->name = $name;
    }

    public function getName(){
        return $this->name;
    } 
    
    public function setGender($gender){
        $this->gender = $gender;
    }

    public function getGender(){
        return $this->gender;
    } 
    
    public function setOnline($online){
        $this->online = $online;
    }

    public function getOnline(){
        return $this->online;
    } 
    
    public function setDeleted($delete){
        $this->deleted = $delete;
    }

    public function getDeleted(){
        return $this->deleted;
    } 
    
    public function setIsAdmin($is_admin){
        $this->is_admin = $is_admin;
    }

    public function getIsAdmin(){
        return $this->is_admin;
    } 
    
    public function setPwd($pwd){
        $this->pwd = $pwd;
    }

    public function getPwd(){
        return $this->pwd;
    } 
    
    public function setTimeStamp($timestamp){
        $this->timestamp = $timestamp;
    }

    public function getTimeStamp(){
        return $this->timestamp;
    } 
    
    public function setLatitude($latitude){
        $this->latitude = $latitude;
    }

    public function getLatitude(){
        return $this->latitude;
    } 
    
    public function setLongitude($longitude){
        $this->longitude = $longitude;
    }

    public function getLongitude(){
        return $this->longitude;
    } 

}

?>