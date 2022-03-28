<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SupportCreditMessage extends Model
{

    protected $guarded = ['id'];

    public function ticket(){
        return $this->belongsTo(SupportCredit::class, 'supportCredit_id', 'id');
    }

    public function admin(){
        return $this->belongsTo(Admin::class, 'admin_id', 'id');
    }

    public function attachments()
    {
        return $this->hasMany('App\Models\SupportAttachment','support_message_id','id');
    }
}
