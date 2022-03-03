REM AUTEUR : SLJ
REM DATE DE CREATIOn : 01/10/2011
REM DATE DE Mise a Jour : 06/03/2012
REM OBJECTIF : Script qui lance dans une boucle infinie la connexion au bureau CITRIX
REM Ce script ne map aucune imprimante. 
REM Il faut absolument que les imprimantes soient définis au niveau de la stratégie CITRIX XENAPP 6



Set objShell = CreateObject("WScript.Shell") 

dim ica
ica = """C:\Program Files\Citrix\ICA Client\wfica32.exe"" C:\ThinStation\Bureau.ica"

return = objShell.Run (ica, 0, TRUE)



DO While (TRUE)
Result = MsgBox ("Voulez-vous ouvrir une session ?"&vbCrLf&vbCrLf&"     OUI : pour OUVRIR la session"&vbCrLf&vbCrLf&"     NON : pour ARRETER l'ordinateur", 36)

Select Case Result
	case vbYes
		ica = """C:\Program Files\Citrix\ICA Client\wfica32.exe"" C:\ThinStation\Bureau.ica"
		return = objShell.Run (ica, 0, TRUE)
	case vbNo
		return = objShell.Run ("shutdown -s -t 0 -f", 0, TRUE)
		wscript.quit	
end Select
LOOP






