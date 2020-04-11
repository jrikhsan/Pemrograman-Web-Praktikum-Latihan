<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Latihan 1 PHP [Server Side 1-1_PHP Dasar]</title>
</head>

<body>
    <?php
    if (isset($_POST['hitung'])) {
        //deklarasi variable
        $bil1 = $_POST['bil1'];
        $bil2 = $_POST['bil2'];
        $operasi = $_POST['operasi'];

        //mengunakan switch untuk memilih operator mana yg dipilih user
        switch ($operasi) {
            case 'tambah':
                $hasil = $bil1 + $bil2;
                break;
            case 'kurang':
                $hasil = $bil1 - $bil2;
                break;
            case 'kali':
                $hasil = $bil1 * $bil2;
                break;
            case 'bagi':
                $hasil = $bil1 / $bil2;
                break;
        }
    }
    ?>
    <form action="index.php" method="post">
		<br><br>
        <input type="text" name="bil1" placeholder="Masukkan bil1">
        <br><br>
        <input type="text" name="bil2" placeholder="Masukkan bil2">
        <br><br>
        <select name="operasi">
            <option value="tambah">+(tambah)</option>
            <option value="kurang">-(kurang)</option>
            <option value="kali">*(kali)</option>
            <option value="bagi">/(bagi)</option>
        </select>
        <input type="submit" name="hitung" value="=">
    </form>

    <?php if (isset($_POST['hitung'])) { ?>
        <br>
		<input type="text" value="<?php echo $hasil; ?>">
    <?php } 
	else { ?>
        <input type="text" value="0">
    <?php } ?>
</body>

</html>