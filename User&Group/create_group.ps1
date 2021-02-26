<#
-Name : create groupe
-synopsis
script de creation de groupes pour gestion des utilisateurs pour actives directoy 
#>

Clear-Host
#creation du groupe
[string]$NomGroupe= Read-Host "veuillez inserer votre nom du groupe"
New-ADGroup -Name $NomGroupe -GroupScope Global

#nombre d'utilisateur a inserer
[int]$NbUsers= Read-Host "veuillez inserer le nombre de users de ce groupe"
for ($i=1; $i -le $NbUsers; $i++)

# nom d'utilisateur a inserer
{ [string]$nom= Read-Host "veuillez inserer un nom  l'utilisateur dans ce groupe"

#insertion des users 
 Add-ADGroupMember -Identity $NomGroupe -Members $nom
 Write-Host "le user $nom a bien ete inserer dans le groupe $NomGroupe"
}