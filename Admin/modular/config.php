<?php
 $tenmaychu='localhost';
 $tentaikhoan='root';
 $pass='';
 $csdl='trang_website_ban_do_co';
 $conn=mysqli_connect($tenmaychu, $tentaikhoan, $pass, $csdl);
 mysqli_select_db($conn,$csdl);
?>
