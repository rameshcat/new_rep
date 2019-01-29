dg<?php
sdfg$arr = [1,10,6,3,4,-8,6,7,4,3,2,1];
sdfg$index=5;

function arr ($array,$index){
if(isset($array[$index-1])){
	$prev=$array[$index-1];
}else $prev=$array[$index];
if(isset($array[$index+1])){
	$next=$array[$index+1];
}else $next=$array[$index];
if (($array[$index]>=$next)&&($array[$index]>=$prev)){
	$res=0;
}elseif ($prev>$next){
	$res=-1;
}else $res=1;
	return $res;
}

print $index;
while (($ans=arr($arr,$index))!=0){
	$ans=arr($arr,$index);
	print ','.$index=$index+$ans;
}
print PHP_EOL;
?>
