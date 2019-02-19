<?php
echo "Input number:";
$handle = fopen ("php://stdin","r");
$num = rtrim(fgets($handle));

$arr=range(1, $num);

foreach ($arr as $v) {
	if ($v==1)
	echo 'one'.' ';
	elseif ($v==2) {
	 	echo 'two'.' ';
	 } elseif ($v==3) {
	 	echo 'three'.' ';
	 }elseif ($v==4) {
	 	echo 'four'.' ';
	 }elseif ($v==5) {
	 	echo 'five'.' ';
	 }elseif ($v==6) {
	 	echo 'six'.' ';
	 }elseif ($v==7) {
	 	echo 'seven'.' ';
	 }elseif ($v==8) {
	 	echo 'eight'.' ';
	 }elseif ($v==9) {
	 	echo 'nine'.' ';
	 }elseif ($v==10) {
	 	echo 'ten';
	 }else echo 'I don`t know!';
}

?>