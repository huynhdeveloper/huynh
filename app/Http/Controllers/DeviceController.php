<?php
  
namespace App\Http\Controllers;

use App\Models\Device;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
  
  
class DeviceController extends Controller{
    
    public function createDevice(Request $request){

        $Device = Device::where('cloud_id','=',$request->input('cloud_id'))->where('name','=',$request->input('name'))->first();
        if($Device == null){
            $Device = Device::create($request->all());
            $Device->save();
        }else{
            return response()->json("already exists");
        }
    }

    public function deleteDevice(Request $request){

        $Device = Device::where('name','=',$request->input('name'))->where('cloud_id','=',$request->input('cloud_id'))->first();
        if($Device != null){
             $Device->delete();
        }
        
       return response()->json($Device );
    }
    
    
}
    
?>		