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
          <h1 class="h3 mb-2 text-gray-800">Data Latih Buah Naga</h1>

          <!-- Sub Topbar -->
          <div class="card shadow mb-4">
            <nav class="navbar navbar-expand card-header py-3">
            </nav>
            <div class="col mt-3">
              <?php echo $this->session->flashdata('pesan') ?>
            </div>

            <div class="card-body">
              <div class="col mb-3">
                <a href="<?= base_url('Input/proses') ?>" class="btn btn-primary">Proses Kmeans</a>
              </div>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama Buah</th>
                      <th>Berat</th>
                      <th>Panjang</th>
                      <th>Diameter</th>
                      <th style="width: 100px">Aksi</th>
                    </tr>
                  </thead>
                  <tbody id="target">
                    <?php
                    $no = 1;
                    foreach ($buah as $row) {
                      ?>
                      <tr>
                        <td><?= $no++ ?></td>
                        <td><?= $row['nama_buah'] ?></td>
                        <td><?= $row['berat'] ?></td>
                        <td><?= $row['panjang'] ?></td>
                        <td><?= $row['diameter'] ?></td>
                        <td>
                          <a href="<?php echo base_url("Buah/detail/" . $row['id_buah']); ?>" class="btn btn-sm btn-success btn-circle">
                            <i class="fas fa-plus"></i></a>
                          <!-- <a href="<?php echo base_url("Buah/edit/" . $row['id_buah']); ?>" class="btn btn-sm btn-primary btn-circle">
                            <i class="fas fa-pen"></i></a> -->
                          <a href="#" onclick="confirm_modal('<?= 'Buah/hapus/' . $row['id_buah'] ?>')" class="btn btn-sm btn-danger btn-circle" data-toggle="modal" data-target="#hapusModal">
                            <i class="fa fa-trash"></i>
                          </a>
                        </td>
                      </tr>
                    <?php } ?>
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