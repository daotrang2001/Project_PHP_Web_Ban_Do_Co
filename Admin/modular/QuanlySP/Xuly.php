<?php
	include('../config.php');
	$MaSP=$_POST['MaSP'];
	$MaDM=$_POST['MaLSP'];
	$MaNCC=$_POST['TenLSP'];
	$TenSP=$_POST['TenSP'];

	$AnhSP=$_FILES['AnhSP']['name'];
	$AnhSP_tmp=$_FILES['AnhSP']['tmp_name'];
	move_uploaded_file($AnhSP_tmp,'./hinhanh/'.$AnhSP);

	$Soluong=$_POST['Soluong'];
	$Mota=$_POST['Mota'];
	$Dongia=$_POST['Dongia'];
	$id=$_GET['id'];
		if(isset($_POST['Them']))
	{
		//thêm 
		$sql="insert into sanpham (MaSP,MaLSP,TenLSP,TenSP,AnhSP,Soluong,Mota,Dongia)
		 values('$MaSP','$MaLSP','$TenLSP','$TenSP','$AnhSP','$Soluong','$Mota','$Dongia')";
		 mysqli_query($conn,$sql);
		 header('location:../../index.php?Quanly=QuanlySP&action=Them');
	}
	
	  elseif (isset($_POST['Sua'])) {
		  //sửa
		   $sql="update sanpham set MaSP='$MaSP', MaLSP='$MaLSP',TenLSP='$TenLSP',TenSP='$TenSP',AnhSP='$AnhSP',Soluong='$Soluong',
		    Mota='$Mota',Dongia='$Dongia' where MaSP='$id'";
          mysqli_query($conn, $sql);
           header('location:../../index.php?Quanly=QuanlySP&action=Sua&id='.$id);
 	}
    else{
		//xoá
  $sql=" delete  from sanpham where MaSP='$id'";
  mysqli_query($conn,$sql);
  header('location:../../index.php?Quanly=QuanlySP&action=Them');
   }
?>


