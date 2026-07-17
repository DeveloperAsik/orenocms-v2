<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
/*
 * core controller route start here
 */
use App\Http\Controllers\Backend\Auth\AppController;
use App\Http\Controllers\Globals\AjaxController;
use App\Http\Controllers\Installer\SetupController;
/*
 * core controller route end here
 */
//------------------------------------------------------------------------------//
/*
 * Messaging route start here
 */
use App\Http\Controllers\Backend\Messaging\MessagingDefaultController;

/*
 * Messaging end here
 */
//------------------------------------------------------------------------------//
/*
 * Master route start here
 */
use App\Http\Controllers\Backend\Master\AccessControl\UserController;
use App\Http\Controllers\Backend\Master\AccessControl\GroupController;
use App\Http\Controllers\Backend\Master\AccessControl\PermissionController;
use App\Http\Controllers\Backend\Master\AccessControl\MenuController;

/*
 * Master route end here
 */
//------------------------------------------------------------------------------//
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
    /*
     * Installer module start here
     */
    Route::prefix('installer')->group(function () {
        Route::prefix('setup')->group(function () {
            Route::get('/', [SetupController::class, 'view'])->name('extraweb.installer.view.setup');
            Route::get('/view', [SetupController::class, 'view'])->name('extraweb.installer.view1.setup');
            Route::post('/get_list', [SetupController::class, 'get_list'])->name('extraweb.installer.get_list');
            Route::get('/edit/{id}', [SetupController::class, 'edit'])->name('extraweb.installer.edit');
            Route::post('/update/{id}', [SetupController::class, 'update'])->name('extraweb.installer.update');
            Route::get('/create', [SetupController::class, 'create'])->name('extraweb.installer.create');
            Route::post('/insert', [SetupController::class, 'insert'])->name('extraweb.installer.insert');
            Route::get('/delete/{id}', [SetupController::class, 'delete'])->name('extraweb.installer.delete');
            Route::get('/remove/{id}', [SetupController::class, 'remove'])->name('extraweb.installer.remove');
        });
    });
    /*
     * Installer module end here
     */
    /*
     * Messaging module start here
     */
    Route::prefix('/messaging')->group(function () {
        Route::get('/compose', [MessagingDefaultController::class, 'create'])->name('extraweb.messaging.compose');
        Route::post('/insert', [MessagingDefaultController::class, 'insert'])->name('extraweb.messaging.insert');
        Route::get('/inbox', [MessagingDefaultController::class, 'view'])->name('extraweb.messaging.inbox');
        Route::get('/sent', [MessagingDefaultController::class, 'create'])->name('extraweb.messaging.sent');
        Route::get('/draft', [MessagingDefaultController::class, 'view'])->name('extraweb.messaging.draft');
        Route::get('/junk', [MessagingDefaultController::class, 'view'])->name('extraweb.messaging.junk');
        Route::get('/detail/{id}', [MessagingDefaultController::class, 'delete'])->name('extraweb.messaging.detail');
        Route::get('/chat', [MessagingDefaultController::class, 'remove'])->name('extraweb.messaging.chat');
        Route::post('/get_list', [MessagingDefaultController::class, 'get_list'])->name('extraweb.messaging.get_list');
    });
    /*
     * Messaging module end here
     */
    /*
     * Master module start here
     */
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
                Route::get('/tree-view', [GroupController::class, 'tree_view'])->name('extraweb.master.uac.groups.tree.view');
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
            Route::prefix('/menu')->group(function () {
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
            Route::prefix('/modules')->group(function () {
                Route::get('/view', [ModulesController::class, 'view'])->name('extraweb.master.assets.modules.view');
                Route::post('/get_list', [ModulesController::class, 'get_list'])->name('extraweb.master.assets.modules.get_list');
                Route::get('/edit/{id}', [ModulesController::class, 'edit'])->name('extraweb.master.assets.modules.edit');
                Route::post('/update/{id}', [ModulesController::class, 'update'])->name('extraweb.master.assets.modules.update');
                Route::get('/create', [UserController::class, 'create'])->name('extraweb.master.assets.modules.create');
                Route::post('/insert', [UserController::class, 'insert'])->name('extraweb.master.assets.modules.insert');
                Route::get('/delete/{id}', [UserController::class, 'delete'])->name('extraweb.master.assets.modules.delete');
                Route::get('/remove/{id}', [ModulesController::class, 'remove'])->name('extraweb.master.assets.modules.remove');
            });
            Route::prefix('/registeredtypes')->group(function () {
                Route::get('/view', [RegisteredTypeController::class, 'view'])->name('extraweb.master.assets.registeredtypes.view');
                Route::post('/get_list', [RegisteredTypeController::class, 'get_list'])->name('extraweb.master.assets.registeredtypes.get_list');
                Route::get('/edit/{id}', [RegisteredTypeController::class, 'edit'])->name('extraweb.master.assets.registeredtypes.edit');
                Route::post('/update/{id}', [RegisteredTypeController::class, 'update'])->name('extraweb.master.assets.registeredtypes.update');
                Route::get('/create', [RegisteredTypeController::class, 'create'])->name('extraweb.master.assets.registeredtypes.create');
                Route::post('/insert', [RegisteredTypeController::class, 'insert'])->name('extraweb.master.assets.registeredtypes.insert');
                Route::get('/delete/{id}', [RegisteredTypeController::class, 'delete'])->name('extraweb.master.assets.registeredtypes.delete');
                Route::get('/remove/{id}', [RegisteredTypeController::class, 'remove'])->name('extraweb.master.assets.registeredtypes.remove');
            });
            Route::prefix('/locations')->group(function () {
                Route::prefix('/countries')->group(function () {
                    Route::get('/view', [CountriesController::class, 'view'])->name('extraweb.master.assets.locations.countries.view');
                    Route::post('/get_list', [CountriesController::class, 'get_list'])->name('extraweb.master.assets.locations.countries.get_list');
                    Route::get('/edit/{id}', [CountriesController::class, 'edit'])->name('extraweb.master.assets.locations.countries.edit');
                    Route::post('/update/{id}', [CountriesController::class, 'update'])->name('extraweb.master.assets.locations.countries.update');
                    Route::get('/create', [CountriesController::class, 'create'])->name('extraweb.master.assets.locations.countries.create');
                    Route::post('/insert', [CountriesController::class, 'insert'])->name('extraweb.master.assets.locations.countries.insert');
                    Route::get('/delete/{id}', [CountriesController::class, 'delete'])->name('extraweb.master.assets.locations.countries.delete');
                    Route::get('/remove/{id}', [CountriesController::class, 'remove'])->name('extraweb.master.assets.locations.countries.remove');
                });
                Route::prefix('/provinces')->group(function () {
                    Route::get('/view', [ProvincesController::class, 'view'])->name('extraweb.master.assets.locations.provinces.view');
                    Route::post('/get_list', [ProvincesController::class, 'get_list'])->name('extraweb.master.assets.locations.provinces.get_list');
                    Route::get('/edit/{id}', [ProvincesController::class, 'edit'])->name('extraweb.master.assets.locations.provinces.edit');
                    Route::post('/update/{id}', [ProvincesController::class, 'update'])->name('extraweb.master.assets.locations.provinces.update');
                    Route::get('/create', [ProvincesController::class, 'create'])->name('extraweb.master.assets.locations.provinces.create');
                    Route::post('/insert', [ProvincesController::class, 'insert'])->name('extraweb.master.assets.locations.provinces.insert');
                    Route::get('/delete/{id}', [ProvincesController::class, 'delete'])->name('extraweb.master.assets.locations.provinces.delete');
                    Route::get('/remove/{id}', [ProvincesController::class, 'remove'])->name('extraweb.master.assets.locations.provinces.remove');
                });
                Route::prefix('/cities')->group(function () {
                    Route::get('/view', [CitiesController::class, 'view'])->name('extraweb.master.assets.locations.cities.view');
                    Route::post('/get_list', [CitiesController::class, 'get_list'])->name('extraweb.master.assets.locations.cities.get_list');
                    Route::get('/edit/{id}', [CitiesController::class, 'edit'])->name('extraweb.master.assets.locations.cities.edit');
                    Route::post('/update/{id}', [CitiesController::class, 'update'])->name('extraweb.master.assets.locations.cities.update');
                    Route::get('/create', [CitiesController::class, 'create'])->name('extraweb.master.assets.locations.cities.create');
                    Route::post('/insert', [CitiesController::class, 'insert'])->name('extraweb.master.assets.locations.cities.insert');
                    Route::get('/delete/{id}', [CitiesController::class, 'delete'])->name('extraweb.master.assets.locations.cities.delete');
                    Route::get('/remove/{id}', [CitiesController::class, 'remove'])->name('extraweb.master.assets.locations.cities.remove');
                });
                Route::prefix('/districts')->group(function () {
                    Route::get('/view', [DistrictsController::class, 'view'])->name('extraweb.master.assets.locations.districts.view');
                    Route::post('/get_list', [DistrictsController::class, 'get_list'])->name('extraweb.master.assets.locations.districts.get_list');
                    Route::get('/edit/{id}', [DistrictsController::class, 'edit'])->name('extraweb.master.assets.locations.districts.edit');
                    Route::post('/update/{id}', [DistrictsController::class, 'update'])->name('extraweb.master.assets.locations.districts.update');
                    Route::get('/create', [DistrictsController::class, 'create'])->name('extraweb.master.assets.locations.districts.create');
                    Route::post('/insert', [DistrictsController::class, 'insert'])->name('extraweb.master.assets.locations.districts.insert');
                    Route::get('/delete/{id}', [DistrictsController::class, 'delete'])->name('extraweb.master.assets.locations.districts.delete');
                    Route::get('/remove/{id}', [DistrictsController::class, 'remove'])->name('extraweb.master.assets.locations.districts.remove');
                });
                Route::prefix('/areas')->group(function () {
                    Route::get('/view', [AreasController::class, 'view'])->name('extraweb.master.assets.locations.areas.view');
                    Route::post('/get_list', [AreasController::class, 'get_list'])->name('extraweb.master.assets.locations.areas.get_list');
                    Route::get('/edit/{id}', [AreasController::class, 'edit'])->name('extraweb.master.assets.locations.areas.edit');
                    Route::post('/update/{id}', [AreasController::class, 'update'])->name('extraweb.master.assets.locations.areas.update');
                    Route::get('/create', [AreasController::class, 'create'])->name('extraweb.master.assets.locations.areas.create');
                    Route::post('/insert', [AreasController::class, 'insert'])->name('extraweb.master.assets.locations.areas.insert');
                    Route::get('/delete/{id}', [AreasController::class, 'delete'])->name('extraweb.master.assets.locations.areas.delete');
                    Route::get('/remove/{id}', [AreasController::class, 'remove'])->name('extraweb.master.assets.locations.areas.remove');
                });
            });

            Route::prefix('/tools')->group(function () {
                Route::prefix('/currency')->group(function () {
                    Route::get('/view', [CurrencyController::class, 'view'])->name('extraweb.master.assets.tools.currency.view');
                    Route::post('/get_list', [CurrencyController::class, 'get_list'])->name('extraweb.master.assets.tools.currency.get_list');
                    Route::get('/edit/{id}', [CurrencyController::class, 'edit'])->name('extraweb.master.assets.tools.currency.edit');
                    Route::post('/update/{id}', [CurrencyController::class, 'update'])->name('extraweb.master.assets.tools.currency.update');
                    Route::get('/create', [CurrencyController::class, 'create'])->name('extraweb.master.assets.tools.currency.create');
                    Route::post('/insert', [CurrencyController::class, 'insert'])->name('extraweb.master.assets.tools.currency.insert');
                    Route::get('/delete/{id}', [CurrencyController::class, 'delete'])->name('extraweb.master.assets.tools.currency.delete');
                    Route::get('/remove/{id}', [CurrencyController::class, 'remove'])->name('extraweb.master.assets.tools.currency.remove');
                });
                Route::prefix('/documents')->group(function () {
                    Route::get('/view', [DocumentsController::class, 'view'])->name('extraweb.master.assets.tools.documents.view');
                    Route::post('/get_list', [DocumentsController::class, 'get_list'])->name('extraweb.master.assets.tools.documents.get_list');
                    Route::get('/edit/{id}', [DocumentsController::class, 'edit'])->name('extraweb.master.assets.tools.documents.edit');
                    Route::post('/update/{id}', [DocumentsController::class, 'update'])->name('extraweb.master.assets.tools.documents.update');
                    Route::get('/create', [DocumentsController::class, 'create'])->name('extraweb.master.assets.tools.documents.create');
                    Route::post('/insert', [DocumentsController::class, 'insert'])->name('extraweb.master.assets.tools.documents.insert');
                    Route::get('/delete/{id}', [DocumentsController::class, 'delete'])->name('extraweb.master.assets.tools.documents.delete');
                    Route::get('/remove/{id}', [DocumentsController::class, 'remove'])->name('extraweb.master.assets.tools.documents.remove');
                });
                Route::prefix('/icons')->group(function () {
                    Route::get('/view', [IconsController::class, 'view'])->name('extraweb.master.assets.tools.icons.view');
                    Route::post('/get_list', [IconsController::class, 'get_list'])->name('extraweb.master.assets.tools.icons.get_list');
                    Route::get('/edit/{id}', [IconsController::class, 'edit'])->name('extraweb.master.assets.tools.icons.edit');
                    Route::post('/update/{id}', [IconsController::class, 'update'])->name('extraweb.master.assets.tools.icons.update');
                    Route::get('/create', [IconsController::class, 'create'])->name('extraweb.master.assets.tools.icons.create');
                    Route::post('/insert', [IconsController::class, 'insert'])->name('extraweb.master.assets.tools.icons.insert');
                    Route::get('/delete/{id}', [IconsController::class, 'delete'])->name('extraweb.master.assets.tools.icons.delete');
                    Route::get('/remove/{id}', [IconsController::class, 'remove'])->name('extraweb.master.assets.tools.icons.remove');
                });
                Route::prefix('/controllerlist')->group(function () {
                    Route::get('/view', [ControllerlistController::class, 'view'])->name('extraweb.master.assets.tools.controllerlist.view');
                    Route::post('/get_list', [ControllerlistController::class, 'get_list'])->name('extraweb.master.assets.tools.controllerlist.get_list');
                    Route::get('/edit/{id}', [ControllerlistController::class, 'edit'])->name('extraweb.master.assets.tools.controllerlist.edit');
                    Route::post('/update/{id}', [ControllerlistController::class, 'update'])->name('extraweb.master.assets.tools.controllerlist.update');
                    Route::get('/create', [ControllerlistController::class, 'create'])->name('extraweb.master.assets.tools.controllerlist.create');
                    Route::post('/insert', [ControllerlistController::class, 'insert'])->name('extraweb.master.assets.tools.controllerlist.insert');
                    Route::get('/delete/{id}', [ControllerlistController::class, 'delete'])->name('extraweb.master.assets.tools.controllerlist.delete');
                    Route::get('/remove/{id}', [ControllerlistController::class, 'remove'])->name('extraweb.master.assets.tools.controllerlist.remove');
                });
                Route::prefix('/methodlist')->group(function () {
                    Route::get('/view', [MethodlistController::class, 'view'])->name('extraweb.master.assets.tools.methodlist.view');
                    Route::post('/get_list', [MethodlistController::class, 'get_list'])->name('extraweb.master.assets.tools.methodlist.get_list');
                    Route::get('/edit/{id}', [MethodlistController::class, 'edit'])->name('extraweb.master.assets.tools.methodlist.edit');
                    Route::post('/update/{id}', [MethodlistController::class, 'update'])->name('extraweb.master.assets.tools.methodlist.update');
                    Route::get('/create', [MethodlistController::class, 'create'])->name('extraweb.master.assets.tools.methodlist.create');
                    Route::post('/insert', [MethodlistController::class, 'insert'])->name('extraweb.master.assets.tools.methodlist.insert');
                    Route::get('/delete/{id}', [MethodlistController::class, 'delete'])->name('extraweb.master.assets.tools.methodlist.delete');
                    Route::get('/remove/{id}', [MethodlistController::class, 'remove'])->name('extraweb.master.assets.tools.methodlist.remove');
                });
                Route::prefix('/formmethodlist')->group(function () {
                    Route::get('/view', [FormmethodlistController::class, 'view'])->name('extraweb.master.assets.tools.formmethodlist.view');
                    Route::post('/get_list', [FormmethodlistController::class, 'get_list'])->name('extraweb.master.assets.tools.formmethodlist.get_list');
                    Route::get('/edit/{id}', [FormmethodlistController::class, 'edit'])->name('extraweb.master.assets.tools.formmethodlist.edit');
                    Route::post('/update/{id}', [FormmethodlistController::class, 'update'])->name('extraweb.master.assets.tools.formmethodlist.update');
                    Route::get('/create', [FormmethodlistController::class, 'create'])->name('extraweb.master.assets.tools.formmethodlist.create');
                    Route::post('/insert', [FormmethodlistController::class, 'insert'])->name('extraweb.master.assets.tools.formmethodlist.insert');
                    Route::get('/delete/{id}', [FormmethodlistController::class, 'delete'])->name('extraweb.master.assets.tools.formmethodlist.delete');
                    Route::get('/remove/{id}', [FormmethodlistController::class, 'remove'])->name('extraweb.master.assets.tools.formmethodlist.remove');
                });
                Route::prefix('/shortenurl')->group(function () {
                    Route::get('/view', [ShortenurlController::class, 'view'])->name('extraweb.master.assets.tools.shortenurl.view');
                    Route::post('/get_list', [ShortenurlController::class, 'get_list'])->name('extraweb.master.assets.tools.shortenurl.get_list');
                    Route::get('/edit/{id}', [ShortenurlController::class, 'edit'])->name('extraweb.master.assets.tools.shortenurl.edit');
                    Route::post('/update/{id}', [ShortenurlController::class, 'update'])->name('extraweb.master.assets.tools.shortenurl.update');
                    Route::get('/create', [ShortenurlController::class, 'create'])->name('extraweb.master.assets.tools.shortenurl.create');
                    Route::post('/insert', [ShortenurlController::class, 'insert'])->name('extraweb.master.assets.tools.shortenurl.insert');
                    Route::get('/delete/{id}', [ShortenurlController::class, 'delete'])->name('extraweb.master.assets.tools.shortenurl.delete');
                    Route::get('/remove/{id}', [ShortenurlController::class, 'remove'])->name('extraweb.master.assets.tools.shortenurl.remove');
                });
            });
            Route::prefix('/web-params')->group(function () {
                Route::get('/view', [WebparamsController::class, 'view'])->name('extraweb.master.assets.tools.web-params.view');
                Route::post('/get_list', [WebparamsController::class, 'get_list'])->name('extraweb.master.assets.tools.web-params.get_list');
                Route::get('/edit/{id}', [WebparamsController::class, 'edit'])->name('extraweb.master.assets.tools.web-params.edit');
                Route::post('/update/{id}', [WebparamsController::class, 'update'])->name('extraweb.master.assets.tools.web-params.update');
                Route::get('/create', [WebparamsController::class, 'create'])->name('extraweb.master.assets.tools.web-params.create');
                Route::post('/insert', [WebparamsController::class, 'insert'])->name('extraweb.master.assets.tools.web-params.insert');
                Route::get('/delete/{id}', [WebparamsController::class, 'delete'])->name('extraweb.master.assets.tools.web-params.delete');
                Route::get('/remove/{id}', [WebparamsController::class, 'remove'])->name('extraweb.master.assets.tools.web-params.remove');
            });
        });
    });

    /*
     * Master module end here
     */

    /*
     * Prefferences module start here
     */
    Route::prefix('/prefferences')->group(function () {
        Route::prefix('/uac')->group(function () {
            Route::prefix('/userpermissions')->group(function () {
                Route::get('/view', [UserpermissionsController::class, 'view'])->name('extraweb.prefferences.uac.userpermissions.view');
                Route::post('/get_list', [UserpermissionsController::class, 'get_list'])->name('extraweb.prefferences.uac.userpermissions.get_list');
                Route::get('/edit/{id}', [UserpermissionsController::class, 'edit'])->name('extraweb.prefferences.uac.userpermissions.edit');
                Route::post('/update/{id}', [UserpermissionsController::class, 'update'])->name('extraweb.prefferences.uac.userpermissions.update');
                Route::get('/create', [UserpermissionsController::class, 'create'])->name('extraweb.prefferences.uac.userpermissions.create');
                Route::post('/insert', [UserpermissionsController::class, 'insert'])->name('extraweb.prefferences.uac.userpermissions.insert');
                Route::get('/delete/{id}', [UserController::class, 'delete'])->name('extraweb.prefferences.uac.userpermissions.delete');
                Route::get('/remove/{id}', [UserpermissionsController::class, 'remove'])->name('extraweb.prefferences.uac.userpermissions.remove');
            });
            Route::prefix('/usermodules')->group(function () {
                Route::get('/view', [UsermodulesController::class, 'view'])->name('extraweb.prefferences.uac.usermodules.view');
                Route::post('/get_list', [UsermodulesController::class, 'get_list'])->name('extraweb.prefferences.uac.usermodules.get_list');
                Route::get('/edit/{id}', [UsermodulesController::class, 'edit'])->name('extraweb.prefferences.uac.usermodules.edit');
                Route::post('/update/{id}', [UsermodulesController::class, 'update'])->name('extraweb.prefferences.uac.usermodules.update');
                Route::get('/create', [UsermodulesController::class, 'create'])->name('extraweb.prefferences.uac.usermodules.create');
                Route::post('/insert', [UsermodulesController::class, 'insert'])->name('extraweb.prefferences.uac.usermodules.insert');
                Route::get('/delete/{id}', [UsermodulesController::class, 'delete'])->name('extraweb.prefferences.uac.usermodules.delete');
                Route::get('/remove/{id}', [UsermodulesController::class, 'remove'])->name('extraweb.prefferences.uac.usermodules.remove');
            });
            Route::prefix('/userlocations')->group(function () {
                Route::get('/view', [UsermodulesController::class, 'view'])->name('extraweb.prefferences.uac.userlocations.view');
                Route::post('/get_list', [UsermodulesController::class, 'get_list'])->name('extraweb.prefferences.uac.userlocations.get_list');
                Route::get('/edit/{id}', [UsermodulesController::class, 'edit'])->name('extraweb.prefferences.uac.userlocations.edit');
                Route::post('/update/{id}', [UsermodulesController::class, 'update'])->name('extraweb.prefferences.uac.userlocations.update');
                Route::get('/create', [UsermodulesController::class, 'create'])->name('extraweb.prefferences.uac.userlocations.create');
                Route::post('/insert', [UsermodulesController::class, 'insert'])->name('extraweb.prefferences.uac.userlocations.insert');
                Route::get('/delete/{id}', [UsermodulesController::class, 'delete'])->name('extraweb.prefferences.uac.userlocations.delete');
                Route::get('/remove/{id}', [UsermodulesController::class, 'remove'])->name('extraweb.prefferences.uac.userlocations.remove');
            });
            Route::prefix('/usertokens')->group(function () {
                Route::get('/view', [UsermodulesController::class, 'view'])->name('extraweb.prefferences.uac.usertokens.view');
                Route::post('/get_list', [UsermodulesController::class, 'get_list'])->name('extraweb.prefferences.uac.usertokens.get_list');
                Route::get('/edit/{id}', [UsermodulesController::class, 'edit'])->name('extraweb.prefferences.uac.usertokens.edit');
                Route::post('/update/{id}', [UsermodulesController::class, 'update'])->name('extraweb.prefferences.uac.usertokens.update');
                Route::get('/create', [UsermodulesController::class, 'create'])->name('extraweb.prefferences.uac.usertokens.create');
                Route::post('/insert', [UsermodulesController::class, 'insert'])->name('extraweb.prefferences.uac.usertokens.insert');
                Route::get('/delete/{id}', [UsermodulesController::class, 'delete'])->name('extraweb.prefferences.uac.usertokens.delete');
                Route::get('/remove/{id}', [UsermodulesController::class, 'remove'])->name('extraweb.prefferences.uac.usertokens.remove');
            });
            Route::prefix('/usergroups')->group(function () {
                Route::get('/view', [UsergroupsController::class, 'view'])->name('extraweb.prefferences.uac.usergroups.view');
                Route::post('/get_list', [UsergroupsController::class, 'get_list'])->name('extraweb.prefferences.uac.usergroups.get_list');
                Route::get('/edit/{id}', [UsergroupsController::class, 'edit'])->name('extraweb.prefferences.uac.usergroups.edit');
                Route::post('/update/{id}', [UsergroupsController::class, 'update'])->name('extraweb.prefferences.uac.usergroups.update');
                Route::get('/create', [UsergroupsController::class, 'create'])->name('extraweb.prefferences.uac.usergroups.create');
                Route::post('/insert', [UsergroupsController::class, 'insert'])->name('extraweb.prefferences.uac.usergroups.insert');
                Route::get('/delete/{id}', [UsergroupsController::class, 'delete'])->name('extraweb.prefferences.uac.usergroups.delete');
                Route::get('/remove/{id}', [UsergroupsController::class, 'remove'])->name('extraweb.prefferences.uac.usergroups.remove');
            });
            Route::prefix('/usertokens')->group(function () {
                Route::get('/view', [UsertokensController::class, 'view'])->name('extraweb.prefferences.uac.usertokens.view');
                Route::post('/get_list', [UsertokensController::class, 'get_list'])->name('extraweb.prefferences.uac.usertokens.get_list');
                Route::get('/edit/{id}', [UsertokensController::class, 'edit'])->name('extraweb.prefferences.uac.usertokens.edit');
                Route::post('/update/{id}', [UsertokensController::class, 'update'])->name('extraweb.prefferences.uac.usertokens.update');
                Route::get('/create', [UsertokensController::class, 'create'])->name('extraweb.prefferences.uac.usertokens.create');
                Route::post('/insert', [UsertokensController::class, 'insert'])->name('extraweb.prefferences.uac.usertokens.insert');
                Route::get('/delete/{id}', [UsertokensController::class, 'delete'])->name('extraweb.prefferences.uac.usertokens.delete');
                Route::get('/remove/{id}', [UsertokensController::class, 'remove'])->name('extraweb.prefferences.uac.usertokens.remove');
            });
            Route::prefix('/grouppermissions')->group(function () {
                Route::get('/view', [GrouppermissionsController::class, 'view'])->name('extraweb.prefferences.uac.grouppermissions.view');
                Route::post('/get_list', [GrouppermissionsController::class, 'get_list'])->name('extraweb.prefferences.uac.grouppermissions.get_list');
                Route::get('/edit/{id}', [GrouppermissionsController::class, 'edit'])->name('extraweb.prefferences.uac.grouppermissions.edit');
                Route::post('/update/{id}', [GrouppermissionsController::class, 'update'])->name('extraweb.prefferences.uac.grouppermissions.update');
                Route::get('/create', [GrouppermissionsController::class, 'create'])->name('extraweb.prefferences.uac.grouppermissions.create');
                Route::post('/insert', [GrouppermissionsController::class, 'insert'])->name('extraweb.prefferences.uac.grouppermissions.insert');
                Route::get('/delete/{id}', [GrouppermissionsController::class, 'delete'])->name('extraweb.prefferences.uac.grouppermissions.delete');
                Route::get('/remove/{id}', [GrouppermissionsController::class, 'remove'])->name('extraweb.prefferences.uac.grouppermissions.remove');
            });
            Route::prefix('/menupermissions')->group(function () {
                Route::get('/view', [MenupermissionsController::class, 'view'])->name('extraweb.prefferences.uac.menupermissions.view');
                Route::post('/get_list', [MenupermissionsController::class, 'get_list'])->name('extraweb.prefferences.uac.menupermissions.get_list');
                Route::get('/edit/{id}', [MenupermissionsController::class, 'edit'])->name('extraweb.prefferences.uac.menupermissions.edit');
                Route::post('/update/{id}', [MenupermissionsController::class, 'update'])->name('extraweb.prefferences.uac.menupermissions.update');
                Route::get('/create', [MenupermissionsController::class, 'create'])->name('extraweb.prefferences.uac.menupermissions.create');
                Route::post('/insert', [MenupermissionsController::class, 'insert'])->name('extraweb.prefferences.uac.menupermissions.insert');
                Route::get('/delete/{id}', [MenupermissionsController::class, 'delete'])->name('extraweb.prefferences.uac.menupermissions.delete');
                Route::get('/remove/{id}', [MenupermissionsController::class, 'remove'])->name('extraweb.prefferences.uac.menupermissions.remove');
            });
        });
    });
    /*
     * Prefferences module end here
     */
});
