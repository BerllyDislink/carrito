<?php
include  "./conexion.php";
if(isset($_POST['nombre']) && isset($_POST['descripcion']) && 
isset($_POST['precio']) && isset($_POST['inventario']) && 
isset($_POST['categoria']) ){

$carpeta="../images/";
$nombre =$_FILES['imagen']['name'];
$temp =explode('.',$nombre);
$extension = end($temp); 
$nombreFinal = time().'.'.$extension;
if($extension =='jpg'|| $extension ='png' || $extension =='webp'){
if(move_uploaded_file($_FILES['imagen']['tmp_name'], $carpeta.$nombreFinal)){
$conexion ->query("insert into productos (nombre,descripcion,precio,imagen,inventario,id_categoria)
values(
'".$_POST['nombre']."',
'".$_POST['descripcion']."',
'$nombreFinal',
".$_POST['precio'].",
".$_POST['inventario'].",
".$_POST['categoria']."

) ")or die($conexion ->error);
header("Location: ../admin/productos.php?success");
}else{
    header("Location: ../admin/productos.php?error = No se pudo subir la imagen");
}
}else{
    header("Location: ../admin/productos.php?error = Por favor suba una imagen valida");
}

}else{
    header("Location: ../admin/productos.php?error = Favor llenar todos los campos");
}
?>