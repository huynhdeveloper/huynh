<?php
namespace App\Businesses;
class Convert{
    
    public static function longToTime($long){
        return date("Y-m-d H:i:s", $long);
    }
    
    public static function timeToLong($time){
        return strtotime($time);
    }
    
    public static function updateTimeStamp(){
        return microtime(true);
    }
    
}
?>