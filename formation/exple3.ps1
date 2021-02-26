#script d;initialisation
Clear-Host

#declaration d4une fonction
function stagiaire {
    param (
        [parameter(Mandatory=$true)]
        [string]$Nom,
        [parameter(Mandatory=$true)] # decorateur pour valider le parametre 
        [validateRange(7,80)]        # decorateur pour valider la tranche ou l'intervalle du parmetre
        [int]$Age
    )
    # le coeur de la fonction comrpte 03 parties :  

    BEGIN {} #debut du script
    PROCESS {"bonjour {0} vous avez {1}ans" -f $Nom, $Age}
    END{} #fin du corps de la fonction
}

stagiaire "Franck" 90   # appel de la fonction