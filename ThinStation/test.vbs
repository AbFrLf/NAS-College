Set objShell = CreateObject("WScript.Shell") 

dim ica
ica = """C:\Program Files\Citrix\ICA Client\wfica32.exe"" C:\ThinStation\Bureau.ica"

return = objShell.Run (ica, 0, TRUE)