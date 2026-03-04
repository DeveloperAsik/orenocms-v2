<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Http\Controllers\Backend\Auth\AppController;
use App\Http\Controllers\Globals\AjaxController;
use App\Http\Controllers\Backend\Master\AccessControl\UserController;
use App\Http\Controllers\Backend\Master\AccessControl\GroupController;
use App\Http\Controllers\Backend\Master\AccessControl\PermissionController;
use App\Http\Controllers\Backend\Master\AccessControl\MenuController;
use App\Http\Controllers\Backend\Master\Assets\CurrencyController;
use App\Http\Controllers\Backend\Master\Assets\IconController;
use App\Http\Controllers\Backend\Master\Assets\ClassController;
use App\Http\Controllers\Backend\Master\Assets\MethodController;
use App\Http\Controllers\Backend\Master\Locations\CountryController;
use App\Http\Controllers\Backend\Master\Locations\ProvincesController;
use App\Http\Controllers\Backend\Master\Locations\CitiesController;
use App\Http\Controllers\Backend\Master\Locations\DistrictsController;
App\Http\Controllers\Backend\Master\Locations\AreasController;

Route::get('/', function () {
    return redirect('/extraweb/login');
});

Route::prefix('extraweb')->group(function () {
    Route::get('/', [AppController::class, 'login'])->name('extraweb.login');
    Route::get('/login', [AppController::class, 'login'])->name('extraweb.login2');
    Route::get('/logout', [AppController::class, 'logout'])->name('extraweb.logout');
    Route::get('/dashboard', [AppController::class, 'dashboard'])->name('extraweb.dashboard');
    Route::prefix('/authentification')->group(function () {
        Route::post('/init', [AppController::class, '__init'])->name('extraweb.authentification.init');
    });
    Route::prefix('/ajax')->group(function () {
        Route::post('/get/{method}', [AjaxController::class, 'fn_ajax_get'])->name('extraweb.global.ajax_get');
        Route::post('/post/{method}', [AjaxController::class, 'fn_ajax_post'])->name('extraweb.global.ajax_post');
    });

    Route::prefix('/master')->group(function () {
        Route::prefix('/uac')->group(function () {
            Route::prefix('/users')->group(function () {
                Route::get('/view', [UserController::class, 'view'])->name('extraweb.master.uac.users.view');
                Route::post('/get_list', [UserController::class, 'get_list'])->name('extraweb.master.uac.users.get_list');
                Route::get('/edit/{id}', [UserController::class, 'edit'])->name('extraweb.master.uac.users.edit');
                Route::post('/update/{id}', [UserController::class, 'update'])->name('extraweb.master.uac.users.update');
                Route::get('/create', [UserController::class, 'create'])->name('extraweb.master.uac.users.create');
                Route::post('/insert', [UserController::class, 'insert'])->name('extraweb.master.uac.users.insert');
                Route::post('/delete/{id}', [UserController::class, 'delete'])->name('extraweb.master.uac.users.delete');
                Route::post('/remove/{id}', [UserController::class, 'remove'])->name('extraweb.master.uac.users.remove');
            });
            Route::prefix('/groups')->group(function () {
                Route::get('/view', [GroupController::class, 'view'])->name('extraweb.master.uac.groups.view');
                Route::post('/get_list', [GroupController::class, 'get_list'])->name('extraweb.master.uac.groups.get_list');
                Route::get('/edit/{id}', [GroupController::class, 'edit'])->name('extraweb.master.uac.groups.edit');
                Route::post('/update/{id}', [GroupController::class, 'update'])->name('extraweb.master.uac.groups.update');
                Route::get('/create', [GroupController::class, 'create'])->name('extraweb.master.uac.groups.create');
                Route::post('/insert', [GroupController::class, 'insert'])->name('extraweb.master.uac.groups.insert');
                Route::post('/delete/{id}', [GroupController::class, 'delete'])->name('extraweb.master.uac.groups.delete');
                Route::post('/remove/{id}', [GroupController::class, 'remove'])->name('extraweb.master.uac.groups.remove');
            });
            Route::prefix('/permissions')->group(function () {
                Route::get('/view', [PermissionController::class, 'view'])->name('extraweb.master.uac.permissions.view');
                Route::post('/get_list', [PermissionController::class, 'get_list'])->name('extraweb.master.uac.permissions.get_list');
                Route::get('/edit/{id}', [PermissionController::class, 'edit'])->name('extraweb.master.uac.permissions.edit');
                Route::post('/update/{id}', [PermissionController::class, 'update'])->name('extraweb.master.uac.permissions.update');
                Route::get('/create', [PermissionController::class, 'create'])->name('extraweb.master.uac.permissions.create');
                Route::post('/insert', [PermissionController::class, 'insert'])->name('extraweb.master.uac.permissions.insert');
                Route::post('/delete/{id}', [PermissionController::class, 'delete'])->name('extraweb.master.uac.permissions.delete');
                Route::post('/remove/{id}', [PermissionController::class, 'remove'])->name('extraweb.master.uac.permissions.remove');
            });
            Route::prefix('/menus')->group(function () {
                Route::get('/view', [MenuController::class, 'view'])->name('extraweb.master.uac.menus.view');
                Route::post('/get_list', [MenuController::class, 'get_list'])->name('extraweb.master.uac.menus.get_list');
                Route::get('/edit/{id}', [MenuController::class, 'edit'])->name('extraweb.master.uac.menus.edit');
                Route::post('/update/{id}', [MenuController::class, 'update'])->name('extraweb.master.uac.menus.update');
                Route::get('/create', [MenuController::class, 'create'])->name('extraweb.master.uac.menus.create');
                Route::post('/insert', [MenuController::class, 'insert'])->name('extraweb.master.uac.menus.insert');
                Route::post('/delete/{id}', [MenuController::class, 'delete'])->name('extraweb.master.uac.menus.delete');
                Route::post('/remove/{id}', [MenuController::class, 'remove'])->name('extraweb.master.uac.menus.remove');
            });
        });
        Route::prefix('/assets')->group(function () {
            Route::prefix('/currency')->group(function () {
                Route::get('/view', [CurrencyController::class, 'view'])->name('extraweb.master.assets.currency.view');
                Route::post('/get_list', [CurrencyController::class, 'get_list'])->name('extraweb.master.assets.currency.get_list');
                Route::get('/edit/{id}', [CurrencyController::class, 'edit'])->name('extraweb.master.assets.currency.edit');
                Route::post('/update/{id}', [CurrencyController::class, 'update'])->name('extraweb.master.assets.currency.update');
                Route::get('/create', [CurrencyController::class, 'create'])->name('extraweb.master.assets.currency.create');
                Route::post('/insert', [CurrencyController::class, 'insert'])->name('extraweb.master.assets.currency.insert');
                Route::post('/delete/{id}', [CurrencyController::class, 'delete'])->name('extraweb.master.assets.currency.delete');
                Route::post('/remove/{id}', [CurrencyController::class, 'remove'])->name('extraweb.master.assets.currency.remove');
            });
            Route::prefix('/icons')->group(function () {
                Route::get('/view', [IconController::class, 'view'])->name('extraweb.master.assets.icons.view');
                Route::post('/get_list', [IconController::class, 'get_list'])->name('extraweb.master.assets.icons.get_list');
                Route::get('/edit/{id}', [IconController::class, 'edit'])->name('extraweb.master.assets.icons.edit');
                Route::post('/update/{id}', [IconController::class, 'update'])->name('extraweb.master.assets.icons.update');
                Route::get('/create', [IconController::class, 'create'])->name('extraweb.master.assets.icons.create');
                Route::post('/insert', [IconController::class, 'insert'])->name('extraweb.master.assets.icons.insert');
                Route::post('/delete/{id}', [IconController::class, 'delete'])->name('extraweb.master.assets.icons.delete');
                Route::post('/remove/{id}', [IconController::class, 'remove'])->name('extraweb.master.assets.icons.remove');
            });
            Route::prefix('/classes')->group(function () {
                Route::get('/view', [ClassController::class, 'view'])->name('extraweb.master.assets.classes.view');
                Route::post('/get_list', [ClassController::class, 'get_list'])->name('extraweb.master.assets.classes.get_list');
                Route::get('/edit/{id}', [ClassController::class, 'edit'])->name('extraweb.master.assets.classes.edit');
                Route::post('/update/{id}', [ClassController::class, 'update'])->name('extraweb.master.assets.classes.update');
                Route::get('/create', [ClassController::class, 'create'])->name('extraweb.master.assets.classes.create');
                Route::post('/insert', [ClassController::class, 'insert'])->name('extraweb.master.assets.classes.insert');
                Route::post('/delete/{id}', [ClassController::class, 'delete'])->name('extraweb.master.assets.classes.delete');
                Route::post('/remove/{id}', [ClassController::class, 'remove'])->name('extraweb.master.assets.classes.remove');
            });
            Route::prefix('/methods')->group(function () {
                Route::get('/view', [MethodController::class, 'view'])->name('extraweb.master.assets.methods.view');
                Route::post('/get_list', [MethodController::class, 'get_list'])->name('extraweb.master.assets.methods.get_list');
                Route::get('/edit/{id}', [MethodController::class, 'edit'])->name('extraweb.master.assets.methods.edit');
                Route::post('/update/{id}', [MethodController::class, 'update'])->name('extraweb.master.assets.methods.update');
                Route::get('/create', [MethodController::class, 'create'])->name('extraweb.master.assets.methods.create');
                Route::post('/insert', [MethodController::class, 'insert'])->name('extraweb.master.assets.methods.insert');
                Route::post('/delete/{id}', [MethodController::class, 'delete'])->name('extraweb.master.assets.methods.delete');
                Route::post('/remove/{id}', [MethodController::class, 'remove'])->name('extraweb.master.assets.methods.remove');
            });
        });
        Route::prefix('/locations')->group(function () {
            Route::prefix('/countries')->group(function () {
                Route::get('/view', [CountryController::class, 'view'])->name('extraweb.master.locations.countries.view');
                Route::post('/get_list', [CountryController::class, 'get_list'])->name('extraweb.master.locations.countries.get_list');
                Route::get('/edit/{id}', [CountryController::class, 'edit'])->name('extraweb.master.locations.countries.edit');
                Route::post('/update/{id}', [CountryController::class, 'update'])->name('extraweb.master.locations.countries.update');
                Route::get('/create', [CountryController::class, 'create'])->name('extraweb.master.locations.countries.create');
                Route::post('/insert', [CountryController::class, 'insert'])->name('extraweb.master.locations.countries.insert');
                Route::post('/delete/{id}', [CountryController::class, 'delete'])->name('extraweb.master.locations.countries.delete');
                Route::post('/remove/{id}', [CountryController::class, 'remove'])->name('extraweb.master.locations.countries.remove');
            });
            Route::prefix('/provinces')->group(function () {
                Route::get('/view', [ProvincesController::class, 'view'])->name('extraweb.master.locations.provinces.view');
                Route::post('/get_list', [ProvincesController::class, 'get_list'])->name('extraweb.master.locations.provinces.get_list');
                Route::get('/edit/{id}', [ProvincesController::class, 'edit'])->name('extraweb.master.locations.provinces.edit');
                Route::post('/update/{id}', [ProvincesController::class, 'update'])->name('extraweb.master.locations.provinces.update');
                Route::get('/create', [ProvincesController::class, 'create'])->name('extraweb.master.locations.provinces.create');
                Route::post('/insert', [ProvincesController::class, 'insert'])->name('extraweb.master.locations.provinces.insert');
                Route::post('/delete/{id}', [ProvincesController::class, 'delete'])->name('extraweb.master.locations.provinces.delete');
                Route::post('/remove/{id}', [ProvincesController::class, 'remove'])->name('extraweb.master.locations.provinces.remove');
            });
            Route::prefix('/cities')->group(function () {
                Route::get('/view', [CitiesController::class, 'view'])->name('extraweb.master.locations.citiess.view');
                Route::post('/get_list', [CitiesController::class, 'get_list'])->name('extraweb.master.locations.citiess.get_list');
                Route::get('/edit/{id}', [CitiesController::class, 'edit'])->name('extraweb.master.locations.citiess.edit');
                Route::post('/update/{id}', [CitiesController::class, 'update'])->name('extraweb.master.locations.citiess.update');
                Route::get('/create', [CitiesController::class, 'create'])->name('extraweb.master.locations.citiess.create');
                Route::post('/insert', [CitiesController::class, 'insert'])->name('extraweb.master.locations.citiess.insert');
                Route::post('/delete/{id}', [CitiesController::class, 'delete'])->name('extraweb.master.locations.citiess.delete');
                Route::post('/remove/{id}', [CitiesController::class, 'remove'])->name('extraweb.master.locations.citiess.remove');
            });
            Route::prefix('/districts')->group(function () {
                Route::get('/view', [DistrictsController::class, 'view'])->name('extraweb.master.locations.districts.view');
                Route::post('/get_list', [DistrictsController::class, 'get_list'])->name('extraweb.master.locations.districts.get_list');
                Route::get('/edit/{id}', [DistrictsController::class, 'edit'])->name('extraweb.master.locations.districts.edit');
                Route::post('/update/{id}', [DistrictsController::class, 'update'])->name('extraweb.master.locations.districts.update');
                Route::get('/create', [DistrictsController::class, 'create'])->name('extraweb.master.locations.districts.create');
                Route::post('/insert', [DistrictsController::class, 'insert'])->name('extraweb.master.locations.districts.insert');
                Route::post('/delete/{id}', [DistrictsController::class, 'delete'])->name('extraweb.master.locations.districts.delete');
                Route::post('/remove/{id}', [DistrictsController::class, 'remove'])->name('extraweb.master.locations.districts.remove');
            });
            Route::prefix('/areas')->group(function () {
                 Route::get('/view', [AreasController::class, 'view'])->name('extraweb.master.locations.areas.view');
                Route::post('/get_list', [AreasController::class, 'get_list'])->name('extraweb.master.locations.areas.get_list');
                Route::get('/edit/{id}', [AreasController::class, 'edit'])->name('extraweb.master.locations.areas.edit');
                Route::post('/update/{id}', [AreasController::class, 'update'])->name('extraweb.master.locations.areas.update');
                Route::get('/create', [AreasController::class, 'create'])->name('extraweb.master.locations.areas.create');
                Route::post('/insert', [AreasController::class, 'insert'])->name('extraweb.master.locations.areas.insert');
                Route::post('/delete/{id}', [AreasController::class, 'delete'])->name('extraweb.master.locations.areas.delete');
                Route::post('/remove/{id}', [AreasController::class, 'remove'])->name('extraweb.master.locations.areas.remove');
            });
        });
        Route::prefix('/prefferences')->group(function () {
            
        });
    });
});
Route::group(['prefix' => 'extraweb'], function ($e) {
    
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
});
