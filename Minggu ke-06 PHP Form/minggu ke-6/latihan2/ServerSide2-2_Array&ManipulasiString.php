<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Nilai MHS</title>
</head>

<body>
	<fieldset>
    <form action="proses.php" method="post">
        <label>NIM</label>
        <input type="text" name="nim">
		<br>
		
        <label>Program Studi</label>
        <select name="prodi">
            <option value="Teknik Informatika S1">Teknik Informatika S1</option>
            <option value="Sistem Informasi S1">Sistem Informasi S1</option>
            <option value="Teknik Informatika D3">Teknik Informatika D3</option>
        </select>
		<br>
		
        <label>Nilai Tugas</label>
        <input type="text" name="nilai_tugas">
		<br>
        
		<label>Nilai UTS</label>
        <input type="text" name="nilai_uts">
		<br>
        
		<label>Nilai UAS</label>
        <input type="text" name="nilai_uas">
		<br>

        <label>Catatan Khusus</label>
        <div>
            <p><input type="checkbox" name="catatan[]" value="Kehadiran >= 70%" />Kehadiran >= 70%</p>
            <p><input type="checkbox" name="catatan[]" value="Interaktif di kelas" />Interaktif Di Kelas</p>
            <p><input type="checkbox" name="catatan[]" value="Tidak Terlambat Mengumpulkan Tugas" />Tidak Terlambat Mengumpulkan Tugas</p>
        </div>
		</fieldset>
		<button type="submit" name="kirim">SIMPAN</button>
    </form>
</body>

</html>