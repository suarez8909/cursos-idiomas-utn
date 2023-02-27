<?php 
include ("conexion.php");

if (isset($_POST['insertar'])) {
	$estudianteid=$_POST['estudianteid'];
	$Nombre=$_POST['Nombre'];
	$Correo=$_POST['Correo'];
	$Docente=$_POST['Docente'];
	$Curso=$_POST['Curso'];

	$insertardatos= "INSERT INTO modelo values ('$estudianteid',
	                                               '$Nombre',
	                                               '$Correo',
												   '$Docente',
	                                               '$Curso')";
	     $ejecutarinsertar= mysqli_query($conn, $insertardatos);

	     if (!$ejecutarinsertar) {
	     	echo "error en base de datos";
	     }else{
            
	     }
	     echo "<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><a href='agregar.php'><center><font color='black' size='10'>El Alumno fue agregado correctamente<br>&#128663;</font></center></a>";
}