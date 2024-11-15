<?php  
include "../assets/excel_reader/excel_reader.php";
?>

<section class="content-header">
    <h1>
        Piket Hari : <?php echo $hari ?>, Tanggal :
        <?php echo isset($_GET['tanggal']) ? tgl_indonesia($_GET['tanggal']) : tgl_indonesia(date('Y-m-d'))?>
    </h1>
</section>

<form method="POST">
    <section class="content-header">
        <select name="id_kelas" class="form-control" style="width:25%;" required="">
            <option value="" required="">Pilih Kelas</option>
            <?php
              $orderID = isset($_GET['orderID']) ? mysqli_real_escape_string($mysqli, $_GET['orderID']) : '';
              $kelas = mysqli_query($mysqli,"SELECT * FROM kelas ORDER BY id_kelas ASC");
              while($rkelas = mysqli_fetch_array($kelas)){
                  $sele = ($orderID == $rkelas['id_kelas']) ? "selected" : "";
            ?>
            <option value="<?php echo $rkelas['id_kelas']?>" <?php echo $sele ?>><?php echo $rkelas['nama_kelas']?>
            </option>
            <?php } ?>
        </select>

        <!-- Input untuk memilih tanggal, nilai default berasal dari URL jika ada -->
        <input type="date" name="tanggal" class="form-control" style="width:25%;"
            value="<?php echo isset($_GET['tanggal']) ? $_GET['tanggal'] : date('Y-m-d') ?>" required="">

        <button type="submit" name="cari" class="btn btn-primary">Tampil Data</button>
    </section>
</form>

<?php
        if(isset($_POST['cari'])){
            $id_kelas = mysqli_real_escape_string($mysqli, $_POST['id_kelas']);
            $tanggal = mysqli_real_escape_string($mysqli, $_POST['tanggal']);
            ?><script>
window.location.href =
    "?pages=<?php echo $_GET['pages']?>&orderID=<?php echo $id_kelas?>&tanggal=<?php echo $tanggal?>";
</script><?php
        }
?>

<?php 
if(empty($_GET['filter']) && !empty($orderID)){ 
    $kelas = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM kelas WHERE id_kelas='$orderID'"));
    // Mengambil tanggal dari URL jika ada, jika tidak gunakan tanggal hari ini
    $tanggal_presensi = isset($_GET['tanggal']) ? mysqli_real_escape_string($mysqli, $_GET['tanggal']) : date('Y-m-d');

    // Cek apakah absensi sudah ada untuk kelas pada tanggal ini
    $cek_absen = mysqli_query($mysqli, "SELECT * FROM presensi WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$orderID' AND tanggal='$tanggal_presensi'");
    if(mysqli_num_rows($cek_absen) > 0){
        // Jika absensi sudah ada, tampilkan notifikasi menggunakan SweetAlert
        ?><script>
Swal.fire({
    icon: 'info',
    title: 'Absensi Sudah Dilakukan',
    text: 'Absensi untuk kelas <?php echo $kelas['nama_kelas'] ?> pada tanggal <?php echo tgl_indonesia($tanggal_presensi) ?> sudah dilakukan.',
    confirmButtonText: 'OK'
});
</script><?php
    }
?>

<br>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header bg-danger">
                    <h3 class="card-title text-white ">Daftar Siswa Kelas <?php echo $kelas['nama_kelas']?></h3>
                </div>
                <form method="POST">
                    <div class="card-body">
                        <p>
                            <button type="submit" name="simpan" class="btn btn-primary btn-sm">Simpan Absen</button>
                        </p>
                        <table class="table table-striped table-bordered table-hover" data-page-length="50">
                            <thead class="thead-dark">
                                <tr>
                                    <th style="text-align:center;">No</th>
                                    <th style="text-align:center;">Nama Peserta Didik</th>
                                    <th style="text-align:center;">Presensi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php  
                                    $nomor = 1;
                                    $kelas = mysqli_query($mysqli,"SELECT * FROM siswa_kelas 
                                    JOIN siswa ON siswa_kelas.id_siswa = siswa.id_siswa
                                    WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$orderID' ORDER BY nama_siswa ASC");
                                    
                                    // Ambil presensi pada tanggal yang dipilih untuk semua siswa di kelas tersebut
                                    $presensi_today_query = mysqli_query($mysqli, "SELECT * FROM presensi WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND bulan=MONTH('$tanggal_presensi') AND tanggal='$tanggal_presensi' AND id_kelas='$orderID'");
                                    
                                    // Buat array untuk menyimpan data presensi yang sudah ada
                                    $presensi_today = [];
                                    while($rpresensi = mysqli_fetch_array($presensi_today_query)){
                                        $presensi_today[$rpresensi['id_siswa']] = $rpresensi['id_absen'];
                                    }

                                    while($rkelas = mysqli_fetch_array($kelas)){
                                ?>
                                <tr>
                                    <td style="text-align:center;"><?php echo $nomor++ ?></td>
                                    <input type="hidden" name="siswa[]" value="<?php echo $rkelas['id_siswa']?>" />
                                    <td><?php echo $rkelas['nama_siswa'] ?></td>
                                    <td>
                                        <select name="jawaban[]" class="form-control form-control-sm">
                                            <?php
                                                $absen = mysqli_query($mysqli,"SELECT * FROM absen ORDER BY id_absen ASC");
                                                while($rabsen = mysqli_fetch_array($absen)){
                                                    // Cek apakah siswa ini sudah memiliki presensi di tanggal yang dipilih
                                                    $ceked = (isset($presensi_today[$rkelas['id_siswa']]) && $presensi_today[$rkelas['id_siswa']] == $rabsen['id_absen']) ? "selected" : "";
                                            ?>
                                            <option value="<?php echo $rabsen['id_absen']?>" <?php echo $ceked ?>>
                                                <?php echo $rabsen['absen'] ?></option>
                                            <?php } ?>
                                        </select>
                                    </td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<?php
        if(isset($_POST['simpan'])){
            $jawaban = $_POST['jawaban'];
            $siswa = $_POST['siswa'];
            
            $jumlahsiswa = count($jawaban);

            // Proses penyimpanan presensi
            for ($i = 0; $i < $jumlahsiswa; $i++) { 
                $id_siswa = mysqli_real_escape_string($mysqli, $siswa[$i]);
                $id_absen = mysqli_real_escape_string($mysqli, $jawaban[$i]);
                
                // Cek jika presensi sudah ada di tanggal yang dipilih
                if(isset($presensi_today[$id_siswa])) {
                    // Update presensi jika sudah ada
                    mysqli_query($mysqli, "UPDATE presensi SET id_absen='$id_absen' WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND bulan=MONTH('$tanggal_presensi') AND tanggal='$tanggal_presensi' AND id_kelas='$orderID' AND id_siswa='$id_siswa'");
                } else {
                    // Insert jika presensi belum ada
                    mysqli_query($mysqli, "INSERT INTO presensi SET tahun='$sekolah[tahun]', semester='$sekolah[semester]', bulan=MONTH('$tanggal_presensi'), tanggal='$tanggal_presensi', id_kelas='$orderID', id_siswa='$id_siswa', id_absen='$id_absen'");
                }
            }
            
            ?><script>
Swal.fire({
    icon: 'success',
    title: 'Berhasil!',
    text: 'Absensi berhasil disimpan.',
    confirmButtonText: 'OK'
});
window.location.href =
    "?pages=<?php echo $_GET['pages']?>&orderID=<?php echo $orderID ?>&tanggal=<?php echo $tanggal_presensi ?>";
</script><?php
        }
}
?>