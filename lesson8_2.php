<?php
echo "Input number:";
$handle = fopen ("php://stdin","r");
$num = rtrim(fgets($handle));

if($num>0){
	echo '+'.PHP_EOL;
}elseif ($num<0) {
	echo '-'.PHP_EOL;
}else echo '0'.PHP_EOL;


?>