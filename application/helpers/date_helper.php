<?php 

/*
|--------------------------------------------------------------------------------|
|
| GLOBAL FUNCTION
|
|--------------------------------------------------------------------------------|
*/

function convert_date($date,$format){  
		$newDate = date($format, strtotime($date));
		if($date==null or $date==""){
			return "";
		}
		else {
			return $newDate;  
		}
	    return($newDate);
}
?>