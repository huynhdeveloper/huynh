<?php
  
namespace App\Http\Controllers;

use App\Models\Unlike;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class UnlikeController extends Controller{
    
    public function index(){
  
        $Unlike = Unlike::all();
        $a = array('menu' => 'unlike','unlike' => $Unlike);
//        return response()->json($Unlike);
        return view('MathGame.unlike')->with('user', $a);

    }
    public function gotoCreate(){
        return view('MathGame.create')->with('user', 'sa');

    }
    public function getUnlike($id){
        $Unlike = Unlike::where('id','!=',$id)->get();
        return response()->json($Unlike);
    }

    public function getUnlikeById(Request $request){
        $edit = (string)$request->input('edit');
        $delete = (string)$request->input('delete');
        if($edit != '') {
            $flights = Unlike::where('id', $edit)
                ->take(1)
                ->get();
            $a = array('menu' => 'unlike','unlike' => $flights);
            return view('MathGame.edit')->with('user', $a);
        }else{
            $flight = Unlike::find($delete);
            $flight->delete();
            $Unlike = Unlike::all();
            $a = array('menu' => 'unlike','unlike' => $Unlike);
            return view('MathGame.unlike')->with('user', $a);
        }
    }


    public function createUnlike(Request $request)
    {
        $email = $request->input('email');
        $name = $request->input('name');

            $Unlike = Unlike::insert([ 'unlike' => $email, 'passive' => $name]);
            if ($Unlike == null) {
                $Unlike = Unlike::create($request->all());
            }
            $Unlike = Unlike::all();

            return view('MathGame.unlike')->with('user', $Unlike);

    }


    public function editUnlike(Request $request)
    {
        $back = (string)$request->input('back');
        if($back != '') {
            $id = (string)$request->input('id');
            $name = (string)$request->input('name');
            $email = (string)$request->input('email');

            $flights = Unlike::where('id', $id)
                ->update(['id' => $id, 'passive' => $name, 'unlike' => $email]);
            $User = Unlike::all();
            return view('MathGame.unlike')->with('user', $User);
            // return view('Notification.edit')->with('user', $flights);
        }else{
            $User = Unlike::all();
            return view('MathGame.unlike')->with('user', $User);
        }



    }
}
?>	