<#
-Name : create users
-synopsis
script de creation de comptes utilisateurs pour actives directoy 
#>

Clear-Host

[string]$nom= Read-Host "veuillez inserer votre nom et prenom de l'utilisateur"
[string]$login= Read-Host "veuillez inserer votre login"
[string]$Password= Read-Host "veuillez inserer votre mot de passe"


New-ADUser -Name $nom -SamAccountName $login -UserPrincipalName $login@jct.ca -AccountPassword(ConvertTo-SecureString -AsPlainText $Password -Force) -PasswordNeverExpires $true -CannotChangePassword $true
Enable-ADAccount $login