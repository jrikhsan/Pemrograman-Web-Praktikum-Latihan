<?php 
//cek apakah tombol submit sudah ditekan
if(isset ($_POST["submit"])){
	//cek username&password
	if($_POST["username"]=="admin" && $_POST["password"]=="123"){
	//jika benar maka redirect ke halaman crud index
		header("Location: ../crud/index.php");
		exit;
	} else {
	//jika salah maka muncul pesan error
		$error = true;
	}
}

?>
<html> 
<head> 
	<title>Halaman Login</title> 
</head> 
<body>
<h2>Halaman Login</h2> 

<?php if(isset($error)) : ?>
	<p style="color: red; font-style: italic;">username/password salah!</p>
<?php endif; ?>

	<ul>
	<form action="" method="post">
		<li>
			<label for="username">Username :</label>
			<input type="text" name="username" id="username">
		</li>
		<li>
			<label for="password">Passsword :</label>
			<input type="password" name="password" id="password"> 
		</li>
		<li>
			<input type="checkbox" name="remember" id="remember"> 
			<label for="remeber">Ingat saya</label>
		</li>
		<li>
			<button type="submit" name="submit">Login</button>
		</li>	
	</form>
	</ul>
</body>
</html>