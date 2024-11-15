<?php  

include "../../config/function_antiinjection.php";
include "../../config/koneksi.php";
include "../../config/kode.php";

$user = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM users WHERE id_user='$_SESSION[id_user]'"));
$sekolah = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM sekolah WHERE id_sekolah='1'"));
$kepala = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM users WHERE jabatan='1'"));

$datakelas = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM kelas_wali 
WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$_GET[orderID]'"));

$jumlahmapelkelas = mysqli_num_rows(mysqli_query($mysqli,"SELECT * FROM mapel_kelas WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]'"));
$jumlahsiswakelas = mysqli_num_rows(mysqli_query($mysqli,"SELECT * FROM siswa_kelas WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]'"));

header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Lager Nilai Kelas:$datakelas[nama_kelas].xls");

?>

<table style="border-collapse: collapse; font-size:18px;">
    <tr>
        <td colspan="50"><b>Lager Nilai Kelas </b></td>
    </tr>
    <tr>
        <td colspan="50"><b>Kelas / Rombel : <?php echo $datakelas['nama_kelas'] ?></b></td>
    </tr>
</table>


<style>
.str {
    mso-number-format: \@;
}
</style>

<table style="border-collapse: collapse;" border="1">
    <tr style="background-color:#e0b9fb;">
        <td rowspan="2" style="text-align:center; vertical-align:middle; width:5%;">No</td>
        <td rowspan="2" style="text-align:center; vertical-align:middle; width:7%;">NISN</td>
        <td rowspan="2" style="text-align:center; vertical-align:middle;">Nama Peserta Didik</td>
        <td colspan="<?php echo $jumlahmapelkelas?>" style="text-align:center; vertical-align:middle;">Mata Pelajaran
        </td>
        <td rowspan="2" style="text-align:center; vertical-align:middle; width:3%;">Jumlah <br> Nilai</td>
        <td rowspan="2" style="text-align:center; vertical-align:middle; width:3%;">Rata-rata</td>
        <td rowspan="2" style="text-align:center; vertical-align:middle; width:3%;">Rank</td>
        <td colspan="3" style="text-align:center; vertical-align:middle; background-color:#fbecb9;">Rekap Presensi</td>
    </tr>
    <tr style="background-color:#e0b9fb;">
        <?php
        $mapelkelas = mysqli_query($mysqli,"SELECT * FROM mapel_kelas 
        JOIN mapel ON mapel_kelas.id_mapel = mapel.id_mapel
        WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' ORDER BY urut ASC");
        while($rmapelkelas = mysqli_fetch_array($mapelkelas)){
        ?>
        <th style="text-align:center; vertical-align:middle; width:4%;"><?php echo $rmapelkelas['s_mapel']?></th>
        <?php } ?>

        <?php
        $absen = mysqli_query($mysqli,"SELECT * FROM absen ORDER BY id_absen ASC");
        while($rabsen = mysqli_fetch_array($absen)){
        ?>
        <th style="text-align:center; vertical-align:middle; width:5%; background-color:#fbecb9;">
            <?php echo $rabsen['absen']?></th>
        <?php } ?>
    </tr>


    <?php  
                      			$nomor=1;
                      			$nomorrank=1;
                      			$siswakelas = mysqli_query($mysqli,"SELECT * FROM nilai_kelas 
                      			JOIN siswa ON nilai_kelas.id_siswa = siswa.id_siswa
                      			WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' ORDER BY nilai DESC");
                      			while($rsiswakelas = mysqli_fetch_array($siswakelas)){
                      			?>
    <tr>
        <td style="text-align:center;"><?php echo $nomor++ ?></td>
        <td style="text-align:center;" class="str"><?php echo $rsiswakelas['nisn'] ?></td>
        <td><?php echo $rsiswakelas['nama_siswa'] ?></td>
        <?php
                      			    $mapelkelas = mysqli_query($mysqli,"SELECT * FROM mapel_kelas 
                      			    JOIN mapel ON mapel_kelas.id_mapel = mapel.id_mapel
                      			    WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' ORDER BY urut ASC");
                      			    while($rmapelkelas = mysqli_fetch_array($mapelkelas)){
                      			        
                      			        $nilaimapel = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM nilai_mata_pelajaran WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' AND id_mapel='$rmapelkelas[id_mapel]' AND id_siswa='$rsiswakelas[id_siswa]' "));
                      			        
                      			        $nilai_mapel_kelas = round(($nilaimapel['nilai']),2);
                      			        
                      			        
                      			        
                      			    ?>
        <td style="text-align:center; vertical-align:middle; width:4%;" class="str"><?php echo $nilai_mapel_kelas?></td>
        <?php } ?>
        <td style="text-align:center; vertical-align:middle; width:3%;" class="str"><?php echo $rsiswakelas['jumlah']?>
        </td>
        <td style="text-align:center; vertical-align:middle; width:3%;" class="str"><?php echo $rsiswakelas['nilai']?>
        </td>
        <td style="text-align:center; vertical-align:middle; width:3%;"><?php echo $nomorrank++?></td>
        <?php
                      			    $absen = mysqli_query($mysqli,"SELECT * FROM absen ORDER BY id_absen ASC");
                      			    while($rabsen = mysqli_fetch_array($absen)){
                      			        $presensi = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM presensi WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_absen='$rabsen[id_absen]' AND id_siswa='$rsiswakelas[id_siswa]'"));
                      			    ?>
        <td style="text-align:center; vertical-align:middle; width:5%; background-color:#fbecb9;">
            <?php echo $presensi['jumlah']?>
        </td>
        <?php } ?>
    </tr>
    <?php } ?>

    <tr>
        <td colspan="3" style="text-align:center; vertical-align:middle; width:5%; background-color:#fbecb9;">Nilai
            Rata-rata</td>
        <?php
                      			    $mapelkelas = mysqli_query($mysqli,"SELECT * FROM mapel_kelas 
                      			    JOIN mapel ON mapel_kelas.id_mapel = mapel.id_mapel
                      			    WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' ORDER BY urut ASC");
                      			    while($rmapelkelas = mysqli_fetch_array($mapelkelas)){
                      			        $nilaimapel = mysqli_fetch_array(mysqli_query($mysqli,"SELECT SUM(nilai) AS jumlah_nilai_rata FROM nilai_mata_pelajaran WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' AND id_mapel='$rmapelkelas[id_mapel]' "));
                      			        $nilai_rata_rata = round(($nilaimapel['jumlah_nilai_rata']/$jumlahsiswakelas),2);
                      			    ?>
        <td style="text-align:center; vertical-align:middle; width:5%; background-color:#fbecb9;" class="str">
            <?php echo $nilai_rata_rata?></td>
        <?php } ?>
        <td style="text-align:center; vertical-align:middle; width:5%; background-color:#fbecb9;" class="str">
            <?php
                      			        $nilaikelas = mysqli_fetch_array(mysqli_query($mysqli,"SELECT SUM(jumlah) AS jumlah_nilai_rata FROM nilai_kelas WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' "));
                      			        echo $nilai_jumlah_rata_rata_kelas = round(($nilaikelas['jumlah_nilai_rata']/$jumlahsiswakelas),2);
                      			        ?>
        </td>
        <td style="text-align:center; vertical-align:middle; width:5%; background-color:#fbecb9;" class="str">
            <?php
                      			        $nilaikelas2 = mysqli_fetch_array(mysqli_query($mysqli,"SELECT SUM(nilai) AS nilai_rata_nilai FROM nilai_kelas WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' "));
                      			        echo $nilai_rata_rata_kelas = round(($nilaikelas2['nilai_rata_nilai']/$jumlahsiswakelas),2);
                      			        ?>
        </td>
    </tr>


    <tr>
        <td colspan="3" style="text-align:center; vertical-align:middle; width:5%; background-color:#b9e8fb;">Nilai
            Terendah</td>
        <?php
			$mapelkelas = mysqli_query($mysqli,"SELECT * FROM mapel_kelas 
			JOIN mapel ON mapel_kelas.id_mapel = mapel.id_mapel
			WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' ORDER BY urut ASC");
			while($rmapelkelas = mysqli_fetch_array($mapelkelas)){
				$nilaimapel = mysqli_fetch_array(mysqli_query($mysqli,"SELECT MIN(nilai) AS nilai_rendah_mapel FROM nilai_mata_pelajaran WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' AND id_mapel='$rmapelkelas[id_mapel]' "));
				$nilai_terendah_mapel = round(($nilaimapel['nilai_rendah_mapel']),2);
		?>
        <td style="text-align:center; vertical-align:middle; width:5%; background-color:#b9e8fb;" class="str">
            <?php echo $nilai_terendah_mapel?></td>
        <?php } ?>

        <td style="text-align:center; vertical-align:middle; width:5%; background-color:#b9e8fb;" class="str">
            <?php
				$nilaikelas = mysqli_fetch_array(mysqli_query($mysqli,"SELECT MIN(jumlah) AS min_jumlah FROM nilai_kelas WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' "));
				echo $nilai_jumlah_min = round(($nilaikelas['min_jumlah']),2);
			?>
        </td>
        <td style="text-align:center; vertical-align:middle; width:5%; background-color:#b9e8fb;" class="str">
            <?php
				$nilaikelas2 = mysqli_fetch_array(mysqli_query($mysqli,"SELECT MIN(nilai) AS min_nilai FROM nilai_kelas WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' "));
				echo $nilai_min_kelas = round(($nilaikelas2['min_nilai']),2);
			?>
        </td>
    </tr>


    <tr>
        <td colspan="3" style="text-align:center; vertical-align:middle; width:5%; background-color:#fbb9bc;">Nilai
            Tertinggi</td>
        <?php
			$mapelkelas = mysqli_query($mysqli,"SELECT * FROM mapel_kelas 
			JOIN mapel ON mapel_kelas.id_mapel = mapel.id_mapel
			WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' ORDER BY urut ASC");
			while($rmapelkelas = mysqli_fetch_array($mapelkelas)){
				$nilaimapel = mysqli_fetch_array(mysqli_query($mysqli,"SELECT MAX(nilai) AS nilai_tinggi_mapel FROM nilai_mata_pelajaran WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' AND id_mapel='$rmapelkelas[id_mapel]' "));
				$nilai_terendah_mapel = round(($nilaimapel['nilai_tinggi_mapel']),2);
		?>
        <td style="text-align:center; vertical-align:middle; width:5%; background-color:#fbb9bc;" class="str">
            <?php echo $nilai_terendah_mapel?></td>
        <?php } ?>

        <td style="text-align:center; vertical-align:middle; width:5%; background-color:#fbb9bc;" class="str">
            <?php
				$nilaikelas = mysqli_fetch_array(mysqli_query($mysqli,"SELECT MAX(jumlah) AS max_jumlah FROM nilai_kelas WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' "));
				echo $nilai_jumlah_min = round(($nilaikelas['max_jumlah']),2);
			?>
        </td>
        <td style="text-align:center; vertical-align:middle; width:5%; background-color:#fbb9bc;" class="str">
            <?php
				$nilaikelas2 = mysqli_fetch_array(mysqli_query($mysqli,"SELECT MAX(nilai) AS max_nilai FROM nilai_kelas WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' "));
				echo $nilai_min_kelas = round(($nilaikelas2['max_nilai']),2);
			?>
        </td>
    </tr>
</table>