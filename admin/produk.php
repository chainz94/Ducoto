<div class="font">

    <h2>Data Produk</h2>
    
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>No</th>
                <th class="table2">Foto</th>
                <th class="table2">Nama</th>
                <!-- <th>Deskripsi</th> -->
                <th class="table2">Harga</th>
                <th class="table2">Power</th>
                <th class="table2">Torque</th>
                <th class="table2">Silinder</th>
                <th class="table2">BensinAVG</th>
                <!-- <th>Bensin full</th> -->
                <th class="table2">Tinggi</th>
                <th class="table2">Berat</th>
                <!-- <th>CC</th> -->
                <!-- <th>Mesin</th> -->
                <!-- <th>TopSpeed</th> -->
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php $nomor=1; ?>
            <?php $ambil=$koneksi->query("SELECT * FROM produk"); ?>
            <?php while($pecah = $ambil->fetch_assoc()){ ?>
            <tr>
                <td><?php echo $nomor; ?></td>
                <td>
                    <img src="../foto_produk/<?php echo $pecah['foto_produk']; ?>" width="100">
                </td>
                <td class="table1"><?php echo $pecah['nama_produk']; ?></td>

                <td class="table1"><?php echo $pecah['harga_produk']; ?></td>
                <td class="table1"><?php echo $pecah['power_produk']; ?></td>
                <td class="table1"><?php echo $pecah['torque_produk']; ?></td>
                <td class="table1"><?php echo $pecah['silinder_produk']; ?></td>
                <td class="table1"><?php echo $pecah['bensinrata_produk']; ?></td>

                <td class="table1"><?php echo $pecah['tinggi_produk']; ?></td>
                <td class="table1"><?php echo $pecah['berat_produk']; ?></td>



                <td>
                    <a style="width:48px;height:30px; " 
                        href="index.php?halaman=hapusproduk&id=<?php echo $pecah['id_produk']; ?>" 
                        class="btn-danger btn">
                    <img style="width:35px;height:35px; margin-left:-7px;margin-top:-10px;" 
                        src="../admin/icon/delete1.png"></a> </br>
                    <a style="width:48px;height:30px; margin-left:52px;margin-top:-50px;"
                        href="index.php?halaman=ubahproduk&id=<?php echo $pecah['id_produk']; ?>"
                        class="btn btn-warning">
                    <img style="width:35px;height:35px; margin-left:-7px;margin-top:-10px;" 
                        src="../admin/icon/edit.png"></a> </br>
                    <a style="width:100px;height:30px;margin-top:-20px;"
                        href="index.php?halaman=detailproduk&id=<?php echo $pecah['id_produk']; ?>"
                        class="btn btn-info"><div style="margin-top:-4px;">Detail</div></a>
                </td>
            </tr>
            <?php $nomor++; ?>
            <?php } ?>
        </tbody>
    </table>
    <a href="index.php?halaman=tambahproduk" class="btn btn-primary">Tambah Data</a>
</div>

<style scoped lang="scss">
    .table1 {
        max-width: 10px;
        width: 10px; 
        max-height: 10px;
        height: 10px;
        overflow: hidden;
    }
    .table2 {
        max-width: 100px;
        width: 100px;
    }
    .font {
        font-size: 13px;
    }
</style>