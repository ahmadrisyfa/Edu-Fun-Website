<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Writers extends Model
{
    protected $table = 'writers';
    protected $guarded = ['id'];

    public function articles()
    {
        return $this->hasMany(Artikel::class, 'writers_id');
    }
}
