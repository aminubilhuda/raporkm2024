<?php  

$proyek = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM proyek_kelas WHERE id_proyek_kelas='$_GET[orderID]'"));
?>



<section class="content-header">
    <h1>
        Project <?php echo $proyek['judul_proyek']?>
    </h1>
</section>

<section class="content-header">
    <a href="?pages=<?php echo 'project-kelas'?>" class="btn btn-primary btn-sm">
        <i class="fas fa-arrow-left"></i> Kembali
    </a>
    <a href="?pages=<?php echo $_GET['pages']?>&orderID=<?php echo $_GET['orderID']?>" class="btn btn-info btn-sm">
        <i class="fas fa-project-diagram"></i> Proyek Kelas
    </a>
    <a href="?pages=<?php echo $_GET['pages']?>&orderID=<?php echo $_GET['orderID']?>&filter=<?php echo 'sub-elemen'?>"
        class="btn btn-warning btn-sm">
        <i class="fas fa-list"></i> Sub Elemen
    </a>
    <a href="?pages=<?php echo $_GET['pages']?>&orderID=<?php echo $_GET['orderID']?>&filter=<?php echo 'rekap-nilai'?>"
        class="btn btn-danger btn-sm">
        <i class="fas fa-chart-bar"></i> Rekap Nilai
    </a>
</section>
<br>


