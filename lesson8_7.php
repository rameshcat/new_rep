<?php
$file = fopen ("lesson8_7.txt","r");

function check ($file){
$data = trim(fgets($file));
$str=explode(';', $data);
foreach ($str as $v) {
	$str2[]=explode(' ', $v);
}
if (array_sum($str2[0])%count($str2[0])){
	$res[0]=(int)(array_sum($str2[0])%count($str2[0]));
	$res[1]=array_sum($str2[0])%count($str2[0]);
}else{
	$res[0]=(int)(array_sum($str2[0])/count($str2[0]));
	$res[1]=0;
}
if (array_diff($res, $str2[1])){
	echo $data.' '.'данные неверные'.PHP_EOL;
}else{
	echo $data.' '.'данные верные'.PHP_EOL;
}
}

while (!feof($file)){
	check($file);
}
fclose($file);
?>