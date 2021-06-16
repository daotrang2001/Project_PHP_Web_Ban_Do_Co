<?php 
ob_start();
include('Admin/modular/config.php');
?>
<div class="header">
<ul>
<li><img src="webdoco/images/logomaxstore.png" width="500px" height="100%" ></li>

<li>
    <form style="width:600px;" action="index.php"  method="post" enctype="multipart/form-data">
      <div class="timkiem" style="padding-top:95px">
        <input type="text" id="searchf" name="searchtext" style="height:30px;width:300px" border="1"/>
        <input type="submit" id="searchbtn" name="search" style="height:30px;width:65px" value="Tìm kiếm" placeholder="Search..."/>
      </div>
    </form>
</li> 
<li style="float:right;">
<a href="index.php?xem=dangnhap"><p style="text-align:center; color:black; font-size:18px;">Đăng nhập: <img src="webdoco/images/login.jpg" style="width:45px; height:45px; "> </p></a>
<a href="index.php?xem=giohang"><p style="text-align:center; color:black; font-size:18px;">Giỏ hàng:  <img src="webdoco/images/cart.png" style="width:50px; height:50px; "></p></a>
</li>
</ul>

</div>