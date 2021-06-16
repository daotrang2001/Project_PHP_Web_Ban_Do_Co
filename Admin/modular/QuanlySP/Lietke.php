<?php
 $sql="select * from sanpham order by MaSP desc";
 $run=mysqli_query($conn,$sql);
?>
<table width="100%" border="1">
  <tr style="background-color:#33CCFF">
    <td>Mã SP</td>
    <td>Mã LSP</td>
    <td>Tên LSP</td>
    <td>Tên SP</td>
    <td>Ảnh SP</td>
    <td>Số lượng</td>
    <td>Mô tả</td>
    <td>Đơn giá</td>
    <td colspan="2"><strong>Quản lý</strong></td>
  </tr>
  <?php	
   while ($dong=mysqli_fetch_array($run)){
  ?>
  <tr>
    <td><?php echo $dong['MaSP']?></td>
    <td><?php echo $dong['MaLSP']?></td>
    <td><?php echo $dong['TenLSP']?></td>
    <td><?php echo $dong['TenSP']?></td>     
    <td>
      <?php $url = $dong['AnhSP']; 
              echo "<div>";
              echo "<img src='$url' width='100' height='100';>" ;
              echo "</div>";
      ?> 
    </td>
    <td><?php echo $dong['Soluong']?></td>
    <td><?php echo $dong['Mota']?></td>
    <td><?php echo $dong['Dongia']?></td>
    <td><a href="index.php?Quanly=QuanlySP&action=Sua&id=<?php echo $dong['MaSP']?>">Sửa</a></td>
    <td><a href="modular/QuanlySP/Xuly.php?id=<?php echo $dong['MaSP']?>">Xoá</a></td>
  </tr> 
  <?php
 }
 ?>
 </table> 
