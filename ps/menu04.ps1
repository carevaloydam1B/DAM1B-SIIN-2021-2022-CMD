#Carlos Arevalo
#Menu 04
#1. Lee un fichero ips.txt (tendras varias ips, una por línea), haz un Test-Connection y muestra un mensaje (Conexión establecida/ Conexión fallida).
function leerFichero {
    $fichero = Get-Content -Path "ips.txt"
    foreach ($ip in $fichero) {
        $cnx = Test-Connection $ip -Count 1 -Quiet
        if($cnx){
            Write-Host "Conexion establecida" $ip -ForegroundColor green
        }
        else{
            Write-Host "Conexion fallida" $ip -ForegroundColor red
        }
    }
    pause
}
#2. Lee un fichero users.csv y muestra solo los datos de las columnas Id, Username y Location.
function leerFichero2 {
    $fichero2 = Import-Csv ".\users.csv" -Delimiter ";"
    foreach($row in $fichero2){
        Write-Host $row.Id " - " $row.Username " - "$row.Location
    }
    pause
}
#3. Pide la ruta de un directorio y lista el contenido de dicho directorio usando un cmdlet.
function rutaDirectorio{
    [strin]$texto = Read-Host "Introduce una ruta de un directorio"
    Get-ChildItem -Path $texto
    Pause
}
#4. Pide la ruta de un directorio y muestra su estructura sin ficheros (la función será la misma en el punto 4 y 5).
function pideDirectorio([bool]$verFicheros = $true){
    [string]$texto = Read-Host "Introduce una ruta de un directorio"
    if ($verFicheros) {
        Tree / F $texto
    }
    else {
        Tree $texto
    }
}
#5. Pide la ruta de un directorio y muestra su estructura con ficheros (la función será la misma en el punto 4 y 5).
function pideDirectorio([bool]$verFicheros = $true){
    [string]$texto = Read-Host "Introduce una ruta de un directorio"
    if ($verFicheros) {
        Tree / F $texto
    }
    else {
        Tree $texto
    }
}
#6. Lista los usuarios locales que estén activados (la función será la misma en el punto 6 y 7).
#7. Lista los usuarios locales que estén desactivados (la función será la misma en el punto 6 y 7).
#8. Lista los grupos locales y mandalos solo su nombre a un fichero grupos.txt en orden descendente. 
function ListarGruposLocalesTxt{
    [string]$grupoLocal = Get-LocalGroup
    $grupoLocal > "NombreDeGrupoLocal.txt"
    Pause
}
#S. Salir
function salir {
    Clear-Host
    Write-Host ""
    Write-Host "Gracias, hasta la proxima." 
    Write-Host ""
}
#Menu
function menu {
    do {
        Clear-Host
        Write-Host "/********************************************************/"
        Write-Host "/***********            Menu                 ************/"
        Write-Host "/********************************************************/"
        Write-Host "/********************************************************/"
        Write-Host "/***********       1. Leer fichero .txt      ***********/"   
        Write-Host "/***********       2. Leer fichero .csv      ************/"     
        Write-Host "/***********        3.Mostar su ayuda        ************/"     
        Write-Host "/******   4.  Pedir directorio                **********/"     
        Write-Host "/******   5.  Pedir directorio               **********/"     
        Write-Host "/******   6.                                 **********/"     
        Write-Host "/******   7.                                 **********/"     
        Write-Host "/******   8.  Listar grupos .txt                               **********/"     
        Write-Host "/***********           S. Salir              ************/"
        Write-Host "/********************************************************/"
        Write-Host "/********************************************************/"
        Write-Host ""

        $opcion = ""
        [string]$opcion = Read-Host "Selecciona una opcion "
        switch ($opcion) {
            1 {
                leerFichero
                menu
            }
            2 {
                leerFichero2
                menu
            }
            3 {}
            4 {
                pideDirectorio
                menu
            }
            5 {
                pideDirectorio
                menu
            }
            6 {}
            7 {}
            8 {
                ListarGruposLocalesTxt
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