<?php
  
namespace App\Http\Controllers;

use App\Models\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class FrontendController extends Controller{

    public function gotofrontend()
    {
        return view('Notification.chat')->with('user', 'a');

    }
    
}
    
?>