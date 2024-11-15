<?php  

// $mapelkelas = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM mapel_kelas 
// JOIN mapel ON mapel_kelas.id_mapel = mapel.id_mapel
// JOIN kelas ON mapel_kelas.id_kelas = kelas.id_kelas
// WHERE id_mapel_kelas='$_GET[orderID]'"));

// $id_mapel = $mapelkelas['id_mapel'];
// $id_kelas = $mapelkelas['id_kelas'];
?>



<section class="content-header">
    <h1>
        Daftar Proyek Pprofil Pancasila <?php echo $mapelkelas['nama_mapel']?> - <?php echo $mapelkelas['nama_kelas']?>
        <small><i>E-Rapor</i></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Daftar Kelas Ampuh Ku</li>
    </ol>
</section>

<section class="content-header">
    <a href="?pages=<?php echo 'kelas-ampuh'?>" class="btn btn-primary btn-sm">Kembali</a>
</section>


<?php if(empty($_GET['filter'])){ ?>
<!-- Main content -->
<section class="content">

    <div class="row">
        <div class="col-md-12">
            <!-- USERS LIST -->
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title">Daftar Proyek Pprofil Pancasila </h3>
                    <div class="box-tools pull-right">

                    </div>
                </div><!-- /.box-header -->
                <div class="box-body  table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Tema</th>
                                <th>Judul</th>
                                <th>Deskripsi</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php  
                      			$nomor=1;
                      			$kelas = mysqli_query($mysqli,"SELECT * FROM mapel_proyek 
                      			WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$id_kelas' AND id_mapel='$id_mapel' ORDER BY id_proyek_kelas ASC");
                      			while($rkelas = mysqli_fetch_array($kelas)){
                      			    $proyekkelas = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM proyek_kelas 
                      			    JOIN proyek_tema ON proyek_kelas.id_tema = proyek_tema.id_tema
                      			    WHERE id_proyek_kelas='$rkelas[id_proyek_kelas]'"));
                      			?>
                            <tr>
                                <td><?php echo $nomor++ ?></td>
                                <td><?php echo $proyekkelas['tema'] ?></td>
                                <td><?php echo $proyekkelas['judul_proyek'] ?></td>
                                <td><?php echo $proyekkelas['deskripsi_singkat'] ?></td>
                                <td>
                                    <a href="?pages=<?php echo $_GET['pages'] ?>&filter=<?php echo 'penilaian' ?>&orderID=<?php echo $_GET['orderID'] ?>&dataID=<?php echo $rkelas['id_proyek_kelas'] ?>"
                                        class="btn btn-warning btn-sm"><i class="fa fa-pencil"></i> Nilai</a>

                                </td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div><!-- /.row -->

</section><!-- /.content -->

<?php }elseif($_GET['filter']=='penilaian'){ 
        $jumlahsubelemen = mysqli_num_rows(mysqli_query($mysqli,"SELECT * FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[dataID]'"));
        ?>
<!-- Main content -->
<section class="content">

    <div class="row">
        <div class="col-md-12">
            <!-- USERS LIST -->
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title">Daftar Proyek Pprofil Pancasila <?php echo $mapelkelas['nama_mapel']?> -
                        <?php echo $mapelkelas['nama_kelas']?></h3>
                    <div class="box-tools pull-right">

                    </div>
                </div><!-- /.box-header -->
                <form method="POST">
                    <div class="box-body  table-responsive">
                        <p>
                            <button type="submit" name="simpandata" class="btn btn-warning btn-sm">Simpan Data</button>
                        </p>
                        <table class="table table-striped table-bordered" style="font-size:12px;">
                            <tr style="background-color:#fee8d0;">
                                <td rowspan="3" style="text-align:center; vertical-align:middle;">No</td>
                                <td rowspan="3" style="text-align:center; vertical-align:middle;">NISN</td>
                                <td rowspan="3" style="text-align:center; vertical-align:middle;">Nama Peserta Didik
                                </td>
                                <td colspan="<?php echo $jumlahsubelemen ?>"
                                    style="text-align:center; vertical-align:middle;">Dimensi, Sub Elemen</td>
                                <td rowspan="3" style="text-align:center; vertical-align:middle;">Nilai Kelas</td>
                            </tr>
                            <tr style="background-color:#fee8d0;">
                                <?php
                                $subelemen = mysqli_query($mysqli,"SELECT DISTINCT(id_dimensi) FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[dataID]' ORDER BY id_dimensi ASC");
                                while($rsubelemen = mysqli_fetch_array($subelemen)){
                                    $jumlahsub = mysqli_num_rows(mysqli_query($mysqli,"SELECT * FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[dataID]' AND id_dimensi='$rsubelemen[id_dimensi]'"));
                                    $dimensi = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM dimensi WHERE id_dimensi='$rsubelemen[id_dimensi]'"));
                                ?>
                                <td colspan="<?php echo $jumlahsub ?>"
                                    style="text-align:center; vertical-align:middle; width:7%;">
                                    <?php echo substr($dimensi['dimensi'], 0, 30) . '...';?></td>
                                <?php } ?>
                            </tr>
                            <tr style="background-color:#fee8d0;">
                                <?php
                                $subelemen = mysqli_query($mysqli,"SELECT DISTINCT(id_dimensi) FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[dataID]' ORDER BY id_dimensi ASC");
                                while($rsubelemen = mysqli_fetch_array($subelemen)){
                                
                                $datasubelemen = mysqli_query($mysqli,"SELECT * FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[dataID]' AND id_dimensi='$rsubelemen[id_dimensi]' ORDER BY id_sub_elemen ASC");
                                while($rdatasubelemen = mysqli_fetch_array($datasubelemen)){
                                    $datasub = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM sub_elemen WHERE id_sub_elemen='$rdatasubelemen[id_sub_elemen]'"));
                                
                                ?>
                                <td style="text-align:center; vertical-align:middle; width:7%;">
                                    <?php echo substr($datasub['sub_elemen'], 0, 30) . '...';?></td>
                                <?php } ?>
                                <?php } ?>
                            </tr>
                            <?php
                            $nomor=1;
                            $siswakelas = mysqli_query($mysqli,"SELECT * FROM siswa_kelas 
                            JOIN siswa ON siswa_kelas.id_siswa = siswa.id_siswa
                            WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$id_kelas' ORDER BY nama_siswa ASC");
                            while($rsiswakelas = mysqli_fetch_array($siswakelas)){
                            ?>
                            <tr>
                                <td style="text-align:center;"><?php echo $nomor++?></td>
                                <td style="text-align:center;"><?php echo $rsiswakelas['nisn']?></td>
                                <td><?php echo $rsiswakelas['nama_siswa']?> </td>
                                <?php
                                $subelemen = mysqli_query($mysqli,"SELECT DISTINCT(id_dimensi) FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[dataID]' ORDER BY id_dimensi ASC");
                                while($rsubelemen = mysqli_fetch_array($subelemen)){
                                
                                $datasubelemen = mysqli_query($mysqli,"SELECT * FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[dataID]' AND id_dimensi='$rsubelemen[id_dimensi]' ORDER BY id_sub_elemen ASC");
                                while($rdatasubelemen = mysqli_fetch_array($datasubelemen)){
                                    $datasub = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM sub_elemen WHERE id_sub_elemen='$rdatasubelemen[id_sub_elemen]'"));
                                    $datanilai = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM nilai_proyek WHERE proyek='$_GET[dataID]' AND id_mapel='$id_mapel' AND id_sub_elemen='$rdatasubelemen[id_sub_elemen]' AND id_siswa='$rsiswakelas[id_siswa]'"));
                                
                                ?>
                                <td style="text-align:center; vertical-align:middle; width:7%;">
                                    <select name="nilai[]" style="width:100%;">
                                        <option value="">Pilih Data</option>
                                        <option value="1" <?php if($datanilai['nilai']==1){ echo "selected";}?>>BB
                                        </option>
                                        <option value="2" <?php if($datanilai['nilai']==2){ echo "selected";}?>>MB
                                        </option>
                                        <option value="3" <?php if($datanilai['nilai']==3){ echo "selected";}?>>BSH
                                        </option>
                                        <option value="4" <?php if($datanilai['nilai']==4){ echo "selected";}?>>SB
                                        </option>
                                    </select>
                                    <input type="hidden" name="subelemen[]"
                                        value="<?php echo $rdatasubelemen['id_sub_elemen']?>">
                                    <input type="hidden" name="siswa[]" value="<?php echo $rsiswakelas['id_siswa']?>">
                                </td>
                                <?php } ?>
                                <?php } ?>
                                <?php 
                                    $jumlahniali = mysqli_fetch_array(mysqli_query($mysqli,"SELECT SUM(nilai) AS jumlah_nilai FROM nilai_proyek WHERE proyek='$_GET[dataID]' AND id_mapel='$id_mapel' AND id_siswa='$rsiswakelas[id_siswa]'"));
                                    $datajumlah = $jumlahniali['jumlah_nilai'];
                                    
                                    $rerata = round(($datajumlah/$jumlahsubelemen));
                                    if($rerata == 0){
                                        $ket = "BB";
                                    }elseif($rerata==1){
                                        $ket = "BB";
                                    }elseif($rerata==2){
                                        $ket = "MB";
                                    }elseif($rerata==3){
                                        $ket = "BSH";
                                    }elseif($rerata==4){
                                        $ket = "SB";
                                    }
                                    ?>
                                <td style="text-align:center; vertical-align:middle; width:7%;">
                                    <?php echo $ket ?>
                                </td>
                            </tr>
                            <?php } ?>
                        </table>
                    </div>
                </form>
            </div>
        </div><!-- /.row -->

</section><!-- /.content -->

<?php
        if(isset($_POST['simpandata'])){
            $subelemen = $_POST['subelemen'];
            $siswa= $_POST['siswa'];
            $nilai = $_POST['nilai'];
            
            $jumlahsiswa = count($siswa);
            for ($i=0; $i <$jumlahsiswa ; $i++) { 
                
                $ceknilai = mysqli_num_rows(mysqli_query($mysqli,"SELECT * FROM nilai_proyek WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND proyek='$_GET[dataID]' AND id_kelas='$id_kelas' AND id_mapel='$id_mapel'AND id_sub_elemen='$subelemen[$i]' AND id_siswa='$siswa[$i]'"));
                if($ceknilai == 0){
                    
                    $datasub = mysqli_query($mysqli,"SELECT * FROM sub_elemen WHERE id_sub_elemen='$subelemen[$i]'");
                    while($rdatasub = mysqli_fetch_array($datasub)){
                        $id_dimensi = $rdatasub['id_dimensi'];
                        $id_elemen = $rdatasub['id_elemen'];
                        $id_sub_elemen = $rdatasub['id_sub_elemen'];
                        
                        $simpan = mysqli_query($mysqli,"INSERT INTO nilai_proyek SET tahun='$sekolah[tahun]', semester='$sekolah[semester]', proyek='$_GET[dataID]', id_kelas='$id_kelas', id_mapel='$id_mapel', id_dimensi='$id_dimensi', id_elemen='$id_elemen', id_sub_elemen='$id_sub_elemen', id_siswa='$siswa[$i]', nilai='$nilai[$i]'"); 
                    }
                    
                       
                }else{
                    
                    $datasub = mysqli_query($mysqli,"SELECT * FROM sub_elemen WHERE id_sub_elemen='$subelemen[$i]'");
                    while($rdatasub = mysqli_fetch_array($datasub)){
                        $id_dimensi = $rdatasub['id_dimensi'];
                        $id_elemen = $rdatasub['id_elemen'];
                        $id_sub_elemen = $rdatasub['id_sub_elemen'];
                        
                        $simpan = mysqli_query($mysqli,"UPDATE nilai_proyek SET nilai='$nilai[$i]', id_dimensi='$id_dimensi', id_elemen='$id_elemen' WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND proyek='$_GET[dataID]' AND id_kelas='$id_kelas' AND id_mapel='$id_mapel' AND id_sub_elemen='$id_sub_elemen' AND id_siswa='$siswa[$i]'");
                    }
                    
                     
                }
                
            	
            }
            if($simpan){
                ?><script>
alert('Berhasil');
window.location.href =
    "?pages=<?php echo $_GET['pages']?>&filter=<?php echo $_GET['filter']?>&orderID=<?php echo $_GET['orderID']?>&dataID=<?php echo $_GET['dataID']?>";
</script><?php
            }
        }
        ?>

<?php } ?>