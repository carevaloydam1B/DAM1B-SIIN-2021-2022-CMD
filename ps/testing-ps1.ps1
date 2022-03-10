#TESTING-ps1
$palabra="refrán"
$frase="El que no corre, vuela"
$numero1=5
$numero2=3

write-Host $palabra ":" $frase
#Hacemos la suma de los 2 números previamente creados
Write-Host $numero1+$numero2 "=" ($numero1+$numero2)

#Char
[char]$var=65
write-Host $var

#Arrays
$bosque= @("Aliso", "Fresno", "Abedul", "Cedro", "Castaño", "Olmo")
Write-Host $bosque

#If/Else
[Int]$day = Read-Host "Introduce un número"
If ( $day -eq 1 ) { $result = 'Lunes' }
    elseif ( $day -eq 2 ) { $result = 'Martes' }
    elseif ( $day -eq 3 ) { $result = 'Miércoles' }
    elseif ( $day -eq 4 ) { $result = 'Jueves' }
    elseif ( $day -eq 5 ) { $result = 'Viernes' }
    elseif ( $day -eq 6 ) { $result = 'Sábado' }
    elseif ( $day -eq 7 ) { $result = 'Domingo' }
    else { $result = 'Solo valores entre 1 y 7' }

Write-Host $result
#sWITCH
#1
[string]$fruta = Read-Host "Introduce una fruta"
Switch($fruta) {
"manzana" {"Has elegido la manzana"; Break}
"pera" {"Has elegido la pera"; Break}
"naranja" {"Has elegido la naranja"; Break}
"melocotón" {"Has elegido el melocotón"; Break}
"banana" {"Has elegido la banana"; Break}
Default {"La fruta elegida no esta entre las opciones."; Break}
}
pause
#2
$roles = @('WEB','Database')
switch ( $roles ) {
'Database' { 'Configure SQL' }
'WEB' { 'Configure IIS' }
'FileServer' { 'Configure Share' }
}
pause
#Hay más ejemplos, pero me dan error, ver pdf 6 de ut5\classroom
#
#Ej1
$diaSemana= @("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sabado", "Domingo")
    foreach($dia in $diaSemana){
    Write-Host $dia
}
pause 
cls