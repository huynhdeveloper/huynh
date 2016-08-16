<?php
  
namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class RegisterController extends Controller{
    
    public function create(Request $request){
        
        header('Location: http://52.202.183.213:9090/user-create.jsp?username=huynhnt&name=&email=&password=123456&passwordConfirm=123456&create=Create+User');
        
        exit();
        
        //header('Location: http://52.202.183.213:9090/user-create.jsp?username='.$request->input('account').'&name='.$request->input('name').'&email='.$request->input('mail').'&password='.$request->input('password').'&passwordConfirm='.$request->input('password').'&create=Create+User');

        return view('register/index');
  
    }
}
?>	