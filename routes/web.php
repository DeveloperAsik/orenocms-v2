<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

Route::get('/', function () {
    return redirect('/extraweb/login');
});
Route::group(['prefix' => 'extraweb'], function ($e) {
    Route::get('/', 'App\Http\Controllers\Backend\Auth\AppController@login')->name('extraweb.login');
    Route::get('/login', 'App\Http\Controllers\Backend\Auth\AppController@login')->name('extraweb.login2');
    Route::get('/logout', 'App\Http\Controllers\Backend\Auth\AppController@logout')->name('extraweb.logout');
    Route::get('/dashboard', 'App\Http\Controllers\Backend\Auth\AppController@dashboard')->name('extraweb.dashboard');
    Route::group(['prefix' => 'authentification'], function ($e) {
        Route::post('init', 'App\Http\Controllers\Backend\Auth\AppController@__init')->name('extraweb.authentification.init');
    });
    Route::group(['prefix' => 'master'], function ($e) {
        Route::group(['prefix' => 'uac'], function ($e) {
            Route::group(['prefix' => 'users'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\AccessControl\UserController@view')->name('extraweb.prefferences.master.user.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\AccessControl\UserController@@get_list')->name('extraweb.prefferences.master.user.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\UserController@@edit')->name('extraweb.prefferences.master.user.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\UserController@@update')->name('extraweb.prefferences.master.user.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\AccessControl\UserController@@create')->name('extraweb.prefferences.master.user.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\AccessControl\UserController@@insert')->name('extraweb.prefferences.master.user.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\UserController@@delete')->name('extraweb.prefferences.master.user.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\UserController@@remove')->name('extraweb.prefferences.master.user.remove');
            });
            Route::group(['prefix' => 'groups'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\AccessControl\GroupController@view')->name('extraweb.prefferences.master.group.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\AccessControl\GroupController@get_list')->name('extraweb.prefferences.group.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\GroupController@edit')->name('extraweb.prefferences.master.group.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\GroupController@update')->name('extraweb.prefferences.master.group.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\AccessControl\GroupController@create')->name('extraweb.prefferences.master.group.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\AccessControl\GroupController@insert')->name('extraweb.prefferences.master.group.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\GroupController@delete')->name('extraweb.prefferences.master.group.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\GroupController@remove')->name('extraweb.prefferences.master.group.remove');
            });
            Route::group(['prefix' => 'permissions'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\AccessControl\PermissionController@view')->name('extraweb.prefferences.master.permission.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\AccessControl\PermissionController@get_list')->name('extraweb.prefferences.permission.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\PermissionController@edit')->name('extraweb.prefferences.master.permission.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\PermissionController@update')->name('extraweb.prefferences.master.permission.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\AccessControl\PermissionController@create')->name('extraweb.prefferences.master.permission.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\AccessControl\PermissionController@insert')->name('extraweb.prefferences.master.permission.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\PermissionController@delete')->name('extraweb.prefferences.master.permission.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\PermissionController@remove')->name('extraweb.prefferences.master.permission.remove');
            });
            Route::group(['prefix' => 'menus'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\AccessControl\MenuController@view')->name('extraweb.prefferences.master.user.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\AccessControl\MenuController@get_list')->name('extraweb.prefferences.user.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\MenuController@edit')->name('extraweb.prefferences.master.user.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\MenuController@update')->name('extraweb.prefferences.master.user.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\AccessControl\MenuController@create')->name('extraweb.prefferences.master.user.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\AccessControl\MenuController@insert')->name('extraweb.prefferences.master.user.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\MenuController@delete')->name('extraweb.prefferences.master.user.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\AccessControl\MenuController@remove')->name('extraweb.prefferences.master.user.remove');
            });
        });
        Route::group(['prefix' => 'assets'], function ($e) {
            Route::group(['prefix' => 'currency'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\Assets\CurrencyController@view')->name('extraweb.prefferences.master.asset.currency.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\Assets\CurrencyController@get_list')->name('extraweb.prefferences.asset.currency.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\Assets\CurrencyController@edit')->name('extraweb.prefferences.master.asset.currency.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\Assets\CurrencyController@update')->name('extraweb.prefferences.master.asset.currency.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\Assets\CurrencyController@create')->name('extraweb.prefferences.master.asset.currency.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\Assets\CurrencyController@insert')->name('extraweb.prefferences.master.asset.currency.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\Assets\CurrencyController@delete')->name('extraweb.prefferences.master.asset.currency.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\Assets\CurrencyController@remove')->name('extraweb.prefferences.master.asset.currency.remove');
            });
            Route::group(['prefix' => 'icon'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\Assets\IconController@view')->name('extraweb.prefferences.master.user.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\Assets\IconController@get_list')->name('extraweb.prefferences.user.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\Assets\IconController@edit')->name('extraweb.prefferences.master.user.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\Assets\IconController@update')->name('extraweb.prefferences.master.user.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\Assets\IconController@create')->name('extraweb.prefferences.master.user.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\Assets\IconController@insert')->name('extraweb.prefferences.master.user.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\Assets\IconController@delete')->name('extraweb.prefferences.master.user.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\Assets\IconController@remove')->name('extraweb.prefferences.master.user.remove');
            });
            Route::group(['prefix' => 'class'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\Assets\ClassController@view')->name('extraweb.prefferences.master.user.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\Assets\ClassController@get_list')->name('extraweb.prefferences.user.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\Assets\ClassController@edit')->name('extraweb.prefferences.master.user.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\Assets\ClassController@update')->name('extraweb.prefferences.master.user.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\Assets\ClassController@create')->name('extraweb.prefferences.master.user.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\Assets\ClassController@insert')->name('extraweb.prefferences.master.user.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\Assets\ClassController@delete')->name('extraweb.prefferences.master.user.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\Assets\ClassController@remove')->name('extraweb.prefferences.master.user.remove');
            });
            Route::group(['prefix' => 'method'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\Assets\MethodController@view')->name('extraweb.prefferences.master.user.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\Assets\MethodController@get_list')->name('extraweb.prefferences.user.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\Assets\MethodController@edit')->name('extraweb.prefferences.master.user.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\Assets\MethodController@update')->name('extraweb.prefferences.master.user.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\Assets\MethodController@create')->name('extraweb.prefferences.master.user.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\Assets\MethodController@insert')->name('extraweb.prefferences.master.user.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\Assets\MethodController@delete')->name('extraweb.prefferences.master.user.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\Assets\MethodController@remove')->name('extraweb.prefferences.master.user.remove');
            });
        });
        Route::group(['prefix' => 'locations'], function ($e) {
            Route::group(['prefix' => 'country'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\Locations\CountryController@view')->name('extraweb.prefferences.master.locations.country.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\Locations\CountryController@get_list')->name('extraweb.prefferences.locations.country.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\Locations\CountryController@edit')->name('extraweb.prefferences.master.locations.country.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\Locations\CountryController@update')->name('extraweb.prefferences.master.locations.country.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\Locations\CountryController@create')->name('extraweb.prefferences.master.locations.country.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\Locations\CountryController@insert')->name('extraweb.prefferences.master.locations.country.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\Locations\CountryController@delete')->name('extraweb.prefferences.master.locations.country.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\Locations\CountryController@remove')->name('extraweb.prefferences.master.locations.country.remove');
            });
            Route::group(['prefix' => 'provinces'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\Locations\ProvincesController@view')->name('extraweb.prefferences.master.locations.provinces.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\Locations\ProvincesController@get_list')->name('extraweb.prefferences.master.locations.provinces.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\Locations\ProvincesController@edit')->name('extraweb.prefferences.master.locations.provinces.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\Locations\ProvincesController@update')->name('extraweb.prefferences.master.locations.provinces.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\Locations\ProvincesController@create')->name('extraweb.prefferences.master.locations.provinces.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\Locations\ProvincesController@insert')->name('extraweb.prefferences.master.locations.provinces.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\Locations\ProvincesController@delete')->name('extraweb.prefferences.master.locations.provinces.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\Locations\ProvincesController@remove')->name('extraweb.prefferences.master.locations.provinces.remove');
            });
            Route::group(['prefix' => 'cities'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\Locations\CitiesController@view')->name('extraweb.prefferences.master.locations.cities.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\Locations\CitiesController@get_list')->name('extraweb.prefferences.master.locations.cities.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\Locations\CitiesController@edit')->name('extraweb.prefferences.master.locations.cities.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\Locations\CitiesController@update')->name('extraweb.prefferences.master.locations.cities.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\Locations\CitiesController@create')->name('extraweb.prefferences.master.locations.cities.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\Locations\CitiesController@insert')->name('extraweb.prefferences.master.locations.cities.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\Locations\CitiesController@delete')->name('extraweb.prefferences.master.locations.cities.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\Locations\CitiesController@remove')->name('extraweb.prefferences.master.locations.cities.remove');
            });
            Route::group(['prefix' => 'districts'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\Locations\DistrictsController@view')->name('extraweb.prefferences.master.locations.districts.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\Locations\DistrictsController@get_list')->name('extraweb.prefferences.master.locations.districts.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\Locations\DistrictsController@edit')->name('extraweb.prefferences.master.locations.districts.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\Locations\DistrictsController@update')->name('extraweb.prefferences.master.locations.districts.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\Locations\DistrictsController@create')->name('extraweb.prefferences.master.locations.districts.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\Locations\DistrictsController@insert')->name('extraweb.prefferences.master.locations.districts.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\Locations\DistrictsController@delete')->name('extraweb.prefferences.master.locations.districts.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\Locations\DistrictsController@remove')->name('extraweb.prefferences.master.locations.districts.remove');
            });
            Route::group(['prefix' => 'areas'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Master\Locations\AreasController@view')->name('extraweb.prefferences.master.locations.areas.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Master\Locations\AreasController@get_list')->name('extraweb.prefferences.master.locations.areas.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Master\Locations\AreasController@edit')->name('extraweb.prefferences.master.locations.areas.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Master\Locations\AreasController@update')->name('extraweb.prefferences.master.locations.areas.update');
                Route::get('create', 'App\Http\Controllers\Backend\Master\Locations\AreasController@create')->name('extraweb.prefferences.master.locations.areas.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Master\Locations\AreasController@insert')->name('extraweb.prefferences.master.locations.areas.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Master\Locations\AreasController@delete')->name('extraweb.prefferences.master.locations.areas.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Master\Locations\AreasController@remove')->name('extraweb.prefferences.master.locations.areas.remove');
            });
        });
    });
    Route::group(['prefix' => 'prefferences'], function ($e) {
        Route::group(['prefix' => 'permissions'], function ($e) {
            Route::group(['prefix' => 'user'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Prefferences\Permissions\UserController@view')->name('extraweb.prefferences.permissions.user.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Prefferences\Permissions\UserController@get_list')->name('extraweb.prefferences.permissions.user.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\UserController@edit')->name('extraweb.prefferences.permissionsuser.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\UserController@update')->name('extraweb.prefferences.permissions.user.update');
                Route::get('create', 'App\Http\Controllers\Backend\Prefferences\Permissions\UserController@create')->name('extraweb.prefferences.permissions.user.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Prefferences\Permissions\UserController@insert')->name('extraweb.prefferences.permissions.user.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\UserController@delete')->name('extraweb.prefferences.permissions.user.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\UserController@remove')->name('extraweb.prefferences.permissions.user.remove');
            });
            Route::group(['prefix' => 'group'], function ($e) {
                Route::get('view', 'App\Http\Controllers\Backend\Prefferences\Permissions\GroupController@view')->name('extraweb.prefferences.permissions.group.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Prefferences\Permissions\GroupController@get_list')->name('extraweb.prefferences.permissions.group.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\GroupController@edit')->name('extraweb.prefferences.permissions.group.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\GroupController@update')->name('extraweb.prefferences.permissions.group.update');
                Route::get('create', 'App\Http\Controllers\Backend\Prefferences\Permissions\GroupController@create')->name('extraweb.prefferences.permissions.group.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Prefferences\Permissions\GroupController@insert')->name('extraweb.prefferences.permissions.group.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\GroupController@delete')->name('extraweb.prefferences.permissions.group.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\GroupController@remove')->name('extraweb.prefferences.permissions.group.remove');
            });
            Route::group(['prefix' => 'menu'], function ($e) {
               Route::get('view', 'App\Http\Controllers\Backend\Prefferences\Permissions\MenuController@view')->name('extraweb.prefferences.permissions.menu.view');
                Route::post('get_list', 'App\Http\Controllers\Backend\Prefferences\Permissions\MenuController@get_list')->name('extraweb.prefferences.permissions.menu.get_list');
                Route::get('edit/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\MenuController@edit')->name('extraweb.prefferences.permissions.menu.edit');
                Route::post('update/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\MenuController@update')->name('extraweb.prefferences.permissions.menu.update');
                Route::get('create', 'App\Http\Controllers\Backend\Prefferences\Permissions\MenuController@create')->name('extraweb.prefferences.permissions.menu.create');
                Route::post('insert', 'App\Http\Controllers\Backend\Prefferences\Permissions\MenuController@insert')->name('extraweb.prefferences.permissions.menu.insert');
                Route::post('delete/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\MenuController@delete')->name('extraweb.prefferences.permissions.menu.delete');
                Route::post('remove/{id}', 'App\Http\Controllers\Backend\Prefferences\Permissions\MenuController@remove')->name('extraweb.prefferences.permissions.menu.remove');
            });
        });
        Route::group(['prefix' => 'messaging'], function ($e) {
            Route::get('inbox', 'App\Http\Controllers\Backend\Messaging\DefaultController@inbox')->name('extraweb.messaging.inbox');
            Route::get('outbox', 'App\Http\Controllers\Backend\Messaging\DefaultController@outbox')->name('extraweb.messaging.outbox');
            Route::get('spam', 'App\Http\Controllers\Backend\Messaging\DefaultController@spam')->name('extraweb.messaging.spam');
            Route::get('draft', 'App\Http\Controllers\Backend\Messaging\DefaultController@draft')->name('extraweb.messaging.draft');
            Route::get('trash', 'App\Http\Controllers\Backend\Messaging\DefaultController@trash')->name('extraweb.messaging.trash');
        });
    });
    Route::prefix('ajax')->group(function () {
        Route::get('/get/{method}', 'App\Http\Controllers\Globals\AjaxController@fn_ajax_get')->name('global.ajax_get');
        Route::post('/post/{method}', 'App\Http\Controllers\Globals\AjaxController@fn_ajax_post')->name('global.ajax_post');
    });
});
