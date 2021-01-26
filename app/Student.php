<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    public $timestamps = true;
    protected $fillable = [
    	'student_id', 'student_username', 'student_password', 'student_name', 'student_email', 'student_phone', 'student_address', 'created_at','updated_at'
    ];
    protected $primaryKey = 'student_id';
 	protected $table = 'tbl_student';
}
