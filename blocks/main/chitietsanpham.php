<?php
	$sql_ctsp="select * from sanpham where MaSP=$_GET[id]";
	$query_ctsp=mysqli_query($conn,$sql_ctsp);
?>
<?php
	$sql_tenlsp="select TenDM from danhmuc where MaSP='$_GET[id]' ";
	$row=mysqli_query($conn,$sql_tenlsp);
	$dong=mysqli_fetch_array($row);
?>
<div class="chitietsanpham">	
	<p style="text-align:center;color:#000; background:#699; padding:10px; size:auto;">
    <font size="+2" color="#FFFFFF"><?php echo $dong['TenLSP'] ?></font></p>              
       	<ul>
			<?php
				while($dong_ctsp=mysqli_fetch_array($query_ctsp)){
			?>
				<li><a href="index.php?xem=chitietmotsanpham&id=<?php echo $dong_ctsp['MaSP']?>">                      
					<!-- ảnh -->
					<?php 
						$url = $dong_ctsp['AnhSP'];
					?>
					<?php $url = $dong_ctsp['AnhSP']; 
					echo "<div>";
					echo "<img src='$url' width='150' height='170';>" ;
					echo "</div>";
					?>
					<p style="color:#699; max-width: 230px; line-height: 25px;"><strong><?php echo $dong_ctsp['TenSP'] ?></strong></p>
					<p style="color:black;"> Giá: <?php echo number_format($dong_ctsp['Dongia']).''.'VNĐ'?></p>
					<p style="color:#F60;">Chi tiết sản phẩm</p>
				</a></li>
			<?php
				}
			?>             
        </ul>

	
    




    </div>