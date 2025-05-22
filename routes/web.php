<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;

Route::get('/', function () {
    return view('welcome');
});
Route::get('/importar-sql', function () {
    try {
        DB::unprepared(file_get_contents(database_path('scripts/ct_padel_2025.sql')));
        return '✅ Base de datos importada correctamente';
    } catch (\Exception $e) {
        return '❌ Error: ' . $e->getMessage();
    }
});