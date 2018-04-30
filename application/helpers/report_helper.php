<?php 

function get_header_fields() {
    return ["KLOBS","KL15","BBLS","LONGTON","METRICTON"];
}

// fungsinya untuk memilah menjadi 1 kategori
function get_split_element($str_fields='') {
    // sample
    // $str_fieldsex = '["SL_VS_BOL_R1_KLOBS|KLOBS","SL_VS_BOL_R1_KL15|KL15","SL_VS_BOL_R1_BBLS|BBLS","SL_VS_BOL_R1_LONGTON|LONGTON","SL_VS_BOL_R1_METRICTON|METRICTON","SL_VEF_APPLIED_VS_BOL_KLOBS|KLOBS","SL_VEF_APPLIED_VS_BOL_KL15|KL15","SL_VEF_APPLIED_VS_BOL_BBLS|BBLS","SL_VEF_APPLIED_VS_BOL_LONGTON|LONGTON","SL_VEF_APPLIED_VS_BOL_METRICTON|METRICTON"]';
    $str_fields = json_decode($str_fields);
    $array_key = array();
    if(count($str_fields) > 0) :
        foreach($str_fields as $k => $v) {
            $explode = explode("|",$v);
            if(isset($explode[1])):
                // search key
                if(!isset($array_key[$explode[1]])) {
                    $array_key[$explode[1]] = array($explode[0]);
                } else {
                    array_push($array_key[$explode[1]],$explode[0]);
                }
            endif;
        }
    endif;

    return $array_key;
}

?>