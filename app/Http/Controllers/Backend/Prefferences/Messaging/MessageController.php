<?php

namespace App\Http\Controllers\Backend\Auth;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
/**
 * Description of DefaultController
 *
 * @author 64146
 */
class MessageController extends Controller  {
    //put your code here
     public function __construct(Request $request) {
        parent::__construct($request);
     }
}
