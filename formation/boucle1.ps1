#script d'initiation au boucle

#script d'initiation
Clear-Host

#script qui ajoute +1 a '$i' jusqu'a ce que '$i'=5 
[int]$i = 1
do {
  $i 
  $i++
  [console]::beep(440,500)  
  Start-Sleep 2
} 
while ($i -le 10) 