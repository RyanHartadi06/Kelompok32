<!-- Page Wrapper -->
<div id="wrapper">

  <!-- Sidebar -->
  <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url("admin") ?>">
      <div class="sidebar-brand-icon rotate-n-15">
        <i class="fas fa-laugh-wink"></i>
      </div>
      <div class="sidebar-brand-text mx-3">Simple Additive Weighting</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("admin") ?>">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dashboard</span></a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Heading -->

    <div class="sidebar-heading">
      Bobot
    </div>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("Bobot") ?>">
        <i class="fas fa-fw fa-table"></i>
        <span>Input Bobot Sistem</span></a>
    </li>
    <div class="sidebar-heading">
      Data Buah Naga
    </div>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("Buah") ?>">
        <i class="fas fa-fw fa-user"></i>
        <span>Data Buah Naga</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("Input") ?>">
        <i class="fas fa-fw fa-plus"></i>
        <span>Input Data Buah Naga</span></a>
    </li>
    <!-- <div class="sidebar-heading">
      Laporan
    </div>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("Ranking") ?>">
        <i class="fas fa-fw fa-trophy"></i>
        <span>Ranking</span></a>
    </li> -->
    <!-- <li class="nav-item">
      <a class="nav-link" href="">
        <i class="fas fa-fw fa-table"></i>
        <span>Report Beasiswa</span></a>
    </li> -->

    <!-- <div class="sidebar-heading">
      Sistem
    </div> -->
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url('auth/logout') ?>" data-toggle="modal" data-target="#logoutModal">
        <i class="fas fa-sign-out-alt"></i>
        <span>Logout</span></a>
    </li>



    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
      <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

  </ul>
  <!-- End of Sidebar -->