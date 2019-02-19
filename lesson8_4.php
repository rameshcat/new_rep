<?php
echo "Input number:";
$handle = fopen ("php://stdin","r");
$num = rtrim(fgets($handle));

function sum ($num){
	$res=str_split($num);
	$sum=0;
	for($i=0;$i<count($res);$i++){
	$sum+=$res[$i];
}return $sum;
}

$result=sum($num);
while ($result>9){
	$num=$result;
	$result=sum($num);
}
echo $result.PHP_EOL;
?>