<?php
$arr = [1.5, 1.5, 1.5, 0.7];
$s=0;
foreach ($arr as $value) {
	$s=$s+$value;
}
print_r ($s).PHP_EOL;
?>