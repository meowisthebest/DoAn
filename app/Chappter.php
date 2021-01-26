<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Chappter extends Model
{
    public $timestamps = true;
    protected $fillable = [
    	'chappter_id', 'course_id', 'chappter_name','created_at','updated_at'
    ];
    protected $primaryKey = 'chappter_id';
 	protected $table = 'tbl_chappter';
}
