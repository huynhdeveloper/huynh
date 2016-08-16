<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Like;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class UserController extends Controller
{

    public function index()
    {

        $User = User::all();
  
        return response()->json($User);

    }



    public function getUser($id)
    {

        $User = User::where('id', '!=', $id);

        $use_id = Like::where('like', '=', $id)->get();

        foreach ($use_id as $item) {

            $User->where('id', '!=', $item['passive']);

        }

        return response()->json($User->get());
    }

    public function getAllUser()
    {

        $User = User::all();
        $a = array('menu' => 'user','user' => $User);

        return view('Notification.user')->with('user', $a);
      //  return response()->json($User);

    }
    public function logout()
    {
        session_unset();
        return view('login.signin')->with('asd', 'dsadas');
      //  return response()->json($User);

    }
    public function recover()
    {
        return view('login.recover')->with('asd', 'dsadas');
        //  return response()->json($User);

    }
    public function recoverPwd(Request $request)
    {
        include_once "function.php";
        $key = generateRandomString(5);
        $email = $request->input('email');
        $flights = User::where('email', $email)
            ->update(['pwd' => $key]);
        mail("doannngocduc220793@gmail.com", "reset", $key, "From:" . $email);
        return view('login.signin')->with('asd', 'dsadas');
        //return response()->json($User);
    }


    public function gotoCreate(){
        return view('Notification.create')->with('user', 'sa');

    }

    public function createUser(Request $request)
    {
        $email = $request->input('email');
        $name = $request->input('name');
        $gender = $request->input('gender');
        if($gender == 0){
            $gender ='male';
        }else{
            $gender ='female';
        }
            $User = User::insert(['email' => $email, 'name' => $name, 'gender' => $gender]);
            if ($User == null) {
                $User = User::create($request->all());
            }
            $User = User::all();

            return view('Notification.user')->with('user', $User);
    }
    
    public function create(Request $request)
    {
        $id = $request->input('id');
        $email = $request->input('email');
        $name = $request->input('name');
        $gender = $request->input('gender');
        if($gender == 0){
            $gender ='male';
        }else{
            $gender ='female';
        }
        $online = $request->input('online');
        $User = User::where('id','=',$id)->first();
        if ($User == null) {
            $User = User::create($request->all());
            /*$url = 'http://52.202.183.213:9090/plugins/userService/users';
            $headers = array(
                "Content-Type: application/xml",
                "Authorization: 4E0PCET8",
            );
            $ch = curl_init();
            curl_setopt( $ch, CURLOPT_URL, $url);
            curl_setopt( $ch, CURLOPT_POST, true );
            curl_setopt( $ch, CURLOPT_HTTPHEADER, $headers);
            curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true );
            curl_setopt( $ch, CURLOPT_POSTFIELDS, "<user><username>".$id."</username><password>123456</password><name>".$name."</name><email>test@localhost.de</email></user>" );
            $result = curl_exec($ch);
            curl_close($ch);*/
        }
        
        $User = User::all();

        return response()->json($User);
    }


    public function getUserById(Request $request)
    {

        $edit = (string)$request->input('edit');
        $delete = (string)$request->input('delete');
        if($edit != '') {
            $flights = User::where('id', $edit)
                ->take(1)
                ->get();
            $a = array('menu' => 'user','user' => $flights);
             return view('Notification.edit')->with('user', $a);
        }else{
            $flights =  User::where('id', $delete)
                ->update(['deleted' => 1]);
            $User = User::all();
            $a = array('menu' => 'user','user' => $User);

            return view('Notification.user')->with('user', $a);
        }

    }
    
    public function Status(Request $request){
        
        $findObject = User::where('id','=',$request->input('id'))->first();
        if($findObject!=null){
            $findObject->online = $request->input('status');
            $findObject->save();
        }
    }

    public function checkadmin(Request $request)
    {

        $email = (string)$request->input('email');
        $pwd = (string)$request->input('pwd');
        $pwd = md5($pwd);
            $flights = User::where('email', $email)->where('pwd', $pwd)->where('is_admin', 1)
                ->take(1)
                ->get();

           //  return view('Notification.edit')->with('user', $flights);
      if(strlen($flights)>2){
          session_start();
          $_SESSION["user"] = $email;
          $_SESSION['test'] = 'admin';
            $a = array('menu' => 'admin','user' => 'yes');
          return view('Notification.blank')->with('user', $a);
        }else{
            return view('login.signin')->with('user', 1);
        }

    }

    public function editUser(Request $request)
    {
        $back = (string)$request->input('back');
        if($back != '') {
            $id = (string)$request->input('id');
            $name = (string)$request->input('name');
            $email = (string)$request->input('email');
            $gender = (string)$request->input('gender');
            if ($gender == 0) {
                $gender = 'male';
            } else {
                $gender = 'female';
            }
            $flights = User::where('id', $id)
                ->update(['id' => $id, 'name' => $name, 'email' => $email, 'gender' => $gender,]);
            $User = User::all();
            return view('Notification.user')->with('user', $User);
            // return view('Notification.edit')->with('user', $flights);
        }else{
            $User = User::all();
            return view('Notification.user')->with('user', $User);
        }



    }
    function getkey(){
        session_start();
            if(isset($_POST['id'])){
                echo $_POST['id'];
            }else{
                echo 0;
            }

    }


}

?>