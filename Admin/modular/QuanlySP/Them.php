<form action="modular/QuanlySP/Xuly.php" method="post" enctype="multipart/form-data">
<table width="100%" border="1">
  <tr>
    <td colspan="2"><p align="center">Thêm SP</p></td>
  </tr>
  <?php 
	$sql=" select * from sanpham";
	$run=mysqli_query($conn,$sql);
  ?>
  <tr>
    <td>Mã SP</td>
    <td><input  type="text" name="MaSP"></td>
  </tr>
  <tr>
    <td>Mã LSP</td>
    <td><input  type="text" name="MaLSP"></td>
  </tr>
  <tr>
    <td >Tên LSP</td>
    <td><input type="text" name="TenLSP"> </td>
  </tr>
  <tr>
    <td >Tên SP</td>
    <td><input type="text" name="TenSP"> </td>
  </tr>
  <tr>
    <td >Ảnh SP </td>
    <td><input type="file" name="AnhSP"></td>
  </tr>
   <tr>
    <td >Số lượng</td>
    <td><input type="text" name="Soluong"></td>
  </tr>
  <tr>
    <td >Mô tả</td>
	<td><textarea name="Mota"></textarea></td>
  </tr>
  <tr>
    <td >Đơn giá</td>
    <td><input type="text" name="Dongia"></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="Them" id="Them" value="Thêm">
    </div></td>
  </tr>
</table>
</form>
