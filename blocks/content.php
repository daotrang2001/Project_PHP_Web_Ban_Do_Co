<div class="content">
	<div class="left" style="width=30%">
       
<?php 
$sql_loaisanpham="select * from loaisanpham";
$query_lsp=mysqli_query($conn,$sql_loaisanpham);
?>

<p><h5 style="text-align: center; color:#FFF;background:#699;padding:14px;font-size:18px"> DANH MỤC LOẠI SẢN PHẨM </h5></p>
<div class="danhsachsanpham">
	<ul>
		<?php while($dong_lsp=mysqli_fetch_array($query_lsp)) {?>
		<ul>
			<li>
				<?php while($dong_lsp=mysqli_fetch_array($query_lsp)) {?>
					<a href="index.php?xem=chitietsanpham&&id=<?php echo $dong_lsp['MaLSP']?>">
						<p style="font-size:22px; text-align:left;align-items: center;border-bottom: #669999 solid 2px; padding-bottom:9px;" ><?php echo $dong_lsp['TenLSP']?></p>
					</a>
				<?php } ?> 
			</li>
		</ul>
		<?php } ?> 
	</ul>
</div>

<p><h5 style="text-align: center; color:#FFF;background: #699;padding:14px;font-size:18px" > HỖ TRỢ TRỰC TUYẾN </h5></p>
    <div class="danhsachsanpham">
        <ul>
            <li style="color:#F60">• Tư vấn bán hàng 1 :</li>
            <li></li>	
            <li><a href="#">Mrs. Trang : (08) 2242345</a></li>
            <li></li>	
            <li style="color:#F60">• Tư vấn bán hàng 2 :</li>
            <li></li>	
            <li><a href="#">Mr. Nam : (08) 2242344</a></li>
            <li></li>	
            <li style="color:#F60">• Email liên hệ : </li>
            <li></li>	
            <li><a href="#">MAXSTORE@gmail.com </a></li>	                    	
            </ul>
    </div>         
    </div>


<div class="right">
		<?php
			if(isset($_GET['xem'])){
				$tam=$_GET['xem'];
			} else { $tam='';}
			if($tam=='chitietsanpham'){
				include('blocks/main/chitietsanpham.php');}	
			elseif($tam=='chitietmotsanpham'){
				include('blocks/main/chitietmotsanpham.php');}	
			elseif($tam=='giohang'){
				include('blocks/main/giohang.php');}	
			elseif(isset($_POST['search'])){
				include('blocks/main/timkiem.php');}	
			elseif($tam=='dangky'){
				include('blocks/main/dangky.php');}
			elseif($tam=='huongdan'){
				include('blocks/main/huongdan.php');}
			elseif($tam=='lienhe'){
				include('blocks/main/lienhe.php');}
			elseif($tam=='camon'){
				include('blocks/main/camon.php');}
			elseif($tam=='gioithieu'){
				include('blocks/main/gioithieu.php');}
			elseif($tam=='xulyphieudat'){
				include('blocks/main/xulyphieudat.php');}
			elseif($tam=='dangnhap'){
				include('blocks/main/dangnhap.php');}
			elseif ($tam=='dangxuat') {
				include('blocks/main/dangxuat.php');}	
			else{	
				include('blocks/main/sanphamall.php');}				
		?>
</div>
    
 </div>
 <div class="clear"></div>