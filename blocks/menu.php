<?php 
$sql_danhmuc="select * from danhmuc";
$query_dm=mysqli_query($conn,$sql_danhmuc);
?>
<?php 
	$sql_sp="select * from sanpham ";
	$query_sp=mysqli_query($conn,$sql_sp);
?> 

<div class="menu">
  <ul> 
      <li><a href="index.php"><font size="+1"><img src="webdoco/images/home.png" width="30" ; height="30"></font></a></li>    
      <li><a href="index.php"><font size="+1">Sản phẩm</font></a>
        <ul>
          <div class="dt1">           
            <li>
              <a href="index.php?xem=chitietsanpham&id=<?php echo $dong_sp['MaDM']?>">   
            </li>
          </div>
        </ul>
      </li>
      
      <li><font size="+1"><a href="index.php?xem=gioithieu">Giới thiệu</font></a></li>
      <li><font size="+1"><a href="index.php?xem=huongdan">Hướng dẫn</font></a></li>
      <li><font size="+1"><a href="index.php?xem=lienhe">Liên hệ</font></a></li>
      <?php
        if (!isset($_SESSION["dangnhap"])) {
          echo '<li><font size="+1"><a href="index.php?xem=dangky">Đăng ký</font></a></li>';
        } else {
            echo '<li><font size="+1"><a href="index.php?xem=dangxuat">Đăng xuất</font></a></li>';
        }
      ?>         

  </ul>      
</div>  