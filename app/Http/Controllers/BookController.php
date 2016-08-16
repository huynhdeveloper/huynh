<?php
  
namespace App\Http\Controllers;

use App\Models\Book;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class BookController extends Controller{
    
    public function index(){
  
        $Books  = Book::all();
  
        return response()->json($Books);
    }
    
    public function getBook($id){
  
        $Book  = Book::find($id);
  
        return response()->json($Book);
    }
    
    public function createBook(Request $request){
  
        $Book = Book::create($request->all());
  
        return response()->json($Book);
  
    }
  
    public function deleteBook(Request $request){
        $Book  = Book::where('title','=',$request->input('title'))->first();
        if($Book!=null){
            $Book->delete();
            return  response()->json("name deleted");
        }else{
            return  response()->json("name not found");
        }
    }
  
    public function updateBook(Request $request){
        $Book  = Book::where('title','=',$request->input('title'))->first();
        if($Book!=null){
            $Book->author = $request->input('author');
            $Book->isbn = $request->input('isbn');
            $Book->save();
        }
  
        return response()->json($Book);
    }
}
?>	