<?php
namespace App\Libs;

use Illuminate\Database\Eloquent\Model;


class Database extends Model {
    public static function select(){
        return $this->query('select * from users');
    }
}