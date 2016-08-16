<?php
  
namespace App\Http\Controllers;

use App\Models\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class AdminController extends Controller{
    
    public function admin(){
  
        //TO DO
        //return view('index/helloworld', ['name' => "$Books"]);

        return view('login.signin')->with('user', 'sasa');
    }
    public function blankpage()
    {
        $a = array('menu' => 'admin');

        return view('Notification.blank')->with('user', $a);
    }
     public function login(){
        //TO DO
        //return view('index/helloworld', ['name' => "$Books"]);
  
        return view('login/index');
    }
    
}
    
?>