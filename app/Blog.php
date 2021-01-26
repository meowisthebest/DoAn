<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    public $timestamps = true;
    protected $fillable = [
    	'blog_id', 'blog_title', 'blog_img', 'blog_content', 'created_at', 'updated_at'
    ];
    protected $primaryKey = 'blog_id';
 	protected $table = 'tbl_blog';
}
