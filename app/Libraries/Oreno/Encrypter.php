<?php

namespace App\Libraries\Oreno;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Libraries\Oreno\Jwt;
use App\Libraries\Oreno\Converter;
use App\Libraries\Oreno\Date;

/**
 * Description of Encrypter
 *
 * @author User
 */
class Encrypter {

    //put your code here
    public function shuffle($type = 'encrypt', $string = '') {
        if (isset($string) && !empty($string)) {
            if ($type == 'encrypt') {
                return $this->das87tydghaidgaysudkjasmd($string);
            } else {
                return $this->sakldjbsai8dy7uasilkdsa($string);
            }
        }
    }

    public function encrypt($params = '') {
        if ($params != '') {
            $chunk = trim(chunk_split($params, 2, " "));
            $explode = explode(' ', $chunk);
            $total_array = count($explode) - 1;
            $new_id = 0;
            $new_arr_raw = [];
            $new_arr_encrypted = [];
            if ($explode) {
                foreach ($explode AS $key => $value) {
                    if ($explode[$total_array]) {
                        $new_arr_encrypted[] = base64_encode($explode[$total_array]);
                    }$total_array--;
                }
            }$implode = implode('&amp;', ($new_arr_encrypted));
            $headers = json_encode(['typ' => 'JWT', 'alg' => 'HS256']);
            $payload = json_encode(['value' => $implode]);
            $this->Jwt = new Jwt();
            return $this->Jwt->encode($headers, $payload);
        }
    }

    public function decrypt($params = '') {
        if ($params != '') {
            $this->Jwt = new Jwt();
            $tokenParts = explode('.', $params);
            $header = base64_decode($tokenParts[0]);
            $payload = json_decode($this->Jwt->decode($params), true)['value'];
            $explode = explode('&amp;', $payload);
            $total_array = count($explode) - 1;
            $new_id = 0;
            $new_arr_raw = [];
            $new_arr_encrypted = [];
            if ($explode) {
                foreach ($explode AS $key => $value) {
                    if ($explode[$total_array]) {
                        $new_arr_encrypted[] = base64_decode($explode[$total_array]);
                    }$total_array--;
                }
            }$implode = implode(' ', $new_arr_encrypted);
            $reverse_chunk = str_replace(' ', '', $implode);
            return $reverse_chunk;
        }
    }

    protected function das87tydghaidgaysudkjasmd($string) {
        $chunk = trim(chunk_split($string, 1, " "));
        $explode = explode(' ', $chunk);
        $newchar = [];
        $array_lib_alias = $this->dhsahduiasudoasduyisadgas();
        foreach ($explode AS $key => $value) {
            $findchar = array_key_exists($value, $array_lib_alias);
            if ($findchar == true) {
                $newchar[] = $array_lib_alias[$value];
            }
        }
        $total_array = count($newchar) - 1;
        $shufflenewchar = [];
        if ($newchar) {
            foreach ($newchar AS $key => $value) {
                if ($newchar[$total_array]) {
                    $this->Converter = new Converter();
                    $shufflenewchar[] = $newchar[$total_array];
                }
                $total_array--;
            }
            $this->Date = new Date();
            $tm = $this->Date->now('His');
            $implode = $this->Converter->base64_basic(implode('', ($shufflenewchar)) . $tm, 'encode', ['rep' => 3]);
            $headers = json_encode(['typ' => 'JWT', 'alg' => 'HS256']);
            $payload = json_encode(['value' => $implode]);
            $this->Jwt = new Jwt();
            return $this->Jwt->encode($headers, $payload);
        }
    }

    protected function sakldjbsai8dy7uasilkdsa($string = null) {
        if ($string != null) {
            $this->Jwt = new Jwt();
            $this->Converter = new Converter();
            $payload = json_decode($this->Jwt->decode($string), true)['value'];
            $decode = substr($this->Converter->base64_basic($payload, 'decode', ['rep' => 3]), 0, -6);
            $chunk = chunk_split($decode, 4, ",");
            $explode = explode(',', $chunk);
            $total_array = count($explode);
            unset($explode[$total_array - 1]);
            $shufflenewchar = [];
            $newtotal = $total_array - 2;
            foreach ($explode AS $key => $value) {
                if ($explode[$newtotal]) {
                    $this->Converter = new Converter();
                    $shufflenewchar[] = $explode[$newtotal];
                }
                $newtotal--;
            }
            $array_lib_alias = $this->dhsahduiasudoasduyisadgas();
            foreach ($shufflenewchar AS $key => $value) {
                $newchar[] = array_search($value, $array_lib_alias);
            }
            $implode = implode(' ', $newchar);
            $reverse_chunk = str_replace(' ', '', $implode);
            return $reverse_chunk;
        }
    }

    protected function dhsahduiasudoasduyisadgas() {
        return ['a' => '9901', 'b' => '9902', 'c' => '9980', 'd' => '9923', 'e' => '9945', 'f' => '9967', 'g' => '9976', 'h' => '9939', 'i' => '9982', 'j' => '9934', 'k' => '9909', 'l' => '9933', 'm' => '9944', 'n' => '9978', 'o' => '9911', 'p' => '9965', 'q' => '9977', 'r' => '9908', 's' => '9921', 't' => '9955', 'u' => '9959', 'v' => '9913', 'w' => '9994', 'x' => '7868', 'y' => '3456', 'z' => '8799', 'A' => '0089', 'B' => '0054', 'C' => '0045', 'D' => '0034', 'E' => '0025', 'F' => '0012', 'G' => '0043', 'H' => '0086', 'I' => '0033', 'J' => '0022', 'K' => '0016', 'L' => '0019', 'M' => '0076', 'N' => '0059', 'O' => '0030', 'P' => '0061', 'Q' => '0070', 'R' => '0090', 'S' => '0038', 'T' => '0099', 'U' => '0092', 'V' => '0078', 'W' => '0029', 'X' => '0011', 'Y' => '0023', 'Z' => '0014', '~' => '0991', '`' => '0981', '!' => '0945', '@' => '0954', '#' => '0967', '$' => '0978', '%' => '0989', '^' => '0998', '&' => '0923', '*' => '0911', '(' => '0930', ')' => '0955', '_' => '0966', '-' => '0970', '+' => '0933', '=' => '0922', '{' => '0971', '}' => '0999', '[' => '0943', ']' => '0956', ':' => '0977', ';' => '0965', '<' => '0990', '>' => '0992', ',' => '0909', '.' => '0908', '?' => '0905', '/' => '0904', ' ' => '0929', '|' => '0009', '1' => '1199', '2' => '1122', '3' => '1102', '4' => '1187', '5' => '1156', '6' => '1153', '7' => '1198', '8' => '1143', '9' => '1109', '0' => '1142'];
    }
}
