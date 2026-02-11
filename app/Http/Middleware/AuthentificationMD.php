<?php

namespace App\Http\Middleware;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;
use App\Libraries\Oreno\Authentification;

/**
 * Description of AuthentificationMD
 *
 * @author 64146
 */
class AuthentificationMD {

    //put your code here
    protected $Authentification;

    public function handle(Request $request, Closure $next): Response {
        $this->Authentification = new Authentification();
        $validate_url = $group_permission = $user_permission = false;
        //$this->Authentification->clear_session();
        //dd('clear-session');
        $currentPath = $request->getRequestUri();
        //validating session for user is on login session or no
        $validate_session = $this->Authentification->init_session_check($request, $next);
        $validate_url = $this->Authentification->init_url_check($request, $next);
        if ($validate_session == false && $validate_url == false) {
            //session is empty and url is not allow or public accesed
            if ($request->ajax()) {
                $response_data = array('status' => 401, 'message' => 'This url need login session to accessed');
                return response()->json($response_data, 401);
            } else {
                session(['_session_destination_path' => $currentPath]);
                session()->save();
                return redirect('/extraweb/login')->with(['warning-msg' => 'This url need login session to accessed']);
            }
        } elseif ($validate_session == false && $validate_url == true) {
            //session is empty and url is allow or public accessed
            if ($request->ajax()) {
                return $next($request); // Allow the request to proceed
            } else {
                if ($currentPath != '/extraweb/login') {
                    return redirect('/extraweb/login');
                } else {
                    return $next($request); // Allow the request to proceed
                }
            }
        } elseif ($validate_session == true && $validate_url == false) {
            $sessionData = $request->session()->all();
            return redirect($sessionData['_previous']['url'])->with(['warning-msg' => 'you cannot accessed this endpoint or page']);
        } else {
            //validate group permission is allowed to access routes and pages
            $group_permission = $this->Authentification->init_group_permission_check($request, $next);
            //validate user permission is allowed to access routes and pages
            $user_permission = $this->Authentification->init_user_permission_check($request, $next);
            if ($validate_url == false && $group_permission == false && $user_permission == false) {
                $status = 401;
                $message = 'This url need login session to accessed';
            } else {
                if ($currentPath == '/extraweb/login' || $currentPath == '/extraweb' || $currentPath == '/extraweb/' || $currentPath == '/') {
                    return redirect('/extraweb/dashboard');
                } else {
                    return $next($request); // Allow the request to proceed
                }
            }
        }
    }
}
