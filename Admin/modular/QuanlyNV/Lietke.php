<?php
 $sql="select * from nhanvien order by MaNV desc";
 $run=mysqli_query($conn,$sql);
?>
<table width="100%" border="1">
  <tr style="background-color:#33CCFF">
    <td>Mã NV</td>
    <td>Tên NV</td>
    <td>Cmnd</td>
    <td>Sdt</td>
    <td>Bộ phận</td>
    <td>Mức lương</td>
    <td>Mật khẩu</td>
    <td colspan="2"><strong>Quản lý</strong></td>
  </tr>
  <?php	
   while ($dong=mysqli_fetch_array($run)){
  ?>
  <tr>
    <td><?php echo $dong['MaNV']?></td>
    <td><?php echo $dong['TenNV']?></td>
    <td><?php echo $dong['Cmnd']?></td>
    <td><?php echo $dong['Sdt']?></td>
    <td><?php echo $dong['Bophan']?></td>
    <td><?php echo $dong['Mucluong']?></td>
    <td><?php echo $dong['Matkhau']?></td>
    <td><a href="index.php?Quanly=QuanlyNV&action=Sua&MaNV=<?php echo $dong['MaNV']?>">Sửa</a></td>
    <td><a href="modular/QuanlyNV/Xuly.php?MaNV=<?php echo $dong['MaNV']?>">Xoá</a></td>
  </tr> 
  <?php
 }
 ?>
 </table> 
