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
use App\Http\Controllers\Backend\Master\Locations\AreasController;
use App\Http\Controllers\Backend\Prefferences\Permissions\UserController AS PermissionUserController;
use App\Http\Controllers\Backend\Prefferences\Permissions\GroupController AS PermissionGroupController;
use App\Http\Controllers\Backend\Prefferences\Permissions\MenuController AS PermissionMenuController;
use App\Http\Controllers\Backend\Messaging\DefaultController AS MessagingDefaultController;

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
                Route::get('/delete/{id}', [UserController::class, 'delete'])->name('extraweb.master.uac.users.delete');
                Route::get('/remove/{id}', [UserController::class, 'remove'])->name('extraweb.master.uac.users.remove');
            });
            Route::prefix('/groups')->group(function () {
                Route::get('/view', [GroupController::class, 'view'])->name('extraweb.master.uac.groups.view');
                Route::post('/get_list', [GroupController::class, 'get_list'])->name('extraweb.master.uac.groups.get_list');
                Route::get('/edit/{id}', [GroupController::class, 'edit'])->name('extraweb.master.uac.groups.edit');
                Route::post('/update/{id}', [GroupController::class, 'update'])->name('extraweb.master.uac.groups.update');
                Route::get('/create', [GroupController::class, 'create'])->name('extraweb.master.uac.groups.create');
                Route::post('/insert', [GroupController::class, 'insert'])->name('extraweb.master.uac.groups.insert');
                Route::get('/delete/{id}', [GroupController::class, 'delete'])->name('extraweb.master.uac.groups.delete');
                Route::get('/remove/{id}', [GroupController::class, 'remove'])->name('extraweb.master.uac.groups.remove');
            });
            Route::prefix('/permissions')->group(function () {
                Route::get('/view', [PermissionController::class, 'view'])->name('extraweb.master.uac.permissions.view');
                Route::post('/get_list', [PermissionController::class, 'get_list'])->name('extraweb.master.uac.permissions.get_list');
                Route::get('/edit/{id}', [PermissionController::class, 'edit'])->name('extraweb.master.uac.permissions.edit');
                Route::post('/update/{id}', [PermissionController::class, 'update'])->name('extraweb.master.uac.permissions.update');
                Route::get('/create', [PermissionController::class, 'create'])->name('extraweb.master.uac.permissions.create');
                Route::post('/insert', [PermissionController::class, 'insert'])->name('extraweb.master.uac.permissions.insert');
                Route::get('/delete/{id}', [PermissionController::class, 'delete'])->name('extraweb.master.uac.permissions.delete');
                Route::get('/remove/{id}', [PermissionController::class, 'remove'])->name('extraweb.master.uac.permissions.remove');
            });
            Route::prefix('/menus')->group(function () {
                Route::get('/view', [MenuController::class, 'view'])->name('extraweb.master.uac.menus.view');
                Route::get('/tree-view', [MenuController::class, 'tree_view'])->name('extraweb.master.uac.menus.tree.view');
                Route::post('/get_list', [MenuController::class, 'get_list'])->name('extraweb.master.uac.menus.get_list');
                Route::get('/edit/{id}', [MenuController::class, 'edit'])->name('extraweb.master.uac.menus.edit');
                Route::post('/update/{id}', [MenuController::class, 'update'])->name('extraweb.master.uac.menus.update');
                Route::get('/create', [MenuController::class, 'create'])->name('extraweb.master.uac.menus.create');
                Route::post('/insert', [MenuController::class, 'insert'])->name('extraweb.master.uac.menus.insert');
                Route::get('/delete/{id}', [MenuController::class, 'delete'])->name('extraweb.master.uac.menus.delete');
                Route::get('/remove/{id}', [MenuController::class, 'remove'])->name('extraweb.master.uac.menus.remove');
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
                Route::get('/delete/{id}', [CurrencyController::class, 'delete'])->name('extraweb.master.assets.currency.delete');
                Route::get('/remove/{id}', [CurrencyController::class, 'remove'])->name('extraweb.master.assets.currency.remove');
            });
            Route::prefix('/icons')->group(function () {
                Route::get('/view', [IconController::class, 'view'])->name('extraweb.master.assets.icons.view');
                Route::post('/get_list', [IconController::class, 'get_list'])->name('extraweb.master.assets.icons.get_list');
                Route::get('/edit/{id}', [IconController::class, 'edit'])->name('extraweb.master.assets.icons.edit');
                Route::post('/update/{id}', [IconController::class, 'update'])->name('extraweb.master.assets.icons.update');
                Route::get('/create', [IconController::class, 'create'])->name('extraweb.master.assets.icons.create');
                Route::post('/insert', [IconController::class, 'insert'])->name('extraweb.master.assets.icons.insert');
                Route::get('/delete/{id}', [IconController::class, 'delete'])->name('extraweb.master.assets.icons.delete');
                Route::get('/remove/{id}', [IconController::class, 'remove'])->name('extraweb.master.assets.icons.remove');
            });
            Route::prefix('/classes')->group(function () {
                Route::get('/view', [ClassController::class, 'view'])->name('extraweb.master.assets.classes.view');
                Route::post('/get_list', [ClassController::class, 'get_list'])->name('extraweb.master.assets.classes.get_list');
                Route::get('/edit/{id}', [ClassController::class, 'edit'])->name('extraweb.master.assets.classes.edit');
                Route::post('/update/{id}', [ClassController::class, 'update'])->name('extraweb.master.assets.classes.update');
                Route::get('/create', [ClassController::class, 'create'])->name('extraweb.master.assets.classes.create');
                Route::post('/insert', [ClassController::class, 'insert'])->name('extraweb.master.assets.classes.insert');
                Route::get('/delete/{id}', [ClassController::class, 'delete'])->name('extraweb.master.assets.classes.delete');
                Route::get('/remove/{id}', [ClassController::class, 'remove'])->name('extraweb.master.assets.classes.remove');
            });
            Route::prefix('/methods')->group(function () {
                Route::get('/view', [MethodController::class, 'view'])->name('extraweb.master.assets.methods.view');
                Route::post('/get_list', [MethodController::class, 'get_list'])->name('extraweb.master.assets.methods.get_list');
                Route::get('/edit/{id}', [MethodController::class, 'edit'])->name('extraweb.master.assets.methods.edit');
                Route::post('/update/{id}', [MethodController::class, 'update'])->name('extraweb.master.assets.methods.update');
                Route::get('/create', [MethodController::class, 'create'])->name('extraweb.master.assets.methods.create');
                Route::post('/insert', [MethodController::class, 'insert'])->name('extraweb.master.assets.methods.insert');
                Route::get('/delete/{id}', [MethodController::class, 'delete'])->name('extraweb.master.assets.methods.delete');
                Route::get('/remove/{id}', [MethodController::class, 'remove'])->name('extraweb.master.assets.methods.remove');
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
                Route::get('/delete/{id}', [CountryController::class, 'delete'])->name('extraweb.master.locations.countries.delete');
                Route::get('/remove/{id}', [CountryController::class, 'remove'])->name('extraweb.master.locations.countries.remove');
            });
            Route::prefix('/provinces')->group(function () {
                Route::get('/view', [ProvincesController::class, 'view'])->name('extraweb.master.locations.provinces.view');
                Route::post('/get_list', [ProvincesController::class, 'get_list'])->name('extraweb.master.locations.provinces.get_list');
                Route::get('/edit/{id}', [ProvincesController::class, 'edit'])->name('extraweb.master.locations.provinces.edit');
                Route::post('/update/{id}', [ProvincesController::class, 'update'])->name('extraweb.master.locations.provinces.update');
                Route::get('/create', [ProvincesController::class, 'create'])->name('extraweb.master.locations.provinces.create');
                Route::post('/insert', [ProvincesController::class, 'insert'])->name('extraweb.master.locations.provinces.insert');
                Route::get('/delete/{id}', [ProvincesController::class, 'delete'])->name('extraweb.master.locations.provinces.delete');
                Route::get('/remove/{id}', [ProvincesController::class, 'remove'])->name('extraweb.master.locations.provinces.remove');
            });
            Route::prefix('/cities')->group(function () {
                Route::get('/view', [CitiesController::class, 'view'])->name('extraweb.master.locations.citiess.view');
                Route::post('/get_list', [CitiesController::class, 'get_list'])->name('extraweb.master.locations.citiess.get_list');
                Route::get('/edit/{id}', [CitiesController::class, 'edit'])->name('extraweb.master.locations.citiess.edit');
                Route::post('/update/{id}', [CitiesController::class, 'update'])->name('extraweb.master.locations.citiess.update');
                Route::get('/create', [CitiesController::class, 'create'])->name('extraweb.master.locations.citiess.create');
                Route::post('/insert', [CitiesController::class, 'insert'])->name('extraweb.master.locations.citiess.insert');
                Route::get('/delete/{id}', [CitiesController::class, 'delete'])->name('extraweb.master.locations.citiess.delete');
                Route::get('/remove/{id}', [CitiesController::class, 'remove'])->name('extraweb.master.locations.citiess.remove');
            });
            Route::prefix('/districts')->group(function () {
                Route::get('/view', [DistrictsController::class, 'view'])->name('extraweb.master.locations.districts.view');
                Route::post('/get_list', [DistrictsController::class, 'get_list'])->name('extraweb.master.locations.districts.get_list');
                Route::get('/edit/{id}', [DistrictsController::class, 'edit'])->name('extraweb.master.locations.districts.edit');
                Route::post('/update/{id}', [DistrictsController::class, 'update'])->name('extraweb.master.locations.districts.update');
                Route::get('/create', [DistrictsController::class, 'create'])->name('extraweb.master.locations.districts.create');
                Route::post('/insert', [DistrictsController::class, 'insert'])->name('extraweb.master.locations.districts.insert');
                Route::get('/delete/{id}', [DistrictsController::class, 'delete'])->name('extraweb.master.locations.districts.delete');
                Route::get('/remove/{id}', [DistrictsController::class, 'remove'])->name('extraweb.master.locations.districts.remove');
            });
            Route::prefix('/areas')->group(function () {
                Route::get('/view', [AreasController::class, 'view'])->name('extraweb.master.locations.areas.view');
                Route::post('/get_list', [AreasController::class, 'get_list'])->name('extraweb.master.locations.areas.get_list');
                Route::get('/edit/{id}', [AreasController::class, 'edit'])->name('extraweb.master.locations.areas.edit');
                Route::post('/update/{id}', [AreasController::class, 'update'])->name('extraweb.master.locations.areas.update');
                Route::get('/create', [AreasController::class, 'create'])->name('extraweb.master.locations.areas.create');
                Route::post('/insert', [AreasController::class, 'insert'])->name('extraweb.master.locations.areas.insert');
                Route::get('/delete/{id}', [AreasController::class, 'delete'])->name('extraweb.master.locations.areas.delete');
                Route::get('/remove/{id}', [AreasController::class, 'remove'])->name('extraweb.master.locations.areas.remove');
            });
        });
        Route::prefix('/prefferences')->group(function () {
            Route::prefix('/permissions')->group(function () {
                Route::prefix('/user')->group(function () {
                    Route::get('/view', [PermissionUserController::class, 'view'])->name('extraweb.master.prefferences.permissions.user.view');
                    Route::post('/get_list', [PermissionUserController::class, 'get_list'])->name('extraweb.master.prefferences.permissions.user.get_list');
                    Route::get('/edit/{id}', [PermissionUserController::class, 'edit'])->name('extraweb.master.prefferences.permissions.user.edit');
                    Route::post('/update/{id}', [PermissionUserController::class, 'update'])->name('extraweb.master.prefferences.permissions.user.update');
                    Route::get('/create', [PermissionUserController::class, 'create'])->name('extraweb.master.prefferences.permissions.user.create');
                    Route::post('/insert', [PermissionUserController::class, 'insert'])->name('extraweb.master.prefferences.permissions.user.insert');
                    Route::get('/delete/{id}', [PermissionUserController::class, 'delete'])->name('extraweb.master.prefferences.permissions.user.delete');
                    Route::get('/remove/{id}', [PermissionUserController::class, 'remove'])->name('extraweb.master.prefferences.permissions.user.remove');
                });
                Route::prefix('/group')->group(function () {
                    Route::get('/view', [PermissionGroupController::class, 'view'])->name('extraweb.master.locations.areas.view');
                    Route::post('/get_list', [PermissionGroupController::class, 'get_list'])->name('extraweb.master.locations.areas.get_list');
                    Route::get('/edit/{id}', [PermissionGroupController::class, 'edit'])->name('extraweb.master.locations.areas.edit');
                    Route::post('/update/{id}', [PermissionGroupController::class, 'update'])->name('extraweb.master.locations.areas.update');
                    Route::get('/create', [PermissionGroupController::class, 'create'])->name('extraweb.master.locations.areas.create');
                    Route::post('/insert', [PermissionGroupController::class, 'insert'])->name('extraweb.master.locations.areas.insert');
                    Route::get('/delete/{id}', [PermissionGroupController::class, 'delete'])->name('extraweb.master.locations.areas.delete');
                    Route::get('/remove/{id}', [PermissionGroupController::class, 'remove'])->name('extraweb.master.locations.areas.remove');
                });
                Route::prefix('/menu')->group(function () {
                    Route::get('/view', [PermissionMenuController::class, 'view'])->name('extraweb.master.locations.areas.view');
                    Route::post('/get_list', [PermissionMenuController::class, 'get_list'])->name('extraweb.master.locations.areas.get_list');
                    Route::get('/edit/{id}', [PermissionMenuController::class, 'edit'])->name('extraweb.master.locations.areas.edit');
                    Route::post('/update/{id}', [PermissionMenuController::class, 'update'])->name('extraweb.master.locations.areas.update');
                    Route::get('/create', [PermissionMenuController::class, 'create'])->name('extraweb.master.locations.areas.create');
                    Route::post('/insert', [PermissionMenuController::class, 'insert'])->name('extraweb.master.locations.areas.insert');
                    Route::get('/delete/{id}', [PermissionMenuController::class, 'delete'])->name('extraweb.master.locations.areas.delete');
                    Route::get('/remove/{id}', [PermissionMenuController::class, 'remove'])->name('extraweb.master.locations.areas.remove');
                });
            });
            Route::prefix('/messaging')->group(function () {
                Route::get('/view', [MessagingDefaultController::class, 'view'])->name('extraweb.master.locations.areas.view');
                Route::post('/get_list', [MessagingDefaultController::class, 'get_list'])->name('extraweb.master.locations.areas.get_list');
                Route::get('/edit/{id}', [MessagingDefaultController::class, 'edit'])->name('extraweb.master.locations.areas.edit');
                Route::post('/update/{id}', [MessagingDefaultController::class, 'update'])->name('extraweb.master.locations.areas.update');
                Route::get('/create', [MessagingDefaultController::class, 'create'])->name('extraweb.master.locations.areas.create');
                Route::post('/insert', [MessagingDefaultController::class, 'insert'])->name('extraweb.master.locations.areas.insert');
                Route::get('/delete/{id}', [MessagingDefaultController::class, 'delete'])->name('extraweb.master.locations.areas.delete');
                Route::get('/remove/{id}', [MessagingDefaultController::class, 'remove'])->name('extraweb.master.locations.areas.remove');
            });
        });
    });
});
