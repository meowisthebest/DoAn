<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    public $timestamps = true;
    protected $fillable = [
    	'admin_id', 'admin_username', 'admin_password', 'admin_name', 'admin_phone', 'admin_address', 'created_at','updated_at'
    ];
    protected $primaryKey = 'admin_id';
 	protected $table = 'tbl_admin';
}
