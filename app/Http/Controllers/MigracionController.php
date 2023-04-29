<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;

class MigracionController extends Controller
{
    public function migrar()
    {
        Artisan::call('migrate:fresh --seed');
    }
}
