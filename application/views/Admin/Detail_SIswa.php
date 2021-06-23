<div id="content-wrapper" class="d-flex flex-column">

  <!-- Main Content -->
  <div id="content">

    <!-- Begin Page Content -->
    <div class="container-fluid">
      <form action="" method="post">


        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Detail Siswa</h1>
        <div class="card shadow mb-4">

          <div class="card shadow mb-4">

            <?php foreach ($detail as $d) { ?>
              <div class="card-body">
                <div class="row">
                  <div class="my-auto col-sm-2">
                    <p>Nama Siswa</p>
                  </div>
                  <div class="my-auto col-sm-9">
                    <p><?= $d['nama_siswa'] ?></p>
                  </div>
                </div>

                <div class="row">
                  <div class="my-auto col-sm-2">
                    <p>Jenis Kelamin</p>
                  </div>
                  <div class="my-auto col-sm-9">
                    <p><?php if ($d['jenis_kelamin'] === 1) {
                            echo 'Laki Laki';
                          } else {
                            echo 'Perempuan';
                          } ?></p>
                  </div>
                </div>

                <div class="row">
                  <div class="my-auto col-sm-2">
                    <p>Tahun Masuk</p>
                  </div>
                  <div class="my-auto col-sm-9">
                    <p><?= $d['tahun_masuk'] ?></p>
                  </div>
                </div>

                <div class="row">
                  <div class="my-auto col-sm-2">
                    <p>Kelas</p>
                  </div>
                  <div class="my-auto col-sm-9">
                    <p><?= $d['kelas'] ?></p>
                  </div>
                </div>

                <div class="row">
                  <div class="my-auto col-sm-2">
                    <p>Tanggal Lahir</p>
                  </div>
                  <div class="my-auto col-sm-9">
                    <p><?= $d['tanggal_lahir'] ?></p>
                  </div>
                </div>
                <div class="row">
                  <div class="my-auto col-sm-2">
                    <p>Jarak Tempuh Rumah (BENEFIT)</p>
                  </div>
                  <div class="my-auto col-sm-9">
                    <p><?php if ($d['jarak_tempuh_rumah'] === 1) {
                            echo 'Kurang 5 Km';
                          } else if ($d['jarak_tempuh_rumah'] === 2) {
                            echo 'Lebih dari 5 Km - 10 Km';
                          } else if ($d['jarak_tempuh_rumah'] === 3) {
                            echo 'Lebih dari 10 Km - 15 Km';
                          } else {
                            echo 'Lebih dari 15 Km';
                          } ?></p>
                  </div>
                </div>
                <div class="row">
                  <div class="my-auto col-sm-2">
                    <p>Penghasilan Orang Tua (COST)</p>
                  </div>
                  <div class="my-auto col-sm-9">
                    <p><?php if ($d['penghasilan'] === 1) {
                            echo 'Lebih dari 2.000.000';
                          } else if ($d['penghasilan'] === 2) {
                            echo 'Lebih dari 1.000.000 - 2.000.000';
                          } else if ($d['penghasilan'] === 3) {
                            echo 'Lebih dari 500.000 - 1.000.000';
                          } else {
                            echo 'Kurang dari 500.000';
                          } ?></p>
                  </div>
                </div>
                <div class="row">
                  <div class="my-auto col-sm-2">
                    <p>Kehadiran Siswa (BENEFIT)</p>
                  </div>
                  <div class="my-auto col-sm-9">
                    <p><?php if ($d['kehadiran'] === 1) {
                            echo 'Kurang Dari 60 %';
                          } else if ($d['kehadiran'] === 2) {
                            echo 'Lebih dari 60% - 70%';
                          } else if ($d['kehadiran'] === 3) {
                            echo 'Lebih dari 70% - 80%';
                          } else {
                            echo 'Lebih dari 80%';
                          } ?></p>
                  </div>
                </div>
                <div class="row">
                  <div class="my-auto col-sm-2">
                    <p>Tanggal Bergabung</p>
                  </div>
                  <div class="my-auto col-sm-9">
                    <p><?= $d['createdDate'] ?></p>
                  </div>
                </div>
              <?php } ?>

              <a href="<?= base_url('List_Siswa') ?>" class="btn btn-danger btn-icon-split">
                <span class="icon text-white-50">
                  <i class="fas fa-reply"></i>
                </span>
                <span class="text">Kembali</span>
              </a>
              </div>
          </div>
          <!-- /.card -->
      </form>
    </div>
    <!-- /.container-fluid -->

  </div>
  <!-- End of Main Content -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->