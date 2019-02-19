<?php
$measurements = [1,2,3, 1,2,3,4, 1,2];
$i=0;
foreach ($measurements as $value) {
	if ($value==1){
		$i++;
	}
	$res[]=[$value,$i];
}
print_r($res);