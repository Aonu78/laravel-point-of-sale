<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SystemSetting extends Model
{
    use HasFactory;
    protected $fillable = [
        'main_tag_line',
        'location_pos',
        'ntn_number',
        'logo',
        'tax',
        'pos',
    ];
}
