<?php
  
namespace App\Http\Controllers;

use App\Models\Like;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class LikeController extends Controller{
    public function index(){
        $Like = Like::all();
        $data = array('menu' => 'like','like' => $Like);
        return view('Backend.Likes.index')->with('data', $data);

    }

    public function create(){
        return view('Backend.Likes.create')->with('data', 'sa');
    }

    public function edit(Request $request){
        $editId = (string)$request->input('id');
        $item = Like::where('id', $editId)
            ->take(1)
            ->get();
        $data = array('menu' => 'like','like' => $item);
        return view('Backend.Likes.edit')->with('data', $data);
    }

    public function deleteLike(Request $request){
        $deleteId = (string)$request->input('id');
        $item = Like::find($deleteId);
        $item->delete();
        return index();
    }

    public function saveLike(Request $request)
    {
        $id = (string)$request->input('id');
        $name = (string)$request->input('name');
        $email = (string)$request->input('email');
        $status = (string)$request->input('status');

        Like::where('id', $id)
            ->update(['id' => $id, 'passive' => $name, 'like' => $email, 'status' => $status]);
        return index();
    }

	
    public function createNewLike(Request $request)
    {
        $email = $request->input('email');
        $name = $request->input('name');
        $status = $request->input('status');

        $Like = Like::insert(['like' => $email, 'passive' => $name, 'status' => $status]);
        if ($Like == null) {
            Like::create($request->all());
        }
        return index();
    }


}
?>	