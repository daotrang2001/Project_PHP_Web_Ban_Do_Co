<?php
 	if(isset($_POST['search'])){
		$search=$_POST['searchtext'];
		$sql_search="select * from sanpham where TenLSP ='Gốm phong thủy' AND TenLSP ='Gốm sứ da dụng' AND TenLSP ='Gốm cổ vật'";
		$query_search=mysqli_query($conn,$sql_search);
	}
?>
<h2 style="text-align:center;color:#FFF;background:#699;padding:10px;">Sản phẩm tìm thấy với từ khóa </h2>
            
<div class="timkiemsp">
	<?php
	if($count=mysqli_num_rows($query_search)==0){?>
		<h1>Không tìm thấy sản phẩm nào với từ khóa trên !</h1>
	<?php
		}else{
	?>
		<ul>
			<?php
			while($dong_search=mysqli_fetch_array($query_search)){
			?>
				<li><a href="index.php?xem=chitietmotsanpham&id=<?php echo $dong_search['MaSP']?>">
					<?php $url = $dong_search['AnhSP']; 
						echo "<div>";
						echo "<img src='$url' width='150' height='170';>" ;
						echo "</div>";
					?>     	
					<p style="color:#699; text-align:left; max-width: 180px; line-height: 25px; height:50px;"><?php echo $dong_search['TenSP'] ?></p>
					<p style="color:black;">Giá sp:<?php echo $dong_search['Dongia'] .''.'VNĐ'?> </p>
					<p style="color:#F60;">Chi tiết sản phẩm</p>
				</a></li>
				
				<?php
					}
					}
				?>
		</ul>
</div>
             
	