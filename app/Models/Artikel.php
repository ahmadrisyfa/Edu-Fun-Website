<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    //
    protected $table = 'artikel';
    protected $guarded = ['id'];

    public function writers()
    {
        return $this->belongsTo(Writers::class, 'writers_id');
    }

}
