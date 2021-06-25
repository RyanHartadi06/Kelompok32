<!-- Begin Page Content -->
<div class="container-fluid">

  <div class="card card-waves mb-4 mt-5">
    <div class="card-body p-5">
      <div class="row align-items-center justify-content-between">
        <div class="col">
          <h2 class="text-primary">Selamat Datang Di Halaman Admin</h2>
          <p class="text-gray-700">Aplikasi Sistem Pendukung Keputusan Kualitas Buah Naga Putih Dengan Metode Simple Additive Weighting (SAW) </p>
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
                      <th>Nomor</th>
                      <th>Bobot</th>
                      <th>Nilai</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>
                        Berat
                      </td>
                      <td>
                        <?= $bobot->berat ?></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>
                        Panjang
                      </td>
                      <td>
                        <?= $bobot->panjang ?></td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>
                        Diameter
                      </td>
                      <td>
                        <?= $bobot->diameter ?></td>
                    </tr>
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