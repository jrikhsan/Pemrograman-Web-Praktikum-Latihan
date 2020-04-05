const selectNimMhs = document.getElementById('nim_mhs');
const btnSubmit = document.getElementById('btn-submit');

//add click function
const onSubmit = btnSubmit.addEventListener('click', function (event) {
    event.preventDefault();

    const nilaiTugas = document.getElementById('nilai_tugas');
    const nilaiUts = document.getElementById('nilai_uts');
    const nilaiUas = document.getElementById('nilai_uas');
    const nilaiAkhir = document.getElementById('nilai_akhir');
    const alert = document.getElementById('alert');
    const table = document.getElementById('table');

    let valueNilaiTugas = nilaiTugas.value;
    let valueNilaiUts = nilaiUts.value;
    let valueNilaiUas = nilaiUas.value;

    //menghitung NA
    let hasil = 0.4 * valueNilaiTugas + 0.3 * valueNilaiUts + 0.3 * valueNilaiUas;

    //menampilkan NA pada label
    nilaiAkhir.value = hasil;

    if (valueNilaiTugas && valueNilaiUts && valueNilaiUas > 100 || valueNilaiTugas && valueNilaiUts && valueNilaiUas < 0) {
        alert.innerHTML = `Nilai Tidak Valid, Silakan Input Ulang !`
        nilaiAkhir.value = "Tidak Valid"
        setTimeout(function () {
            location.reload();
        }, 2000);
    } 
	else if (valueNilaiTugas > 100 || valueNilaiTugas < 0) {
        alert.innerHTML = `Nilai Tidak Valid, Silakan Input Ulang !`
        nilaiAkhir.value = "Tidak Valid"
        setTimeout(function () {
            location.reload();
        }, 2000);
    } 
	else if (valueNilaiUts > 100 || valueNilaiUts < 0) {
        alert.innerHTML = `Nilai Tidak Valid, Silakan Input Ulang !`
        nilaiAkhir.value = "Tidak Valid"
        setTimeout(function () {
            location.reload();
        }, 2000);
    }
	else if (valueNilaiUas > 100 || valueNilaiUas < 0) {
        alert.innerHTML = `Nilai Tidak Valid, Silakan Input Ulang !`
        nilaiAkhir.value = "Tidak Valid"
        setTimeout(function () {
            location.reload();
        }, 2000);
    } 
	
	else {
        table.innerHTML = `<table class="table">
                    <thead>
                    <tr>
                        <th scope="col">NIM</th>
						<td></td>
                        <th scope="col">Nama</th>
						<td></td>
                        <th scope="col">Nilai Akhir</th>
						<td></td>
                        <th scope="col">STATUS</th>
                    </tr>
                    </thead>
					
                    <tbody>
                    <tr>
                        <th scope="row">${nim}</th>
						<td></td>
                        <td scope="row">${namaMhs}</td>
						<td></td>
                        <td scope="row">${hasil}</td>
						<td></td>
                        <td scope="row">${hasil > 60 ? 'LULUS' : 'TIDAK LULUS' }</td>
                    </tr>
                    </tbody>
                </table>`;
    }
});

selectNimMhs.addEventListener('click', function () {
    let nimMhs = document.getElementById('nim_mhs').selectedIndex;
    let valueNamaMhs = document.getElementsByTagName('option')[nimMhs].value;
    let labelNamaMhs = document.getElementById('nama_mhs');

    labelNamaMhs.value = valueNamaMhs;

    if (labelNamaMhs == 'Muh. Amin') {
        nim = 'A11.2015.12345'
    } 
	else if (labelNamaMhs == 'Santoso') {
        nim = 'A11.2015.12346'
    } 
	else {
        nim = 'A11.2015.12347'
    }

    return namaMhs = labelNamaMhs.value, nim;
}, onSubmit);