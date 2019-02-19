<?php

/*
Есть два списка посещаемости студентов. В первом студенты записаны рядками, во втором - колонками. Нужно эти два списка объединить.
*/

$students1 = [
  ['',                  'Week 1', 'Week 2', 'Week 3'],
  ['Jeffrie Domingues', '+',      '-',      '+'],
  ['Todd Tinoco',       '+',      '-',      '-'],
  ['Janessa Mikel',     '+',      '+',      '+']
];

$students2 = [
  ['',       'Cliff Brasfield', 'Jerrod Ellers', 'Adele Bichrest'],
  ['Week 1', '-',               '-',             '+'],
  ['Week 2', '+',               '+',             '-'],
  ['Week 3', '+',               '-',             '+']
];


$ans = [
  ['',                  'Week 1', 'Week 2', 'Week 3'],
  ['Jeffrie Domingues', '+',      '-',      '+'],
  ['Todd Tinoco',       '+',      '-',      '-'],
  ['Janessa Mikel',     '+',      '+',      '+'],
  ['Cliff Brasfield',   '-',      '+',      '+'],
  ['Jerrod Ellers',     '-',      '+',      '-'],
  ['Adele Bichrest',    '+',      '-',      '+']
];

$result = [];

for ($row = 0; $row < count($students2); $row++) {
  for ($col = 0; $col < count($students2[$row]); $col++) {
    $result[$row][$col] = $students2[$col][$row];
  }
}
//print_r($result);

$studentsSum = array_merge($students1, $result);
unset($studentsSum[4]);

print_r($studentsSum);