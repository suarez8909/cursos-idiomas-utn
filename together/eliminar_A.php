<?php 
include ("conexion.php");

//aqui dejo esta variable ya que es la que me cuenta por medio de que voy a resibir los datos desde mi base de datos
    $id=$_REQUEST['id'];
	
//aqui digo que borre de mi tabla producto el id seleccionado para eliminar de mi base de datos por medio de mi tabla1.php
	$insertardatos= "DELETE FROM modelo  WHERE estudianteid='$id' ";
	     $ejecutarinsertar= mysqli_query($conn, $insertardatos);

	     if (!$ejecutarinsertar) {
	     	echo "error en base de datos";
	     }else{
            
	     }
	     //aqui igual declaro que una vez borrado el producto seleccionado, me lleve a mi tabla a checar que en ralidad se hizo el proceso de borrado. 
	     echo "<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><a href='agregar.php'><center><font color='black' size='10'>El Alumno fue eliminado correctamente<br>&#128663;</font></center></a>";

	     ?>