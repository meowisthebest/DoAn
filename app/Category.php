<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public $timestamps = true;
    protected $fillable = [
    	'category_id', 'category_name', 'category_img','created_at','updated_at'
    ];
    protected $primaryKey = 'category_id';
 	protected $table = 'tbl_category';
}
