<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    public $timestamps = true;
    protected $fillable = [
    	'course_id', 'category_id', 'course_name', 'course_img', 'course_lever', 'course_overview', 'course_learned','created_at','updated_at'
    ];
    protected $primaryKey = 'course_id';
 	protected $table = 'tbl_course';
}
