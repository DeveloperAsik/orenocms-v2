<?php

use Illuminate\Session\Middleware\StartSession;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Foundation\Http\Middleware\ValidateCsrfToken;

use App\Http\Middleware\VerifyCsrfToken;
use App\Http\Middleware\AuthentificationMD;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware): void {
        //
        $middleware->appendToGroup('api', \Illuminate\Http\Middleware\HandleCors::class);
        $middleware->append(StartSession::class);
        $middleware->append(VerifyCsrfToken::class);
        $middleware->append(ValidateCsrfToken::class);
        $middleware->append(AuthentificationMD::class);
        //
    })
    ->withExceptions(function (Exceptions $exceptions): void {
        //
    })->create();
