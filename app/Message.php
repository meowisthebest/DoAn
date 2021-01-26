<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    public $timestamps = true;
    protected $fillable = [
    	'contact_id', 'name', 'email', 'title', 'message', 'created_at', 'updated_at'
    ];
    protected $primaryKey = 'contact_id';
 	protected $table = 'tbl_contact';
}
