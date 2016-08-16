<?php
  
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class LoginController extends Controller{
    
    public function admin(){
        
        return view('push/index');
    }
    
     public function login(){

        header('Location: http://52.202.183.213:9090/login.jsp?username=admin&password=123456&login=true');
exit();

        return view('LoginServer/index');
    }
    
}
    
?>