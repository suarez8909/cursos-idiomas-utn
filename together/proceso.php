<?php 
include ("conexion.php");
//aqui vuelvo a poner parte del codigo que esta en mi archivo 
if (isset($_POST['modifi'])) {
    $id=$_REQUEST['id'];
	$estudianteid=$_POST['estudianteid'];
	$nombre=$_POST['nombre'];
	$correo=$_POST['correo'];
	$docente=$_POST['docente'];
	$curso=$_POST['curso'];
// Aqui es donde cambia parte de mi codigo, ya que lo hago por medio de update y set ya que estos procesos me modificaran mi producto seleccionado
	$insertardatos= "UPDATE modelo SET nombre='$nombre', correo='$correo', docente='$docente', curso='$curso' WHERE estudianteid='$id'";
	     $ejecutarinsertar= mysqli_query($conn, $insertardatos);

	     if (!$ejecutarinsertar) {
	     	echo "error en base de datos";
	     }else{
            
	     }
	     //despues de haber echo la conexion correcta me lleva a este enlace el cual me presenta mi tabla y verifique que en realidad se hhicieron mis cambios correctos, de lo contrario me mandaria error como se muestra en  la parte de arriba de este codigo
	     echo "<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><a href='procesos.php'><center><font color='black' size='10'>Tu producto fue modificado correctamente<br>&#128663;</font></center></a>";

}