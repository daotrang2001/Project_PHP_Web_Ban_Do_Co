<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="style/css.css"/>
<title>Quản trị nội dung website</title>
</head>
<body>
<?php
	session_start();
	if(!isset($_SESSION['login'])){
		header('location:login.php');
	}
?>
	<div class="wrapper">
 		<?php
			include('modular/config.php');
			include('modular/header.php');
			include('modular/menu.php');
			include('modular/content.php');
			include('modular/footer.php');
		?>
		<!-- <p style="font-size:40px; color:#669999; text-align:center;"> Chào mừng bạn đến với trang quản trị nội dung Website</br> Chúc bạn có một ngày làm việc vui vẻ !!! </p> -->
    </div>
</body>
</html>