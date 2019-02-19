<?php
echo "Input number:";
$handle = fopen ("php://stdin","r");
$num = rtrim(fgets($handle));

for($j=0;$j<$num;$j++){
		if (!($j%2)){
		echo str_repeat(' ', ($num-$j)/2);
		echo str_repeat('*', $j+1).PHP_EOL;
	}
}

for($j=$num-2;$j>=0;$j--){
		if (!($j%2)){
		echo str_repeat(' ', ($num-$j)/2);
		echo str_repeat('*', $j+1).PHP_EOL;
	}
}
	

?>