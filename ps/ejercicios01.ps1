#EJERCICIOS VARIADOS#
function saludo {
    Clear-Host
    Write-Host "Buenos dias!!!"
}
#Ejercicio 1
#Bucle for de cero a un número máximo.
function secuencia {
    [int]$numMax = read-host "Escribe un numero maximo "
    for ($i = 0; $i -le $numMax; $i++) {
        Write-Host $i
    }
    Pause
    Clear-Host    
}
#Ejercicio 2
#Array con los diferentes pueblos(TUDELA, ALSASUA, LEKUNBERRI, AOIZ) y mostrarlos con un for
function pueblos {
    $pueblos = @("TUDELA", "ALSASUA", "LEKUNBERRI", "AOIZ")
    for ($i = 0; $i -lt $pueblos.Count; $i++) {
        Write-Host $pueblos[$i] 
    }
    Pause
    Clear-Host    
}
#Ejercicio 3
#Escribir un programa que pida el nombre de una persona y si es hombre o mujer. En el GRUPO A irán las mujeres con nombre anterior a la M y los hombres con un nombre posterior a la N. GRUPO B por el resto. Para todo ello utilizar condicionales.
function hombresMujeres {
    $grupoA = @()#MUJERES
    $grupoB = @()#HOMBRE
    do {
        do {
            [string]$genero = (Read-Host "Introduce un genero: (H=Hombre, M=Mujer, S=Salir)").ToUpper()
            #$genero = $genero.ToUpper()
        } until ($genero -eq "H" -or $genero -eq "M" -or $genero -eq "S")
        if ($genero -eq "S") { Break }

        do {
            [string]$nombre = (Read-Host "Introduce un nombre: ").ToLower()
        } while ( $nombre -eq "")
        #( mujer -and 1ºletra < M ) -or ( hombre -and 1ºletra > N)
        if ( ($genero -eq "M" -and $nombre[0] -lt "m") -or ($genero -eq "H" -and $nombre[0] -gt "n") ) {
            #Añadir al grupoA
            $grupoA += $nombre
        }
        else {
            #Añadir al grupoB 
            $grupoB += $nombre   
        }
    } until ($genero -eq "S")

    Write-Host "Grupo A: "
    foreach ($nombre in $grupoA) {
        Write-Host " - $nombre"
    }
    Write-Host "Grupo B: "
    foreach ($nombre in $grupoB) {
        Write-Host " - $nombre"
    }
    pause
    Clear-Host    
}
#Ejercicio 4
#Pedir una frase al usuario y por otro lado pedir una letra. Mostrar cuántas veces aparece la letra en la frase.
function letraFrase {
    [int]$veces = 0
    [string]$frase = Read-Host "Introduce una frase: "
    [string]$letra = Read-Host "Introduce una letra: "

    for ($i = 0; $i -lt $frase.Length; $i++) {
        if ($frase[$i] -eq $letra) {
            $veces++
        }
    }
    Write-Host "Frase: $frase"
    Write-Host "Letra: $letra"
    Write-Host "Apariciones: $veces"    
    pause
    Clear-Host
}
function menu {
    #Pasos:
    # Crear una funcion llamada menú
    #   Limpiar el terminal
    #   Dibujar las opciones
    #   Pedir una opción del menú
    #   Con un Switch mandamos a ejecutar cada opción
    #   Ten en cuenta que necesitamos una opcion S=Salir
    #   De forma que nos pedirá opciones continuamente
    #
    do {
        Clear-Host
        Write-Host "/********************************************************/"
        Write-Host "/***********            Menu                 ************/"
        Write-Host "/********************************************************/"
        Write-Host "/********************************************************/"
        Write-Host "/***********        1. Numero maximo         ************/"     
        Write-Host "/***********        2. Lista de pueblos      ************/"     
        Write-Host "/***********        3. Hombres y mujeres     ************/"     
        Write-Host "/********    4. Apariciones de letra en frase    ********/"     
        Write-Host "/***********           S. Salir              ************/"
        Write-Host "/********************************************************/"
        Write-Host "/********************************************************/"
        #Lista:
        # 1. Número máximo
        # 2. Lista de pueblos
        # 3. Hombres y mujeres
        # 4. Apariciones de letra en frase
        # S. Salir    
        #Usamos un switch
        $menu = Read-Host -Prompt "Elije una opcion " 
        switch ($menu) {
            1 {
                Clear-Host
                secuencia
                menu
            }
            2 {
                Clear-Host
                pueblos
                menu
            }
            3 {
                Clear-Host
                hombresMujeres
                menu
            }
            4 {
                Clear-Host
                letraFrase
                menu
            }
            "S" { 
                Write-Host "Gracias por su visita hasta la proxima"
            }
        }
    }until($menu -eq "S")
}
menu
#Fin
