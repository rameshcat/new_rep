<?php
$users = [
  [
    'name' => 'Claude Towles',
    'bonus' => 0
  ],
  [
    'name' => 'Lovetta Pogue',
    'bonus' => 0
  ],
  [
    'name' => 'Joye Calero',
    'bonus' => 0
  ],
  [
    'name' => 'Andrew Stalker',
    'bonus' => 0
  ],
  [
    'name' => 'Samatha Collett',
    'bonus' => 0
  ]
];

function assignBonuses($users, $nBonuses) {
  for ($i=0; $i<$nBonuses; $i++) {
    $user = rand(0,4);
    while ($users[$user]['bonus']==1) {
      $user = rand(0,4);
      }
      $users[$user]['bonus']=1;      
}
return $users;}
$result = assignBonuses($users,3);
print_r($result);
?>