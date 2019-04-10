<section class="form">
	<div class="container-fluid">
		<form class="form-horizontal" id="formFilter">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="form-group">
						<label class="col-lg-4 col-md-4 col-sm-4 control-label">Nama Perusahaan</label>
						<div class="col-lg-8 col-md-8 col-sm-8">
							<select class="form-control select2" name="filterPerusahaan" id="filterPerusahaan">

							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="form-group">
						<label class="col-lg-4 col-md-4 col-sm-4 control-label">Tanggal</label>
						<div class="col-lg-8 col-md-8 col-sm-8">
							<div class="row">
								<div class="col-lg-5 col-md-5 col-sm-5">
									<input class="form-control" type="text" name="tglAwal" id="tglAwal">
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 ">
									<p style="height: 100%; text-align: center; vertical-align: middle;"><b>s/d</b></p>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-5">
									<input class="form-control" type="text" name="tglAkhir" id="tglAkhir">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="form-group">
						<label class="col-lg-4 col-md-4 col-sm-4 control-label">Log Book</label>
						<div class="col-lg-8 col-md-8 col-sm-8">
							<select class="form-control select2" name="jnsLogbook" id="jnsLogbook" placeholder="Pilih Jenis Logbook">
								<option value="">Pilih Jenis Logbook</option>
								<option value="1">CCTV</option>
								<option value="2">IT Inventory</option>
								<option value="3">E Seal</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</form>
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class=" form-group">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-4 pull-right">
							<button class="btn btn-info pull-right" type="button" value="filter" style="" onclick="ajax_reload()">FILTER</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<button type="button" class="btn btn-primary pull-right " id="tambah" style="">TAMBAH</button>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="box box-default">
					<div class="box-body">
						<table id="dataTable" class="table table-striped table-responsive table-hover">
							<thead>
								<tr>
									<th style="width: 5%;"><p class="text-justify"> No </p></th>
									<th style="width: 10%;"><p class="text-justify"> Kode </p></th>
									<th style="width: 20%;"><p class="text-justify"> Nama Perusahaan | Fasilitas | SKEP </p></th>
									<th style="width: 10%;"><p class="text-justify">Tanggal Laporan</p></th>
									<th style="width: 50%;"><p class="text-justify">Isi Laporan</p></th>
									<th style="width: 5%;"><p class="text-justify"> Action </p></th>
								</tr>
							</thead>
							<tbody></tbody>
							<tfoot>
								<tr>
									<th style="width: 5%;"><p class="text-justify"> No </p></th>
									<th style="width: 10%;"><p class="text-justify"> Kode </p></th>
									<th style="width: 20%;"><p class="text-justify"> Nama Perusahaan | Fasilitas | SKEP </p></th>
									<th style="width: 10%;"><p class="text-justify" >Tanggal Laporan</p></th>
									<th style="width: 50%;"><p class="text-justify">Isi Laporan</p></th>
									<th style="width: 5%;"><p class="text-justify"> Action </p></th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<?php if (isset($modal)) {$this->load->view($modal);}?>
<?php if (isset($js)) {$this->load->view($js);}?>