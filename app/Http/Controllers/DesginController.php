<?php
  
namespace App\Http\Controllers;

use App\Models\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Json;
use App\Models\Account;
use App\Models\Like;

use DB;
  
  
class DesginController extends Controller{
    
    static public $para = "";
    
    public function apiProduct01(){
        return DB::select("SELECT categary.id AS categaryId , categary.name AS categaryName ,sub.id AS subId , sub.name AS subName , product.id AS productId , product.name As productName , product.dis AS productDis , product.img AS productImg , product.GetHome AS productGethome , product.prince AS productPrice

FROM product ,categary ,sub ,producted WHERE categary.id = producted.cate and sub.id = producted.sub AND product.id = producted.product");
    }
    
    public function apiCategary(){
        return DB::select("select * from category");
    }
    
    public function apiSub(){
        return DB::select("select * from sub");
    }
    
    public function apiAccount(){
        return DB::select("select * from account");
    }
    
    public function apiProduct(){
        return DB::select("select * from product");
    }
    
    public function apiProductCate(){
        return DB::select('select product.name, product.dis, product.img from show_product,categary,product WHERE 

                            show_product.product = product.id and

                            show_product.cate = categary.id and 
                            
                            show_product.hide = false

                            GROUP BY show_product.id');
    }
    
    public function apiProductSub(){
        return DB::select('select sub.id, sub.name from sub');
    }
    
    public function apiProductCateAndSub($cate){
        return DB::select('select sub.id, sub.name from sub where cate = '.$cate);
    }
    
    public function apiResgister($account){
        $array = array(
            Account::ACCOUNT_USER => $account->getUserName()."",
            Account::ACCOUNT_PASS => $account->getPassword()."",
            Account::ACCOUNT_PHONE => $account->getPhone()."",
            Account::ACCOUNT_SEX => $account->getSex()."",
            Account::ACCOUNT_ADDRESS => $account->getAddress().""
        );
        
        $count = DB::table(Account::TABLE_ACCOUNT)->where(Account::ACCOUNT_USER, '=' , $account->getUserName())->get();
        
        if(count($count) == 0){
            DB::table(Account::TABLE_ACCOUNT)->insert($array);
            return DB::table(Account::TABLE_ACCOUNT)->select()->where(Account::ACCOUNT_USER, '=' , $account->getUserName())->get();
            
        }else{
            return array();
        }
    }
    
    public function apiLogIn($account){
        
        $count = DB::table(Account::TABLE_ACCOUNT)->where(Account::ACCOUNT_USER, '=' , $account->getUserName())->get();
        if(count($count) == 0){
            return "fail";
        }else{
            return DB::table(Account::TABLE_ACCOUNT)->select()->where(Account::ACCOUNT_USER, '=' , $account->getUserName())->get();
        }
    }
    
    
   
    
    
    
    
    
    public function queryAbstract(){
        date_default_timezone_set('Asia/Ho_Chi_Minh');		
        $data =DB::table("product")->leftJoin ("time","product.id","=","time.product")
							   ->where(function($query){
								   $query->where("time.startofdate","<=",date("Y-m-d"))
										 ->orWhereNull("time.startofdate","IS Null");
							   })
							   ->where(function($query){
								   $query->where("time.endofdate",">",date("Y-m-d"))
										 ->orWhereNull("time.endofdate","IS Null");
							   })
								->where(function($query){
								   $todayh = getdate();	
								   $stringtime=$todayh['hours'].":".$todayh['minutes'].":".$todayh['seconds'];								 
								   $query->where("time.startofhour","<=",$stringtime)
										 ->orWhereNull("time.startofhour","IS Null");
							   })
								->where(function($query){
								   $todayh = getdate();
								   $stringtime=$todayh['hours'].":".$todayh['minutes'].":".$todayh['seconds'];	
								   $query->where("time.endofhour",">",$stringtime)
										 ->orWhereNull("time.endofhour","IS Null");
							   })
								->where(function($query){
								   $todayh = getdate();
								   $query->where("time.dayofweekstart","<=",$todayh['wday'])
										 ->orWhereNull("time.dayofweekstart","IS Null");
							   })
								->where(function($query){
								   $todayh = getdate();
								   $query->where("time.dayofweekEnd",">",$todayh['wday'])
										 ->orWhereNull("time.dayofweekEnd","IS Null");
							   });
            return $data;
    }
    
    
    public function testProduct($name){
            $data = DesginController::queryAbstract();
            DesginController::$para =$name;
            $data = $data->where(
                function($query){
                    $query->where("product.name",'like','%'.DesginController::$para.'%');
                }
            )->get();
            return $data;
    }
    
    
    public function showAll(){
        
        $product = DesginController::apiProduct();
        
        return view('show.showAll')->with('product',json_encode($product));
        
    }
    
    public function showCate(){
        
        $product = DesginController::apiProductCate();
        
        return view('show.showCate')->with('product',json_encode($product));
        
    }
    
    public function showSub(){
        
        $product = DesginController::apiProductSub();
        
        return view('show.showSub')->with('product',json_encode($product));
        
    }
    
    public function showCateAndSub(Request $request){
        
        if($request->input("cate") == ""){
            return view('show.showSub')->with('product',json_encode(array()));
        }
        $cate = $request->input("cate");
        
        $product = DesginController::apiProductCateAndSub($cate);
        
        return view('show.showCateAndSub')->with('product',json_encode($product));
        
    }
    
    public function showIndex(){
        
        $cate = DesginController::apiCategary();
        
        $sub = DesginController::apiSub();
        
        $account = DesginController::apiAccount();
        
        return view('index')->with('cate',json_encode($cate))->with('sub',json_encode($sub))->with('account',json_encode($account));
        
    }
    
    
    public function showRegister(Request $request){
        
        if($request->input(Account::ACCOUNT_USER) == ""){
            return view('show.showRegister')->with('message','fail deficient username');
        }
        
        if($request->input(Account::ACCOUNT_PASS) == ""){
            return view('show.showRegister')->with('message','fail deficient password');
        }
        
        if($request->input(Account::ACCOUNT_PHONE) == ""){
            return view('show.showRegister')->with('message','fail deficient phone');
        }
        
        if($request->input(Account::ACCOUNT_SEX) == ""){
            return view('show.showRegister')->with('message','fail deficient sex');
        }
        
        if($request->input(Account::ACCOUNT_ADDRESS) == ""){
            return view('show.showRegister')->with('message','fail deficient address');
        }
        
        $account = new Account();
        
        $account->setUserName($request->input(Account::ACCOUNT_USER));
        
        $account->setPassword($request->input(Account::ACCOUNT_PASS));
        
        $account->setPhone($request->input(Account::ACCOUNT_PHONE));
        
        $account->setSex($request->input(Account::ACCOUNT_SEX));
        
        $account->setAddress($request->input(Account::ACCOUNT_ADDRESS));
        
        $user = DesginController::apiResgister($account);
        
        return view('show.showRegister')->with('message',json_encode($user));
        
    }
    
    public function showLogin(Request $request){
        
        if($request->input(Account::ACCOUNT_USER) == ""){
            return view('show.showLogin')->with('message','fail deficient username');
        }
        
        if($request->input(Account::ACCOUNT_PASS) == ""){
            return view('show.showLogin')->with('message','fail deficient password');
        }
        
        $account = new Account();
        
        $account->setUserName($request->input(Account::ACCOUNT_USER));
        
        $account->setPassword($request->input(Account::ACCOUNT_PASS));
        
        $login = DesginController::apiLogIn($account);
        
        return view('show.showLogin')->with('message',json_encode($login));   
    }
    
    public function showDisable(Request $request){
        if($request->input(Account::ACCOUNT_USER) == ""){
            return view('show.showDisable')->with('message','fail deficient username');
        }
        $dis = DB::select("select * from account where username like '".$request->input(Account::ACCOUNT_USER)."'");
        
        foreach($dis as $i => $item){
            
            $item = (array)$item;
            
            $dis = $item['dis'];
        }
        
        if($dis == 0){
            
            $array_where = array(Account::ACCOUNT_USER => $request->input(Account::ACCOUNT_USER));
        
            $array_update = array(Account::ACCOUNT_DIS => 1);
        
            DB::table(Account::TABLE_ACCOUNT)->where($array_where)->update($array_update);
            
            return view('show.showDisable')->with('message','clock successfuly');
        }else{
            $array_where = array(Account::ACCOUNT_USER => $request->input(Account::ACCOUNT_USER));
        
            $array_update = array(Account::ACCOUNT_DIS => 0);
        
            DB::table(Account::TABLE_ACCOUNT)->where($array_where)->update($array_update);
            
            return view('show.showDisable')->with('message','unclock successfuly');
        }
    }
    
    
    
    
    
}
