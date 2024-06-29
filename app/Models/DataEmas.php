<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataEmas extends Model
{
    use HasFactory;
    protected $table = 'data_emas';
    protected $guarded = [];
    public $timestamps = false;
}
