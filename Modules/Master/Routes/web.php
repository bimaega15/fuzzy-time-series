<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::prefix('master')->group(function() {
    Route::get('/', 'MasterController@index');

    Route::resource('/dataEmas', 'DataEmasController')->except([
        'show'
    ]);
    Route::get('/dataEmas/import', 'DataEmasController@import')->name('dataEmas.import');
    Route::post('/dataEmas/import', 'DataEmasController@storeImport')->name('dataEmas.storeImport');
});
