<?php

namespace App\Models\Entity\uac;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Libraries\Oreno\General;
use App\Models\Object\uac\Tbl_b_uac_group_permissions_r;

/**
 * Description of Tbl_b_uac_group_permissions_r_en
 *
 * @author 64146
 */
class Tbl_b_uac_group_permissions_r_en extends Tbl_b_uac_group_permissions_r {

    //put your code here   
    protected $General;
    protected $Tbl_b_uac_group_permissions_r;

    public function __construct() {
        parent::__construct();
        $this->General = new General();
        $this->Tbl_b_uac_group_permissions_r = new Tbl_b_uac_group_permissions_r();
    }

    public function __get_permission_group(Request $request, $keyword) {
        $__get_segment_by_url = $this->General->getSegmentByUrl($keyword);
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_permissions_p',
            'select' => ['a.id', 'a.__alias', 'a.__name', 'a.__path', 'a.__controller', 'a.__action', 'a.__method', 'a.__is_basic', 'a.__is_public', 'a.is_active', 'b.id AS permission_id', 'b.__is_allowed'],
            'join' => [
                'leftJoin' => [
                    ['tbl_b_uac_group_permissions_r AS b', 'b.__permission_id', '=', 'a.id']
                ]
            ],
            'conditions' => [
                'where' => [
                    ['a.__path', 'like', $__get_segment_by_url . '%']
                ]
            ]
        ];
        return $this->Tbl_b_uac_group_permissions_r->__find($request, 'first', $paramCheckName);
    }

    public function __get_all_permission_group_by_segment(Request $request, $keyword) {
        $segment1 = request()->segment(1);
        if ($segment1 == null) {
            $segment1 = 'extraweb';
        }
        $segment2 = request()->segment(2);
        $segment3 = request()->segment(3);
        $segment4 = request()->segment(4);
        $segment5 = request()->segment(5);
        $conditions = [
            'where' => [
                ['a.is_active', '=', 1]
            ]
        ];
        if (isset($keyword) && !empty($keyword)) {
            $conditions = [
                'where' => [
                    ['a.is_active', '=', 1]
                ],
                'orWhere' => [
                    ['a.__segment1', 'like', '%' . $segment1 . '%'],
                    ['a.__segment2', 'like', '%' . $segment2 . '%'],
                    ['a.__segment3', 'like', '%' . $segment3 . '%'],
                    ['a.__segment4', 'like', '%' . $segment4 . '%'],
                    ['a.__segment5', 'like', '%' . $segment5 . '%']
                ]
            ];
        }
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_permissions_p',
            'select' => ['a.id', 'a.__alias', 'a.__name', 'a.__path', 'a.__controller', 'a.__action', 'a.__method', 'a.__segment1', 'a.__segment2', 'a.__segment3', 'a.__segment4', 'a.__segment5', 'a.__is_basic', 'a.__is_public', 'a.is_active', 'b.id AS permission_id', 'b.__is_allowed'],
            'join' => [
                'leftJoin' => [
                    ['tbl_b_uac_group_permissions_r AS b', 'b.__permission_id', '=', 'a.id']
                ]
            ],
            'conditions' => $conditions
        ];
        $resulData = $this->Tbl_b_uac_group_permissions_r->__find($request, 'all', $paramCheckName);
        if (isset($resulData['data']) && !empty($resulData['data'])) {
            $resultValid = [];
            foreach ($resulData['data'] AS $key => $val) {
                $validateSg1 = [
                    'id' => 0,
                    'status' => false
                ];
                $validateSg2 = [
                    'id' => 1,
                    'status' => false
                ];
                $validateSg3 = [
                    'id' => 2,
                    'status' => false
                ];
                $validateSg4 = [
                    'id' => 3,
                    'status' => false
                ];
                $validateSg5 = [
                    'id' => 4,
                    'status' => false
                ];
                if ($val->__segment1 && $val->__segment1 == $segment1) {
                    $validateSg1 = [
                        'id' => 0,
                        'status' => true
                    ];
                    if ($val->__segment2 && $val->__segment2 == $segment2) {
                        $validateSg2 = [
                            'id' => 1,
                            'status' => true
                        ];
                        if ($val->__segment3 && $val->__segment3 == $segment3) {
                            $validateSg3 = [
                                'id' => 2,
                                'status' => true
                            ];
                            if ($val->__segment4 && $val->__segment4 == $segment4) {
                                $validateSg4 = [
                                    'id' => 3,
                                    'status' => true
                                ];
                                if ($val->__segment5 && $val->__segment5 == $segment5) {
                                    $validateSg5 = [
                                        'id' => 3,
                                        'status' => true
                                    ];
                                }
                            }
                        }
                    }
                }
            }
            $dataID = 0;
            if ($validateSg1['id'] == 0 && $validateSg1['status'] == true) {
                $dataID = $validateSg1['id'];
            } elseif ($validateSg2['id'] == 1 && $validateSg2['status'] == true) {
                $dataID = $validateSg2['id'];
            } elseif ($validateSg3['id'] == 2 && $validateS3['status'] == true) {
                $dataID = $validateSg3['id'];
            } elseif ($validateSg4['id'] == 3 && $validateSg4['status'] == true) {
                $dataID = $validateSg4['id'];
            } elseif ($validateSg5['id'] == 4 && $validateSg5['status'] == true) {
                $dataID = $validateSg5['id'];
            }
            $resultValid = $resulData['data'][$dataID];
            $responseFinal = false;
            if ($resultValid->is_active == 1 && $resultValid->__is_public == 1) {
                $responseFinal = true;
            }
            return $responseFinal;
        }
    }

    public function __get_permission_group_by_id(Request $request, $params) {
        if ($params && is_array($params)) {
            $paramCheckName = [
                'table_name' => 'tbl_a_uac_permissions_p',
                'select' => ['a.id', 'a.__alias', 'a.__name', 'a.__path', 'a.__controller', 'a.__action', 'a.__method', 'a.__is_basic', 'a.__is_public', 'a.is_active', 'b.id AS permission_id', 'b.__is_allowed'],
                'join' => [
                    'leftJoin' => [
                        ['tbl_b_uac_group_permissions_r AS b', 'b.__permission_id', '=', 'a.id']
                    ]
                ],
                'conditions' => [
                    'where' => [
                        ['b.__group_id', '=', $params['groupid']]
                    ]
                ]
            ];
            return $this->Tbl_b_uac_group_permissions_r->__find($request, 'first', $paramCheckName);
        }
    }

    public function __get_all_permission(Request $request, $keyword) {
        $__get_segment_by_url = $this->General->getSegmentByUrl($keyword);
        $conditions = [
            'where' => [
                ['a.is_active', '=', 1]
            ]
        ];
        if (isset($keyword) && !empty($keyword)) {
            $conditions = [
                'where' => [
                    ['a.is_active', '=', 1]
                ],
                'orWhere' => [
                    ['a.__alias', 'like', '%' . $keyword],
                    ['a.__name', 'like', '%' . $keyword],
                    ['a.__path', 'like', '%' . $keyword],
                    ['a.__controller', 'like', '%' . $keyword],
                    ['a.__action', 'like', '%' . $keyword],
                    ['a.__method', 'like', '%' . $keyword]
                ]
            ];
        }
        $paramCheckName = [
            'table_name' => 'tbl_a_uac_permissions_p',
            'select' => ['a.id', 'a.__alias', 'a.__name', 'a.__path', 'a.__controller', 'a.__action', 'a.__method', 'a.__is_basic', 'a.__is_public', 'a.is_active'],
            'conditions' => $conditions
        ];
        return $this->Tbl_b_uac_group_permissions_r->__find($request, 'all', $paramCheckName);
    }
}
