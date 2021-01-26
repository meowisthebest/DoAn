<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Email extends Model
{
    public $timestamps = true;
    protected $fillable = [
    	'email_id', 'email','created_at','updated_at'
    ];
    protected $primaryKey = 'email_id';
 	protected $table = 'tbl_listemail';
}
