<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ChappterContent extends Model
{
    public $timestamps = true;
    protected $fillable = [
    	'chappter_content_id', 'chappter_id', 'chappter_content_name', 'chappter_content_link', 'is_mandatory','created_at','updated_at'
    ];
    protected $primaryKey = 'chappter_content_id';
 	protected $table = 'tbl_chappter_content';
}
