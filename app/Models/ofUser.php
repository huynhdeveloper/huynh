<?php 

namespace App\Models;

  

use Illuminate\Database\Eloquent\Model;

  

class ofUser extends Model{

    protected $table = 'ofUser';

    protected $fillable = ['username','storedKey','serverKey','salt','iterations','plainPassword','encryptedPassword','name','email','creationDate','modificationDate'];

     

}

?>