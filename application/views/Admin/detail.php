<!DOCTYPE html>
<html lang="en">

<head>

  <!-- Head -->

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Detail Buah Naga</h1>

          <!-- Sub Topbar -->
          <div class="card shadow mb-4">
            <nav class="navbar navbar-expand card-header py-3">
            </nav>
            <div class="col mt-3">
              <?php echo $this->session->flashdata('pesan') ?>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                  </thead>
                  <tbody id="target">
                      <tr>
                <td>NAMA BUAH</td>
                <td><?= $buah['nama_buah']; ?></td>
              </tr>
              <tr>
                <td>BERAT</td>
                <td><?= $buah['berat']; ?></td>
              </tr>
              <tr>
                <td>PANJANG</td>
                <td><?= $buah['panjang']; ?></td>
              </tr>
              <tr>
                <td>Diameter</td>
                <td><?= $buah['diameter']; ?></td>
              </tr>
              <tr>
                <td>Nilai C1</td>
                <td><?= $buah['nilai_c1']; ?></td>
              </tr>
              <tr>
                <td>Nilai C2</td>
                <td><?= $buah['nilai_c2']; ?></td>
              </tr>
              <tr>
                <td>NIlai C3</td>
                <td><?= $buah['nilai_c3']; ?></td>
              </tr>
              <tr>
                <td>Nilai Terdekat</td>
                <td><?= $buah['jarak_terdekat']; ?></td>
              </tr>
              <tr>
                <td>Klasifikasi</td>
                <td><?= $buah['klasifikasi']; ?></td>
              </tr>
                  </tbody>
                </table>
                <div class="modal fade" id="hapusModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Apakah Anda yakinuntuk menghapus?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">×</span>
                        </button>
                      </div>
                      <div class="modal-body">Pilih "Hapus" untuk menghapus, pilih "Batal" untuk kembali ke Panel Admin.</div>
                      <div class="modal-footer">
                        <button class="btn btn-info" type="button" data-dismiss="modal">Batal</button>
                        <a id="delete_link" class="btn btn-danger" href="">Hapus</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div> <!-- End Card Body -->
          </div>
          <a href="<?= base_url('Uji') ?>" class="btn btn-danger btn-icon-split">
          <span class="icon text-white-50">
            <i class="fas fa-reply"></i>
          </span>
          <span class="text">Kembali</span>
        </a>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->


    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <script type="text/javascript">
    function confirm_modal(delete_url) {
      console.log(delete_url);
      document.getElementById('delete_link').setAttribute('href', delete_url);

      $('#hapusModal').modal('show', {
        backdrop: 'static'
      });
    }
  </script>


</body>

</html>