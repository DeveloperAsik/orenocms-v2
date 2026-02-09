<?php

use Illuminate\Support\Facades\Facade;
use Illuminate\Http\Request;
use App\Libraries\Oreno\General;
use App\Libraries\Oreno\Converter;

$General = new General();
$Converter = new Converter();

switch (env('APP_ENV')) {
    case "dev":
        $base_url = env('APP_URL_DEV');
        $base_path = env('APP_BASE_PATH_DEV');
        break;
    case "prod":
        $base_url = env('APP_URL_PROD');
        $base_path = env('APP_BASE_PATH_PROD');
        break;
    default:
        $base_url = env('APP_URL_LOCAL');
        $base_path = env('APP_BASE_PATH_LOCAL');

        break;
}
$base_url_assets = $base_url . env('APP_CDN_ASSETS');
$base_url_assets_components = $base_url . env('APP_CDN_ASSETS_COMPONENTS');
$base_url_assets_libraries = $base_url . env('APP_CDN_ASSETS_LIBRARIES');
$base_url_assets_templates = $base_url . env('APP_CDN_ASSETS_TEMPLATES');
$base_url_assets_media = $base_url . env('APP_CDN_ASSETS_MEDIA');
$path_assets = $base_path . env('APP_CDN_ASSETS');

$base_extraweb_uri = $base_url . '/extraweb';
$base_api_uri = $base_url . '/api/v1';
$base_json_uri = $base_url_assets_components . '/json';
return [
    'name' => env('APP_NAME', 'The Seeds of OrenoCMS :: Welcome'),
    'env' => env('APP_ENV', 'local'),
    'debug' => (bool) env('APP_DEBUG', false),
    'url' => $base_url,
    'base_url_assets' => $base_url_assets,
    'base_url_assets_components' => $base_url_assets_components,
    'base_url_assets_libraries' => $base_url_assets_libraries,
    'base_url_assets_templates' => $base_url_assets_templates,
    'base_url_assets_media' => $base_url_assets_media,
    'base_url_ase_dashboard' => env('APP_URL_APPSCAN_ASE'),
    'base_extraweb_uri' => $base_extraweb_uri,
    'base_api_url' => $base_api_uri,
    'base_json_uri' => $base_json_uri,
    'jenkins_url' => env('JENKINS_URL'),
    'jenkins_ciso_path' => env('JENKINS_CISO_PATH'),
    'jenkins_ciso_path_original' => env('JENKINS_CISO_PATH_ORIGINAL'),
    'jenkins_ciso_path_dast' => env('JENKINS_CISO_PATH_DAST'),
    'jenkins_user' => $Converter->base64_basic(env('JENKINS_USER'), 'decode', ['rep' => 3]),
    'jenkins_pass' => $Converter->base64_basic(env('JENKINS_PASS'), 'decode', ['rep' => 3]),
    'auto_logout' => env('APP_AUTO_LOGOUT'),
    'timezone' => 'UTC',
    'locale' => env('APP_LOCALE', 'en'),
    'fallback_locale' => env('APP_FALLBACK_LOCALE', 'en'),
    'faker_locale' => env('APP_FAKER_LOCALE', 'en_US'),
    'cipher' => 'AES-256-CBC',
    'key' => env('APP_KEY'),
    'previous_keys' => [
        ...array_filter(
                explode(',', (string) env('APP_PREVIOUS_KEYS', ''))
        ),
    ],
    'maintenance' => [
        'driver' => env('APP_MAINTENANCE_DRIVER', 'file'),
        'store' => env('APP_MAINTENANCE_STORE', 'database'),
    ],
];
