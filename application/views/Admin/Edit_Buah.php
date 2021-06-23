<div class="container-fluid">

	<h1 class="h3 mb-2 text-gray-800">Edit Penerima Beasiswa</h1>
	<form action="<?= base_url('List_Siswa/postedit/' . $detail->id_siswa) ?>" method="post" enctype="multipart/form-data">

		<div class="card shadow mb-4">
			<div class="card-body">
				<?= $this->session->flashdata('pesan') ?>
				<div class="row">
					<div class="col">
						<p>Nama Siswa</p>
						<div class="input-group">
							<input type="text" id="nama_siswa" name="nama_siswa" class="form-control border-dark small mb-3" placeholder="Masukkan Nama Siswa" aria-describedby="basic-addon2" value="<?= $detail->nama_siswa ?>">
						</div>
						<?= form_error('nama_siswa', '<small class="text-danger">', '</small>') ?>
					</div>
				</div>

				<div class="row">
					<div class="col mb-3">
						<p>Jenis Kelamin</p>
						<div class="input-group">
							<select class="form-control" name="jk" id="jk" required>
								<?php if ($detail->jenis_kelamin == 1) { ?>
									<option value="1"> L </option>
									<option value="2"> P </option>
								<?php } else { ?>
									<option value="2"> P </option>
									<option value="1"> L </option>
								<?php } ?>
							</select>
						</div>

					</div>
				</div>

				<div class="row">
					<div class="col">
						<p>Tahun Masuk</p>
						<div class="input-group">
							<input type="text" id="tahun_masuk" name="tahun_masuk" class="form-control border-dark small mb-3" placeholder="Masukkan Tahun Masuk" value="<?= $detail->tahun_masuk ?>" aria-describedby="basic-addon2">
						</div>
						<?= form_error('tahun_masuk', '<small class="text-danger">', '</small>') ?>
					</div>
				</div>

				<div class="row">
					<div class="col">
						<p>Kelas</p>
						<div class="input-group mb-3">
							<select class="form-control" name="kelas" id="kelas" required>
								<option value="<?= $detail->id ?>"><?= $detail->kelas ?></option>
								<?php foreach ($kelas as $k) { ?>
									<option value="<?= $k['id'] ?>"><?= $k['kelas'] ?></option>
								<?php } ?>
							</select>
						</div>
						<?= form_error('kelas', '<small class="text-danger">', '</small>') ?>
					</div>
				</div>

				<div class="row">
					<div class="col">
						<p>Tanggal Lahir</p>
						<div class="input-group">
							<input class="form-control border-dark small mb-3" type="date" id="singleDatePicker" placeholder="Masukkan Tanggal Lahir" name="singleDatePicker" value="<?= $detail->tanggal_lahir ?>">
						</div>

					</div>
				</div>
				<div class="row">
					<div class="col mb-3">
						<p>Kehadiran Siswa</p>
						<div class="input-group">
							<select class="form-control" name="kehadiran" id="kehadiran" required>
								<?php if ($detail->kehadiran == 1) { ?>

									<option value="1">
										< 50 %</option> <option value="4"> > 80%
									</option>
									<option value="3"> > 70% - 80%</option>
									<option value="2"> > 60% - 70%</option>
								<?php } else if ($detail->kehadiran == 2) { ?>

									<option value="2"> > 60% - 70%</option>
									<option value="4"> > 80%</option>
									<option value="3"> > 70% - 80%</option>
									<option value="1">
										< 50 %</option> <?php } else if ($detail->kehadiran == 3) { ?> <option value="3"> > 70% - 80%
									</option>
									<option value="4"> > 80%</option>
									<option value="2"> > 60% - 70%</option>
									<option value="1">
										< 50 %</option> <?php } else if ($detail->kehadiran == 4) { ?> <option value="4"> > 80%
									</option>
									<option value="3"> > 70% - 80%</option>
									<option value="2"> > 60% - 70%</option>
									<option value="1">
										< 50 %</option> <?php } ?> </select> </div> </div> </div> <div class="row">
											<div class="col mb-3">
												<p>Jarak Tempuh Rumah</p>
												<div class="input-group">
													<select class="form-control" name="jarak_tempuh" id="jarak_tempuh" required>
														<?php if ($detail->jarak_tempuh_rumah == 1) { ?>
															<option value="1">
																<= 5 Km</option> <option value="2">> 5 Km - 10 Km
															</option>
															<option value="3"> > 10 Km - 15 Km</option>
															<option value="4"> > 15 Km</option>
														<?php } else if ($detail->jarak_tempuh_rumah == 2) { ?>
															<option value="2"> > 5 Km - 10 Km
															</option>
															<option value="1">
																<= 5 Km</option> <option value="3"> > 10 Km - 15 Km
															</option>
															<option value="4"> > 15 Km</option>
														<?php } else if ($detail->jarak_tempuh_rumah == 3) { ?>
															<option value="3"> > 10 Km - 15 Km</option>
															<option value="1">
																<= 5 Km</option> <option value="2"> > 5 Km - 10 Km
															</option>

															<option value="4"> > 15 Km</option>
														<?php } else if ($detail->jarak_tempuh_rumah == 4) { ?>
															<option value="4"> > 15 Km</option>
															<option value="1">
																<= 5 Km</option> <option value="2"> > 5 Km - 10 Km
															</option>
															<option value="3"> > 10 Km - 15 Km</option>
														<?php } ?>
													</select>
												</div>
											</div>
						</div>
						<div class="row">
							<div class="col mb-3">
								<p>Penghasilan Orang Tua</p>
								<div class="input-group">
									<select class="form-control" name="penghasilan" id="penghasilan" required>
										<?php if ($detail->penghasilan == 1) { ?>

											<option value="1"> > 2.000.000</option>
											<option value="4">
												<= 500.000</option> <option value="3"> > 500.000 - 1.000.000
											</option>
											<option value="2"> > 1.000.000 - 2.000.000</option>
										<?php } else if ($detail->penghasilan == 2) { ?>

											<option value="2"> > 1.000.000 - 2.000.000</option>
											<option value="4">
												<= 500.000</option> <option value="3"> > 500.000 - 1.000.000
											</option>

											<option value="1"> > 2.000.000</option>
										<?php } else if ($detail->penghasilan == 3) { ?>
											<option value="3"> > 500.000 - 1.000.000
											</option>
											<option value="4">
												<= 500.000</option> <option value="2"> > 1.000.000 - 2.000.000
											</option>
											<option value="1"> > 2.000.000</option>
										<?php } else if ($detail->penghasilan == 4) { ?>
											<option value="4">
												<= 500.000</option> <option value="3"> > 500.000 - 1.000.000
											</option>
											<option value="2"> > 1.000.000 - 2.000.000</option>
											<option value="1"> > 2.000.000</option>
										<?php } ?>

									</select>
								</div>
								<?= form_error('penghasilan', '<small class="text-danger">', '</small>') ?>
							</div>
						</div>

						<button type="submit" class="btn btn-success btn-icon-split">
							<span class="icon text-white-50">
								<i class="fas fa-check"></i>
							</span>
							<span class="text">Update Data</span>
						</button>
						<a href="<?= base_url('Admin') ?>" class="btn btn-danger btn-icon-split">
							<span class="icon text-white-50">
								<i class="fas fa-reply"></i>
							</span>
							<span class="text">Kembali</span>
						</a>
					</div>
				</div>
				<!-- /.card -->

			</div>

			<!-- /.container-fluid -->

	</form>