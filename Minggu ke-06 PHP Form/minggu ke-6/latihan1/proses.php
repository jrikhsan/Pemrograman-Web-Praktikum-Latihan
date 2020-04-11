<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabel Hasil Form Nilai MHS</title>
</head>

<body>
    <?php
    if (isset($_POST['kirim'])) {
        $nim = $_POST['nim'];
        $prodi = $_POST['prodi'];
        $nilai_tugas = $_POST['nilai_tugas'];
        $nilai_uts = $_POST['nilai_uts'];
        $nilai_uas = $_POST['nilai_uas'];

        $nilai_akhir = (0.4 * $nilai_tugas) + (0.3 * $nilai_uts) + (0.3 * $nilai_uas);
        if ($nilai_akhir > 84) {
            $status = 'A [LULUS]';
        } elseif ($nilai_akhir >= 70) {
            $status = 'B [LULUS]';
        } elseif ($nilai_akhir >= 60) {
            $status = 'C [LULUS]';
        } elseif ($nilai_akhir >= 50) {
            $status = 'D [TIDAK LULUS]';
        } else {
            $status = "E [TIDAK LULUS]";
        }

        $selected_catatan = "";
        if (!empty($_POST['catatan'])) {
            foreach ($_POST['catatan'] as $catatan) {
                $selected_catatan .= $catatan . " <br> ";
            }
        }

        echo "
        <table border=3>
            <thead>
                <tr>
                    <th>Program Studi</th>
                    <th>NIM</th>
                    <th>Nilai Akhir</th>
                    <th>Status</th>
                    <th>Catatan Khusus</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>$prodi</td>
                    <td>$nim</td>
                    <td>$nilai_akhir</td>
                    <td>$status</td>
                    <td>$selected_catatan</td>
                </tr>
            </tbody>
        </table>
        ";
    }
    ?>
</body>

</html>