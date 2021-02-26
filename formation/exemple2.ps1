# script d'initialisation a powershell
Clear-Host

# creation d'un tableau
$ville = "Bafang" , "Sudbury", "Toronto", "Quebec"
$ville += "Douala"
Write-Host ("les {0} villes suivantes font parties de mon carnet d'adresse: " -f $ville.Count)

#boucle 
for ($i = 0; $i -lt $ville.Count; $i = $i + 1) # $i + 1 donne encore ($i++) et -lt (plus petit)
{
    $ville[$i]
}

<#
on peut egalement utiliser la boucle 'foreach' :

foreach ($item in $ville) 
{
    $ville
}
#>

