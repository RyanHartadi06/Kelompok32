<!-- Page Wrapper -->
<div id="wrapper">

  <!-- Sidebar -->
  <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url("admin") ?>">
      <div class="sidebar-brand-icon rotate-n-15">
        <i class="fas fa-laugh-wink"></i>
      </div>
      <div class="sidebar-brand-text mx-3"> K-Nearest Neighbor</div>
    </a>

    <div class="sidebar-heading">
      Dashboard
    </div>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("admin") ?>">
        <i class="fas fa-fw fa-user"></i>
        <span>Dashboard</span></a>
    </li>
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
      Basis Pengetahuan
    </div>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("Author") ?>">
        <i class="fas fa-fw fa-user"></i>
        <span>Author</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("BuahNagaPutih") ?>">
        <i class="fas fa-fw fa-user"></i>
        <span>Buah Naga Putih</span></a>
    </li>
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
      Data Latih Buah Naga
    </div>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("Buah") ?>">
        <i class="fas fa-fw fa-user"></i>
        <span>Data Latih Buah Naga</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("Input") ?>">
        <i class="fas fa-fw fa-plus"></i>
        <span>Input Data Latih</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url("Uji") ?>">
        <i class="fas fa-fw fa-plus"></i>
        <span>Input Data Uji </span></a>
    </li>
    <div class="sidebar-heading">
      Logout
    </div>
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