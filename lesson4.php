<?php
for($i=1;$i<21;$i++){
	for($j=1;$j<21;$j++){
	$res=$i*$j;
	if ($res<10) {print $res."   ";
	}elseif ($res<100) {print $res."  ";
	}else print $res." ";
if ($j==1) print "| ";
}
print PHP_EOL;
if ($i==1) print "--".str_repeat('-',4*20).PHP_EOL;
}