<?php if(empty($_GET['filter'])){ ?>
<!-- Main content -->

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- USERS LIST -->
            <div class="card">
                <div class="card-header bg-danger">
                    <h3 class="card-title text-white">Detail Proyek Nilai</h3>
                    <div class="card-tools float-right">
                    </div>
                </div><!-- /.card-header -->
                <div class="card-body table-responsive">
                    <form method="POST">
                        <table class="table table-striped table-bordered table-sm">
                            <tr>
                                <td>Tema Proyek</td>
                                <td>
                                    <select name="id_tema" class="form-control select2" style="width:100%;">
                                        <option value="">Pilih Tema</option>
                                        <?php
                                          $tema = mysqli_query($mysqli,"SELECT * FROM proyek_tema ORDER BY id_tema ASC");
                                          while($rtema = mysqli_fetch_array($tema)){
                                              if($proyek['id_tema']==$rtema['id_tema']){
                                                  $seletema = "selected";
                                              }else{
                                                  $seletema = "";
                                              }
                                        ?>
                                        <option value="<?php echo $rtema['id_tema']?>" <?php echo $seletema?>>
                                            <?php echo $rtema['tema']?>
                                        </option>
                                        <?php } ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Judul Proyek</td>
                                <td>
                                    <input type="text" name="judul" class="form-control" required autocomplete="off"
                                        value="<?php echo $proyek['judul_proyek']?>">
                                </td>
                            </tr>
                            <tr>
                                <td>Deskripsi Proyek</td>
                                <td>
                                    <textarea name="deskripsi_singkat" class="form-control" required
                                        rows="5"><?php echo $proyek['deskripsi_singkat']?></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>Mata Pelajaran Terintegrasi</td>
                                <td>
                                    <?php
                                      $mapelkelas = mysqli_query($mysqli,"SELECT * FROM mapel_kelas 
                                      JOIN mapel ON mapel_kelas.id_mapel = mapel.id_mapel
                                      WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' ORDER BY urut ASC");
                                      while($rmapelkelas = mysqli_fetch_array($mapelkelas)){
                                          $jumlahdata = mysqli_num_rows(mysqli_query($mysqli,"SELECT * FROM mapel_proyek WHERE id_proyek_kelas='$_GET[orderID]' AND id_mapel='$rmapelkelas[id_mapel]'"));
                                          $ceked = ($jumlahdata == 1) ? "checked" : "";
                                    ?>
                                    <div class="form-check">
                                        <input class="form-check-input" id="<?php echo $rmapelkelas['id_mapel_kelas']?>"
                                            type="checkbox" name="mapel[]" value="<?php echo $rmapelkelas['id_mapel']?>"
                                            <?php echo $ceked?>>
                                        <label class="form-check-label"
                                            for="<?php echo $rmapelkelas['id_mapel_kelas']?>">
                                            <?php echo $rmapelkelas['nama_mapel']?>
                                        </label>
                                    </div>
                                    <?php } ?>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="text-center">
                                    <button type="submit" name="simpan" class="btn btn-primary">Update
                                        Data</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div><!-- /.row -->

</section><!-- /.content -->

<?php

        if(isset($_POST['simpan'])){
                $id_tema = $_POST['id_tema'];
                $judul = $_POST['judul'];
                $deskripsi_singkat = $_POST['deskripsi_singkat'];
                $mapel = $_POST['mapel'];
                
                $simpan = mysqli_query($mysqli,"UPDATE proyek_kelas SET id_tema='$id_tema', judul_proyek='$judul', deskripsi_singkat='$deskripsi_singkat' WHERE id_proyek_kelas='$_GET[orderID]'");
                if($simpan){
                    
                    $jumlahmapel = count($mapel);
                    mysqli_query($mysqli,"DELETE FROM mapel_proyek WHERE id_proyek_kelas='$_GET[orderID]'");
                    for ($i=0; $i <$jumlahmapel ; $i++) { 
                    	mysqli_query($mysqli,"INSERT INTO mapel_proyek SET id_proyek_kelas='$_GET[orderID]', tahun='$sekolah[tahun]', semester='$sekolah[semester]', id_kelas='$datakelas[id_kelas]', id_mapel='$mapel[$i]'");
                    }
                    
                    ?><script>
alert('Berhasil');
window.location.href = "?pages=<?php echo $_GET['pages']?>&orderID=<?php echo $_GET['orderID']?>";
</script><?php
                }
        }
        ?>


<?php }elseif($_GET['filter']=="sub-elemen"){ ?>
<section class="content">

    <div class="row">
        <div class="col-md-12">
            <!-- USERS LIST -->
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title">Sub Elemen Sasaran Project</h3>
                    <div class="box-tools pull-right">

                    </div>
                </div><!-- /.box-header -->
                <form method="POST">
                    <div class="box-body  table-responsive">
                        <p>
                            <button type="submit" name="simpandata" class="btn btn-primary btn-sm">Simpan Data</button>
                        </p>
                        <table class="table table-striped table-bordered table-sm">
                            <tr>
                                <td>No</td>
                                <td>Select</td>
                                <td>Dimensi</td>
                                <td>Sub Elemen</td>
                            </tr>
                            <?php
                            $nomor=1;
                            $subelemen = mysqli_query($mysqli,"SELECT * FROM sub_elemen ORDER BY id_dimensi, id_sub_elemen ASC");
                            while($rsubelemen = mysqli_fetch_array($subelemen)){
                                $dimensi = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM dimensi WHERE id_dimensi='$rsubelemen[id_dimensi]'"));
                                
                                $jumlahsub = mysqli_num_rows(mysqli_query($mysqli,"SELECT * FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[orderID]' AND id_sub_elemen='$rsubelemen[id_sub_elemen]'"));
                                if($jumlahsub==1){
                                    $selesub = "checked";
                                }else{
                                    $selesub = "";
                                }
                            ?>
                            <tr>
                                <td style="text-align:center;"><?php echo $nomor++ ?></td>
                                <td style="text-align:center;">
                                    <input type="checkbox" name="sub_elemen[]"
                                        value="<?php echo $rsubelemen['id_sub_elemen']?>" <?php echo $selesub?>>
                                </td>
                                <td><?php echo $dimensi['dimensi']?></td>
                                <td><?php echo $rsubelemen['sub_elemen']?></td>
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
            $subelemen = $_POST['sub_elemen'];
            $julahsubelemen = count($subelemen);
            
            mysqli_query($mysqli,"DELETE FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[orderID]'");
            
            for ($i=0; $i <$julahsubelemen ; $i++) { 
            	$ambildata = mysqli_query($mysqli,"SELECT * FROM sub_elemen WHERE id_sub_elemen='$subelemen[$i]'");
            	while($rambildata = mysqli_fetch_array($ambildata)){
            	    $id_dimensi = $rambildata['id_dimensi'];
            	    $id_elemen = $rambildata['id_elemen'];
            	    $id_sub_elemen = $rambildata['id_sub_elemen'];
            	    $simpan = mysqli_query($mysqli,"INSERT INTO proyek_subelemen SET id_proyek_kelas='$_GET[orderID]', id_dimensi='$id_dimensi', id_elemen='$id_elemen', id_sub_elemen='$id_sub_elemen'");
            	}
            }
            if($simpan){
                ?><script>
alert('Berhasil');
window.location.href =
    "?pages=<?php echo $_GET['pages']?>&orderID=<?php echo $_GET['orderID']?>&filter=<?php echo $_GET['filter']?>";
</script><?php
            }
        }
        ?>



<?php }elseif($_GET['filter']=="rekap-nilai"){ 
        $jumlahsubelemen = mysqli_num_rows(mysqli_query($mysqli,"SELECT * FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[orderID]'"));
        $jumlahmapel = mysqli_num_rows(mysqli_query($mysqli,"SELECT * FROM mapel_proyek WHERE id_proyek_kelas='$_GET[orderID]'"));
        ?>
<section class="content">

    <div class="row">
        <div class="col-md-12">
            <!-- USERS LIST -->
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title">Rekap Nilai Project</h3>
                    <div class="box-tools pull-right">

                    </div>
                </div><!-- /.box-header -->
                <form method="POST">
                    <div class="box-body  table-responsive">
                        <table class="table table-striped table-bordered table-sm" style="font-size:12px;">
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
                                $subelemen = mysqli_query($mysqli,"SELECT DISTINCT(id_dimensi) FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[orderID]' ORDER BY id_dimensi ASC");
                                while($rsubelemen = mysqli_fetch_array($subelemen)){
                                    $jumlahsub = mysqli_num_rows(mysqli_query($mysqli,"SELECT * FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[orderID]' AND id_dimensi='$rsubelemen[id_dimensi]'"));
                                    $dimensi = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM dimensi WHERE id_dimensi='$rsubelemen[id_dimensi]'"));
                                ?>
                                <td colspan="<?php echo $jumlahsub ?>"
                                    style="text-align:center; vertical-align:middle; width:7%;">
                                    <?php echo substr($dimensi['dimensi'], 0, 30) . '...';?></td>
                                <?php } ?>
                            </tr>
                            <tr style="background-color:#fee8d0;">
                                <?php
                                $subelemen = mysqli_query($mysqli,"SELECT DISTINCT(id_dimensi) FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[orderID]' ORDER BY id_dimensi ASC");
                                while($rsubelemen = mysqli_fetch_array($subelemen)){
                                
                                $datasubelemen = mysqli_query($mysqli,"SELECT * FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[orderID]' AND id_dimensi='$rsubelemen[id_dimensi]' ORDER BY id_sub_elemen ASC");
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
                            WHERE tahun='$sekolah[tahun]' AND semester='$sekolah[semester]' AND id_kelas='$datakelas[id_kelas]' ORDER BY nama_siswa ASC");
                            while($rsiswakelas = mysqli_fetch_array($siswakelas)){
                            ?>
                            <tr>
                                <td style="text-align:center;"><?php echo $nomor++?></td>
                                <td style="text-align:center;"><?php echo $rsiswakelas['nisn']?></td>
                                <td><?php echo $rsiswakelas['nama_siswa']?></td>
                                <?php
                                $subelemen = mysqli_query($mysqli,"SELECT DISTINCT(id_dimensi) FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[orderID]' ORDER BY id_dimensi ASC");
                                while($rsubelemen = mysqli_fetch_array($subelemen)){
                                
                                $datasubelemen = mysqli_query($mysqli,"SELECT * FROM proyek_subelemen WHERE id_proyek_kelas='$_GET[orderID]' AND id_dimensi='$rsubelemen[id_dimensi]' ORDER BY id_sub_elemen ASC");
                                while($rdatasubelemen = mysqli_fetch_array($datasubelemen)){
                                    
                                    $datasub = mysqli_fetch_array(mysqli_query($mysqli,"SELECT * FROM sub_elemen WHERE id_sub_elemen='$rdatasubelemen[id_sub_elemen]'"));
                                    
                                    $jumlahnialisub = mysqli_fetch_array(mysqli_query($mysqli,"SELECT SUM(nilai) AS jumlah_nilai FROM nilai_proyek WHERE proyek='$_GET[orderID]' AND id_sub_elemen='$rdatasubelemen[id_sub_elemen]' AND id_siswa='$rsiswakelas[id_siswa]'"));
                                    
                                    $rata2nilaisub = round(($jumlahnialisub['jumlah_nilai']/$jumlahmapel));
                                    
                                    if($rata2nilaisub==0){
                                        $ket = "BB";
                                    }elseif($rata2nilaisub==1){
                                        $ket = "BB";
                                    }elseif($rata2nilaisub==2){
                                        $ket = "MB";
                                    }elseif($rata2nilaisub==3){
                                        $ket = "BSH";
                                    }elseif($rata2nilaisub==4){
                                        $ket = "SB";
                                    }
                                    
                                ?>
                                <td style="text-align:center; vertical-align:middle; width:7%;"><?php echo $ket ?></td>
                                <?php } ?>
                                <?php } ?>
                                <td style="text-align:center; vertical-align:middle; width:7%;">
                                    <?php
                                    $jumlahnialisub = mysqli_fetch_array(mysqli_query($mysqli,"SELECT SUM(nilai) AS jumlah_nilai FROM nilai_proyek WHERE proyek='$_GET[orderID]' AND id_siswa='$rsiswakelas[id_siswa]'"));
                                    $jumnilaisub = $jumlahnialisub['jumlah_nilai'];
                                    $rata2kelas = round(((($jumnilaisub/$jumlahsubelemen)/$jumlahmapel)));
                                    if($rata2kelas==0){
                                        echo $ketkelas = "BB";
                                    }elseif($rata2kelas==1){
                                        echo $ketkelas = "BB";
                                    }elseif($rata2kelas==2){
                                        echo $ketkelas = "MB";
                                    }elseif($rata2kelas==3){
                                        echo $ketkelas = "BSH";
                                    }elseif($rata2kelas==4){
                                        echo $ketkelas = "SB";
                                    }
                                    ?>
                                </td>
                            </tr>
                            <?php } ?>
                        </table>
                    </div>
            </div>
        </div><!-- /.row -->

</section><!-- /.content -->


<?php } ?>