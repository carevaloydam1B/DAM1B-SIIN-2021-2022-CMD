#MENU 01
#Ejercicio 1
#Añadir alumno
function anadirAlumno {
    $alumnos = @{1 = 'Antonio'
    2 = 'Aitor'
    3 = 'Carlos'
    4 = 'Ricardo'}
    [string]$nombreAlumno = Read-Host "Introduce nombre de alumno que quieres introducir: "

    $alumnos.add(5,"jaun")

    $alumnos += $nombreAlumno

    Pause
    Clear-Host 
}
#Ejercicio 2
#Eliminar alumno 
function eliminarAlumno {
    [string]$nombreAlumno = Read-Host "Introduce nombre de alumno que quieres eliminar: "
    for ($i = 0; $i -lt $alumnos.Length; $i++) {
        if ($alumnos[$i] -eq $nombreAlumno) {
            $alumnos[$i] += null
        }
    }
    Write-Host "El alumno no esta: "
    pause
    Clear-Host
}
#Ejercicio 3
#Buscar por nombre
function buscarAlumno {
    [string]$nombreAlumno = Read-Host "Introduce el nombre del alumno que desea buscar: "
    pause
    for ($i = 0; $i -lt $alumnos.Length; $i++) {
        if ($alumnos[$i] -eq $nombreAlumno) {
            Write-Host "Esta el alumno: $nombreAlumno"
        }
    }
    #
    else{
        Write-Host "El alumno no esta: "
        #Esta secuencia
    }
    pause
    Clear-Host
}

#Ejercicio 4
#Mostrar alumnos
function mostrarAlumnos {
    for ($i = 0; $i -lt $alumnos.Count; $i++) {
        Write-Host $alumnos[$i] 
    }
    Pause
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
    Write-Host "/***********              Menu               ************/"
    Write-Host "/********************************************************/"
    Write-Host "/********************************************************/"
    Write-Host "/***********        1. Anadir alumno         ************/"     
    Write-Host "/***********        2. Eliminar alumno       ************/"     
    Write-Host "/***********        3. Buscar por nombre     ************/"     
    Write-Host "/***********        4. Mostrar alumnos       ************/"     
    Write-Host "/***********           S. Salir              ************/"
    Write-Host "/********************************************************/"
    Write-Host "/********************************************************/"
#Lista:
# 1. Anadir alumno
# 2. Eliminar alumno
# 3. Buscar por nombre
# 4. Mostrar alumnos
# S. Salir    
#Usamos un switch
$menu = Read-Host -Prompt "Elije una opcion " 
    switch ($menu) {
        1 {
            Clear-Host
            añadirAlumno
            menu
        }
        2 {
            Clear-Host
            eliminarAlumno
            menu
        }
        3 {
            Clear-Host
            buscarAlumno
            menu
        }
        4 {
            Clear-Host
            mostrarAlumnos
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
