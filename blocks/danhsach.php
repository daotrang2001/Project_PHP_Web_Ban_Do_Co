<?php 
$sql_loaisanpham="select * from loaisanpham";
$query_lsp=mysqli_query($conn,$sql_loaisanpham);
?>

<p ><h5 style="text-align: center; color:#FFF;background:#699;padding:14px" > DANH MỤC LOẠI SẢN PHẨM </h5></p>
<div class="danhsachsanpham">
    <ul>
        <?php while($dong_lsp=mysqli_fetch_array($query_lsp)) {?>   
        <ul>
            <div >
                <?php while($dong_lsp=mysqli_fetch_array($query_lsp)) { ?>  
                <li>
                    <a href="index.php?xem=chitietsanpham&id=<?php echo $dong_lsp['MaLSP']?>">
                    <font size="+1"><?php echo $dong_lsp['TenLSP']?></font>
                    </a>
                </li>
                <?php } ?>
            </div>
        </ul>

        <?php } ?>       
    </ul>
</div>






























    <p style="text-align: center; color:#FFF;background: #699;padding:14px"><h5 color="#FFF"size="+1"  > HỖ TRỢ TRỰC TUYẾN </h5></p>
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
            <li><a href="#">sieuthitructuyen_MAXSTORE@gmail.com </a></li>	                    	
            </ul>
    </div>
             
            
             