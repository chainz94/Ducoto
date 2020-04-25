<div>
    <h2>Tambah Produk</h2>

    <form method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label>Nama</label>
            <input type="text" class="form-control" name="Nama">
        </div>
        <div class="form-group">
            <label>Harga (Rp)</label>
            <input type="number" class="form-control" name="Harga">
        </div>
        <div class="form-group">
            <label>Power</label>
            <input type="text" class="form-control" name="Power">
        </div>
        <div class="form-group">
            <label>Torque</label>
            <input type="text" class="form-control" name="Torque">
        </div>
        <div class="form-group">
            <label>Silinder</label>
            <input type="text" class="form-control" name="Silinder">
        </div>
        <div class="form-group">
            <label>Bensin Rata Rata</label>
            <input type="text" class="form-control" name="Bensin_Rata_Rata">
        </div>
        <div class="form-group">
            <label>Bensin Full</label>
            <input type="text" class="form-control" name="Bensin_Full">
        </div>
        <div class="form-group">
            <label>Tinggi</label>
            <input type="text" class="form-control" name="Tinggi">
        </div>
        <div class="form-group">
            <label>Berat</label>
            <input type="text" class="form-control" name="Berat">
        </div>
        <div class="form-group">
            <label>CC</label>
            <input type="text" class="form-control" name="CC">
        </div>
        <div class="form-group">
            <label>Mesin</label>
            <input type="text" class="form-control" name="Mesin">
        </div>
        <div class="form-group">
            <label>Top Speed</label>
            <input type="text" class="form-control" name="Top_Speed">
        </div>
        <div class="form-group">
            <label>Deskripsi</label>
            <textarea class="form-control" rows="10" name="Deskripsi"></textarea>
        </div>
        <div class="form-group">
            <label>Foto Produk</label>
            <input type="file" class="form-control" name="foto_produk">
        </div>
        <button class="btn btn-primary" name="save">Simpan</button>
    </form>
    <?php
    if (isset($_POST['save']))
    {
        $Nama = $_FILES['foto_produk']['name'];
        $lokasi = $_FILES['foto_produk']['tmp_name'];
        move_uploaded_file($lokasi, "../foto_produk/".$Nama);
        $koneksi->query("INSERT INTO produk
            (nama_produk,harga_produk,power_produk,torque_produk,silinder_produk,bensinrata_produk,bensinfull_produk,
            tinggi_produk,berat_produk,cc_produk,mesin_produk,topspeed_produk,deskripsi_produk,foto_produk)

            VALUES('$_POST[Nama]','$_POST[Harga]','$_POST[Power]','$_POST[Torque]','$_POST[Silinder]','
            $_POST[Bensin_Rata_Rata]','$_POST[Bensin_Full]','$_POST[Tinggi]','$_POST[Berat]','$_POST[CC]','
            $_POST[Mesin]','$_POST[Top_Speed]','$_POST[Deskripsi]','$Nama')");

        echo "<div class='alert alert-info'>Data Tersimpan</div>";
        echo "<meta http-equiv='refresh' content='l;url=index.php?halaman=produk'>";
    }
    ?>
</div>