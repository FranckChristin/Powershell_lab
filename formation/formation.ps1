# scripts d'initiation a powershell
Clear-Host

# initialisation des variables 
[string]$personneNom = "Franck"
[int]$personneAge = 10

# affichage du prenom et de l'age de la personne
Write-Host "hello $personneNom it's true that we have $personneAge years ?"

# test sur la tranche d'age de la personne

switch ($personneAge) 
{
    {$_ -le 25} {"{0}, you are a young boy and in addition you have {1} years" -f $personneNom, $personneAge; break } #formatage d'une chaine de carateres 
    {$_ -le 35} { Write-Host "you are a power of your generation." ; break}
    Default {Write-Host "thank you guys !"}
}

# autre methode en commentaire 

<#
if ($personneAge -le 25) {Write-Host "you are a young boy."}

#if ($personneAge -gt 25 -and $personneAge  -le 35) {Write-Host "you are a power of your generation."}

elseif ($personneAge -le 35) {Write-Host "you are a power of your generation."} 

else {Write-Host "thank you guys !"}
#>