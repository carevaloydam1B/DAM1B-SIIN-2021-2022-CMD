#Menú 03
#1. Pedir un alias y mostrar su cmdlet
function mostrarCmdlet {
    [string]$Alias = Read-Host "Introduce el Alias: "
    Get-Alias -Name $Alias*
}

#2. Pedir un cmdlet y motrar todos sus alias
function mostrarAlias {
    [string]$Cmdlt = Read-Host "Introduce el cmdlt: "
    Get-Command -Name $Cmdlt*
}
#3. Pedir un cmdlet y mostar su ayuda
function mostrarAyuda {
    [string]$help = Read-Host "Introduce el help: "
    Get-Help $help 
}

#4. Pedir un texto y mostrar todos los verbos que empiecen por el texto
function mostrarVerbos {
    [string]$texto = Read-Host "Introduce un texto: "
    Get-Verb $texto*
}

#5. Pedir un texto y mostrar todos los cmdlet que empiecen por el texto
function mostrarCmdletEmpPor {
    [string]$gAlias = Read-Host "Introduce el Alias: "
    Get-Alias -Name $gAlias*
}

#menu
function salir {
    Clear-Host
    Write-Host ""
    Write-Host "Gracias, hasta la proxima." 
    Write-Host ""
}
#  FUNCIÓN MENU
function menu { 
    do {
        Clear-Host
        Write-Host "/********************************************************/"
        Write-Host "/***********            Menu                 ************/"
        Write-Host "/********************************************************/"
        Write-Host "/********************************************************/"
        Write-Host "/***********       1. Mostrar su cmdlet      ************/"   
        Write-Host "/***********     2.Motrar todos sus alias    ************/"     
        Write-Host "/***********        3.Mostar su ayuda        ************/"     
        Write-Host "/******   4.Mostrar verbos empiecen por .txt   **********/"     
        Write-Host "/******   5.Mostrar cmdlet empiecen por .txt   **********/"     
        Write-Host "/***********           S. Salir              ************/"
        Write-Host "/********************************************************/"
        Write-Host "/********************************************************/"
        Write-Host ""
        
        
        $opcion = ""
        [string]$opcion = Read-Host "Selecciona una opcion "

        switch ($opcion) {
            1 { 
                mostrarCmdlet 
                pause
                menu
            }
            2 { 
                mostrarAlias 
                Pause
                menu
            }
            3 {
                mostrarAyuda 
                pause
                menu
            }
            4 { 
                mostrarVerbos
                pause
                menu
            }
            5 { 
                mostrarCmdletEmpPor 
                pause
                menu
            }
            "S" { 
                salir
                Clear-Host
            }
        }
    } until ($opcion -eq "S")

}
menu
#FIN