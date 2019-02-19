<?php
echo "Input n:";
$handle = fopen ("php://stdin","r");
$n = rtrim(fgets($handle));
echo "Input k:";
$handle = fopen ("php://stdin","r");
$k = rtrim(fgets($handle));
echo "Input e:";
$handle = fopen ("php://stdin","r");
$e = rtrim(fgets($handle));
echo "Input p:";
$handle = fopen ("php://stdin","r");
$p = rtrim(fgets($handle));

$max=$p*$e*$k;
if ($n>$max){
	echo 'Такой квартиры в доме нет'.PHP_EOL;
}else{

if ($n%$k){
	$et=(int)($n/$k)+1;
}else $et=$n/$k;
if ($et%$e){
	$pod=(int)($et/$e)+1;
}else $pod=$et/$e;
if ($et%$e){
	$flor=(int)($et%$e);
}else{
	$flor=$e;
}


	echo $pod.' '."подъезд".' '.$flor.' '.'этаж'.PHP_EOL;
}


?>