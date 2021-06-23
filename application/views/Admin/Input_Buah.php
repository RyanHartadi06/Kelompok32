<div class="container-fluid">

  <h1 class="h3 mb-2 text-gray-800">Input Data Buah Naga</h1>
  <form action="" method="post" enctype="multipart/form-data">

    <div class="card shadow mb-4">
      <div class="card-body">
        <?= $this->session->flashdata('pesan') ?>
        <div class="row">
          <div class="col">
            <p>Nama Buah</p>
            <div class="input-group">
              <input type="text" id="nama_buah" name="nama_buah" class="form-control border-dark small mb-3" placeholder="Masukkan Nama Buah" value="<?php echo set_value('nama_buah') ?>" aria-describedby="basic-addon2">
            </div>
            <?= form_error('nama_buah', '<small class="text-danger">', '</small>') ?>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-4 col-4">
            <p>Berat</p>
            <div class="input-group">
              <input type="number" id="berat" name="berat" class="form-control border-dark small mb-3" placeholder="Masukkan Berat Buah" aria-describedby="basic-addon2">
            </div>
            <?= form_error('berat', '<small class="text-danger">', '</small>') ?>
          </div>
          <div class="col-lg-4 col-md-4 col-4">
            <p>Panjang</p>
            <div class="input-group">
              <input type="number" id="panjang" name="panjang" class="form-control border-dark small mb-3" placeholder="Masukkan Panjang Buah" aria-describedby="basic-addon2">
            </div>
            <?= form_error('panjang', '<small class="text-danger">', '</small>') ?>
          </div>
          <div class="col-lg-4 col-md-4 col-4">
            <p>Diameter</p>
            <div class="input-group">
              <input type="number" id="diameter" name="diameter" class="form-control border-dark small mb-3" placeholder="Masukkan Diameeter Buah" aria-describedby="basic-addon2">
            </div>
            <?= form_error('diameter', '<small class="text-danger">', '</small>') ?>
          </div>
        </div>
        <button type="submit" class="btn btn-info btn-icon-split">
          <span class="icon text-white-50">
            <i class="fas fa-plus"></i>
          </span>
          <span class="text">Kirim Data</span>
        </button>
        <a href="<?= base_url('Admin') ?>" class="btn btn-danger btn-icon-split">
          <span class="icon text-white-50">
            <i class="fas fa-reply"></i>
          </span>
          <span class="text">Kembali</span>
        </a>
      </div>
    </div>
</div>
<!-- /.card -->

</div>

<!-- /.container-fluid -->

</form>