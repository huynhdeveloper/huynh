<?php
use App\Models\Score;
use Illuminate\Http\Request;


function authenticate($user, $password) {
     $_user_ = USERNAME;
     $_password_ = PASSWORD;

    if (($user == $_user_)&&($password == $_password_)) { return 0; }
    else { return 1; };
}

function destroy_foo(){
        if (isset($_SERVER['PHP_AUTH_USER'])) {
            unset($_SERVER['PHP_AUTH_USER']);       
        }
        if (isset($_SERVER['PHP_AUTH_PW'])) {
            unset($_SERVER['PHP_AUTH_PW']);
        }
}

$array = array("Message" => "Authorization has been denied for this request.");

if (!isset($_SERVER['PHP_AUTH_USER'])) {
    header('WWW-Authenticate: Basic realm="My Realm"');
    header('HTTP/1.0 401 Unauthorized');
    echo json_encode($array);
    exit;
} else {
    $user = isset($_SERVER['PHP_AUTH_USER']) ? $_SERVER['PHP_AUTH_USER'] : '';
    $password = isset($_SERVER['PHP_AUTH_PW']) ? $_SERVER['PHP_AUTH_PW'] : '';
    
    $result = authenticate($user,$password);
    if($result == 0){
        
    }else{
        header('HTTP/1.0 401 Unauthorized');
        echo json_encode($array);
        die;
    }
}


// function to parse the http auth header



/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

/*$app->get('/', function () use ($app) {
    return $app->version();
});
*/

//CREATE link api -> function of app
$app->post('/scores/new_score', function (Request $request) use ($app) {
    $new_scrore = new Score();
    $new_scrore->name = $request->input('name');
    $new_scrore->points = $request->input('points'); 
    if($new_scrore->save()){
        return response()->json($new_scrore);
    }else{
        return response()->json("error");
    }
});


//READ
$app->get('/scores', function () use ($app) {
    
    return response()->json(Score::all());
});


//UPDATE
$app->post('/scores/edit', function (Request $request) use ($app) {
    
    $findObject = Score::where('name','=',$request->input('name'))->first();
    
    if($findObject!=null){
        $findObject->points = $request->input("points");
        $findObject->save();
        return  response()->json($findObject);
    }else{
        return  response()->json("name not found");
    }
});

//DELETE
$app->post('/scores/delete', function (Request $request) use ($app) {
    
    $findObject = Score::where('name','=',$request->input('name'))->first();
    
    if($findObject!=null){
        $findObject->delete();
        return  response()->json("name deleted");
    }else{
        return  response()->json("name not found");
    }
    
});

$app->get('/login', 'AdminController@login');

$app->get('/notification', 'NotificationController@index');

$app->post('/notification', 'NotificationController@send');

$app->post('/add', 'UserController@createUser');

$app->post('/add_unlike', 'UnlikeController@createUnlike');

$app->post('/add_like', 'LikeController@createlike');

$app->post('/add_chat', 'ChatController@createChat');

$app->get('/get', 'UserController@getUserById');

$app->get('/unlike_get', 'UnlikeController@getUnlikeById');

$app->get('/chat_get', 'ChatController@getChatById');

$app->get('/like_get', 'LikeController@getlikeById');

$app->get('/edit', 'UserController@editUser');

$app->get('/edit_unlike', 'UnlikeController@editUnlike');

$app->get('/edit_chat', 'ChatController@editChat');

$app->get('/edit_like', 'LikeController@editlike');

$app->get('/create', 'UserController@gotoCreate');

$app->get('/create_unlike', 'UnlikeController@gotoCreate');

$app->get('/create_chat', 'ChatController@gotoCreate');

$app->get('/create_like', 'LikeController@gotoCreate');

$app->get('/delete', 'UserController@deleteUser');

$app->get('/adminUser', 'UserController@getAllUser');

//$app->get('/admin', 'AdminController@admin');

$app->get('/book','BookController@index');

$app->get('/book/{id}','BookController@getbook');

$app->post('/book','BookController@createBook');

$app->post('/book/update','BookController@updateBook');

$app->post('/book/delete','BookController@deleteBook');



$app->post('/User','UserController@createUser');

//$app->post('/CreateUser','UserController@create');

$app->get('/User','UserController@index');



$app->get('/Like','LikeController@index');

$app->post('/like','LikeController@createLike');

$app->get('/UnLike','UnlikeController@index');

$app->get('/Chat/','ChatController@index');

$app->get('/Chat/{id}','LikeController@chat');



$app->get('/UserInfo/{id}','LikeController@getUserInfo');

$app->post('/Delete','DeviceController@deleteDevice');

$app->get('/','AdminController@blankpage');

$app->get('/admin','AdminController@admin');

$app->get('/checkAdmin','UserController@checkadmin');



$app->get('/recover','UserController@recover');

$app->post('/recoverPwd','UserController@recoverPwd');

$app->post('/stestAjax','UserController@getkey');

$app->post('/frontend','FrontendController@gotofrontend');

$app->post('/userxmppCreate','ofUserController@create');

$app->get('/AddFriend/{id}','ChatController@chat');






/*--------- ApiController return json ---------------*/

//old api $app->post('/CreateUser','UserController@create');

$app->post('/API/v1/CreateUser','ApiController@createUser');

//old api $app->get('/User/{id}','UserController@getUser');

$app->get('/API/v1/User/{id}','ApiController@getUserToMatch');

//old api $app->post('/LikeHere','LikeController@LikeHere');

$app->post('/API/v1/LikeHere','ApiController@likeHere');

//old api $app->get('/Chatlist/{id}','ChatController@chatlist');

$app->get('/API/v1/ChatList/{id}','ApiController@getChatListAvailable');


$app->get('/API/v1/LogIn/{id}','ApiController@logIn');


$app->post('/API/v1/UnLike','ApiController@unLike');


$app->post('/API/v1/LogOut','ApiController@logOut');


$app->get('/API/v1/GetUserPara','ApiController@getUserPara');


$app->get('/API/v1/GetCountUser','ApiController@getCountUser');


$app->post('/API/v1/Location','ApiController@location');











