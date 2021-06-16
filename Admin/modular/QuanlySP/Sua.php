<?php
 $sql="select * from sanpham where MaSP='$_GET[id]'";
 $run=mysqli_query($conn,$sql);
 $dong=mysqli_fetch_array($run, MYSQLI_ASSOC);
?>
<form action="modular/QuanlySP/Xuly.php?id=<?php echo $dong['MaSP'] ?>" method="post" enctype="multipart/form-data">
<table width="100%"  border="1">
  <tr>
    <td colspan="2"><p align="center">Sửa SP</p></td>
  </tr>
  <tr>
    <td >Mã SP</td>
    <td><input type="text" name="MaSP" value="<?php echo $dong['MaSP']?>"></td>
  </tr>
  <tr>
    <td >Mã LSP</td>
    <td ><input type="text" name="MaLSP" value="<?php echo $dong['MaLSP']?>"></td>
  </tr>
  <tr>
    <td >Ten LSP</td>
    <td><input type="text" name="TenLSP" value="<?php echo $dong['TenLSP']?>"></td>
  </tr>
  <tr>
    <td >Tên SP </td>
    <td><input type="text" name="TenSP"  value="<?php echo $dong['TenSP']?>"></td>
  </tr>
  <tr>
    <td >Ảnh SP </td>
    <td>
      <input type="file" name="AnhSP" accept="AnhSP/*">
      <img src="modular/QuanlySP/hinhanh/<?php echo $dong['AnhSP']?>" width="60" height="60" > 
    </td>
  </tr>
   <tr>
    <td >Số lượng</td>
    <td><input type="text" name="Soluong"  value="<?php echo $dong['Soluong']?>"></td>
  </tr>
  <tr>
    <td >Mô tả</td>
    <td><textarea name="Mota"><?php echo $dong['Mota']?></textarea></td>
  </tr>
  <tr>
    <td>Đơn giá</td>
    <td><input type="text" name="Dongia"  value="<?php echo $dong['Dongia']?>"></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="Sua" id="Sua" value="Sửa"></div>
    </td>
  </tr>
</table>
</form>
