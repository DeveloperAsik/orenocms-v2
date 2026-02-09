<?php

namespace App\Traits;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use GuzzleHttp\Client;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Http\Request;
use App\Helpers\Oreno\General;
use App\Helpers\Oreno\Date;
use App\Helpers\Oreno\Cookies;
use App\Models\Entity\AppEntity;

/**
 * Description of Pipline
 *
 * @author 64146
 */
trait Pipeline {

    //put your code here

    protected $AppEntity;
    protected $Date;
    protected $client;
    protected $General;
    protected $Cookies;

    public function __construct(Request $request) {
        parent::__construct($request);
        $this->AppEntity = new AppEntity();
        $this->Date = new Date();
        $this->client = new \GuzzleHttp\Client();
        $this->General = new General();
        $this->Cookies = new Cookies();
    }

//    public function __run_pipeline_steps($params = array(), $options = array()) {
//        $arrSteps = [
//            [
//                'title' => 'Connecting HCL ASE Dashboard',
//                'logs' => 'https://192.168.117.155:9443/ase '
//            ],
//            [
//                'title' => 'Checking Connection . . .',
//                'logs' => 'telnet 192.168.117.155 9443'
//            ],
//            [
//                'title' => 'Create ASE Dashboard Profile',
//                'logs' => 'https://192.168.117.155:9443/ase/api/applications'
//            ],
//            [
//                'title' => 'Creating Profile . . .',
//                'logs' => "curl --location &#39;https://192.168.117.155:9443/ase/api/applications&#39; \ --header &#39;asc_xsrf_token: e5954be1-13de-4aae-ab7c-81d0f24dd350&#39; \ --header &#39;Content-Type: application/json&#39; \ --data &#39;{&quot;name&quot;:&quot;Apptest&quot;}&#39;"
//            ],
//            [
//                'title' => 'Conecting Jenkins',
//                'logs' => 'https://192.168.178.86'
//            ],
//            [
//                'title' => 'Checking Connection . . .',
//                'logs' => 'telnet 192.168.178.86 443'
//            ],
//            [
//                'title' => 'Create Jenkins Pipeline',
//                'logs' => "curl --location 'https://192.168.178.86/job/bni/job/ciso/job/pipeline-test-v5.6/buildWithParameters' \ --header 'Content-Type: application/x-www-form-urlencoded' \ --header 'Authorization: ••••••' \ --data-urlencode '__project_scan_agent_node=1' \ --data-urlencode '__project_scan_name=ciso-lab-webgoat' \ --data-urlencode '__project_scan_type=initial' \ --data-urlencode '__project_scan_count=0' \ --data-urlencode '__project_scan_repo=gitlab46.bni.co.id/ciso1/ciso-lab-webgoat.git' \ --data-urlencode '__project_scan_repo_type=git' \ --data-urlencode '__project_scan_repo_branch=sast-v.1' \ --data-urlencode '__project_scan_repo_policy=cwe2021' \ --data-urlencode '__project_scan_repo_lang=php' \ --data-urlencode '__project_scan_access_token=glpat-yLFKTGWfDqpzjXhYUtcs'"
//            ],
//            [
//                'title' => 'Initiate todo scanning . . .',
//                'logs' => ''
//            ],
//            [
//                'title' => 'HCL Scanning Processs . . .',
//                'logs' => ''
//            ],
//            [
//                'title' => '',
//                'logs' => ''
//            ],
//            [
//                'title' => '',
//                'logs' => ''
//            ],
//            [
//                'title' => '',
//                'logs' => ''
//            ],
//            [
//                'title' => '',
//                'logs' => ''
//            ],
//            [
//                'title' => '',
//                'logs' => ''
//            ],
//            [
//                'title' => '',
//                'logs' => ''
//            ],
//            [
//                'title' => '',
//                'logs' => ''
//            ]
//        ];
//        return $this->General->_set_response('json', ['code' => 200, 'message' => 'successfully fetch data', 'data' => $arrSteps]);
//    }
}
