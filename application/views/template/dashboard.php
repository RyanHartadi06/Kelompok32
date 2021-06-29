<!-- Begin Page Content -->
<div class="container-fluid">

  <div class="card card-waves mb-4 mt-5">
    <div class="card-body p-5">
      <div class="row align-items-center justify-content-between">
        <div class="col">
          <h2 class="text-primary">Selamat Datang Di Halaman Admin</h2>
          <p class="text-gray-700">Aplikasi Sistem Pendukung Keputusan Kualitas Buah Naga Putih Dengan Metode K-Means </p>
          <a class="btn btn-primary p-3" href="#!">
            Get Started
            <i class="ml-1" data-feather="arrow-right"></i>
          </a>
        </div>
        <div class="col d-none d-lg-block mt-xxl-n4"><img class="img-fluid px-xl-4 mt-xxl-n5" src="<?= base_url('assets/img/statistics-pana.svg') ?>" /></div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-xxl-12 col-xl-12 col-md-12 col-lg-12">
      <!-- Tabbed dashboard card example-->
      <div class="card mb-4">
        <div class="card-header border-bottom">
          <!-- Dashboard card navigation-->
          <ul class="nav nav-tabs card-header-tabs" id="dashboardNav" role="tablist">
            <li class="nav-item mr-1"><a class="nav-link active" id="bobot-pill" href="#bobot" data-toggle="tab" role="tab" aria-controls="bobot" aria-selected="true">Range bobot (Benefit)</a></li>
          </ul>
        </div>
        <div class="card-body">
          <div class="tab-content" id="dashboardNavContent">
            <!-- Dashboard Tab Pane 1-->
            <div class="tab-pane fade show active" id="kehadiran" role="tabpanel" aria-labelledby="kehadiran-pill">
              <div class="datatable table-responsive">
                <table class="table table-bordered table-hover" id="dataTableActivity" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Berat</th>
                      <th>Panjang</th>
                      <th>Diameter<th>
                    </tr>
                  </thead>
                  <tbody id="tirgit">
                  <?php
                  $no = 1;
                  foreach ($centroid as $row) {
                   ?>
                   <tr>
                   <td><?= $no++ ?></td>
                   <td><?= $row['berat'] ?></td>
                   <td><?= $row['panjang'] ?></td>
                   <td><?= $row['diameter'] ?></td>
                   <!-- <td>
                          <a href="#url" class="btn btn-sm btn-success btn-circle">
                            <i class="fas fa-plus"></i></a>
                          <a href="#url" class="btn btn-sm btn-primary btn-circle">
                            <i class="fas fa-pen"></i></a>
                          <a href="#" onclick="confirm_modal('#url')" class="btn btn-sm btn-danger btn-circle" data-toggle="modal" data-target="#hapusModal">
                            <i class="fa fa-trash"></i>
                          </a>
                        </td> -->
                   </tr>
                   <?php } ?>
                  </tbody>
                </table>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->