<?php $attrib_label = array('class' => 'col-sm-3 control-label');?>
<?php $form = array(
	'NPWP' => array(
		'id' => 'NPWP',
		'name' => 'NPWP',
		'class' => 'form-control',
	),
	'NamaPerusahaan' => array(
		'id' => 'namatpb',
		'name' => 'namatpb',
		'class' => 'form-control',
	),
	'Telepon' => array(
		'id' => 'telepon',
		'name' => 'telepon',
		'class' => 'form-control',
	),
	'Fax' => array(
		'id' => 'fax',
		'name' => 'fax',
		'class' => 'form-control',
	),
	'Alamat' => array(
		'id' => 'alamat',
		'name' => 'alamat',
		'class' => 'form-control',
		'rows' => '2',
	),
	'Provinsi' => array(
		'id' => 'provinsi',
		'name' => 'provinsi',
		'class' => 'form-control',
	),
	'Kota' => array(
		'id' => 'kota',
		'name' => 'kota',
		'class' => 'form-control',
	),
	'Kecamatan' => array(
		'id' => 'kecamatan',
		'name' => 'kecamatan',
		'class' => 'form-control',
	),
	'Kelurahan' => array(
		'id' => 'kelurahan',
		'name' => 'kelurahan',
		'class' => 'form-control',
	),
	'KodePos' => array(
		'id' => 'kodepos',
		'name' => 'kodepos',
		'class' => 'form-control',
	),
	'IzinKelola' => array(
		'id' => 'izin',
		'name' => 'izin',
		'class' => 'form-control',
	),
	'Latitude' => array(
		'id' => 'latitude',
		'name' => 'latitude',
		'class' => 'form-control',
	),
	'Longitude' => array(
		'id' => 'longitude',
		'name' => 'longitude',
		'class' => 'form-control',
	),
);
?>
<div class="form">
	<div class="container-fluid">
		<div class="nav-tabs-custom">
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="#tabUmum" data-toggle="tab" aria-expdanded="true">DATA UMUM PERUSAHAAN</a>
				</li>
				<li>
					<a href="#tabSkep" data-toggle="tab" aria-expanded="true">DATA SKEP FASILITAS</a>
				</li>
				<li>
					<a href="#tabOwner" data-toggle="tab" aria-expanded="true">DATA PENANGGUNG JAWAB</a>
				</li>
				<li>
					<a href="#tabKaryawan" data-toggle="tab" aria-expanded="true">DATA KARYAWAN</a>
				</li>
				<li>
					<a href="#tabBarang" data-toggle="tab" aria-expanded="true">DATA BARANG JADI/DITIMBUN</a>
				</li>
				<li>
					<a href="#tabRelasi" data-toggle="tab" aria-expanded="true">DATA RELASI PERUSAHAAN</a>
				</li>
				<li>
					<a href="#tabLabkeu" data-toggle="tab" aria-expanded="true">DATA LAPORAN KEUANGAN</a>
				</li>
			</ul>
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="tabUmum">
					<div class="row">
						<form class="form-horizontal" id="form" novalidate="true">
							<div class="form-group">
								<?php echo form_label('NPWP', 'NPWP', 'class = "col-sm-3 control-label" id="labelNPWP"'); ?>
								<div class="col-sm-9">
									<?php echo form_input($form['NPWP']); ?>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Nama Perusahaan', 'NmPerusahaan', 'class = "col-sm-3 control-label" id="labelNmPerusahaan"'); ?>
								<div class="col-sm-9">
									<?php echo form_input($form['NamaPerusahaan']); ?>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Telepon', 'Telepon', 'class = "col-sm-3 control-label" id="labelTelepon"'); ?>
								<div class="col-sm-9">
									<?php echo form_input($form['Telepon']); ?>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Fax', 'Fax', 'class = "col-sm-3 control-label" id="labelFax"'); ?>
								<div class="col-sm-9">
									<?php echo form_input($form['Fax']); ?>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Alamat', 'Alamat', 'class = "col-sm-3 control-label" id="labelAlamat"'); ?>
								<div class="col-sm-9">
									<?php echo form_textarea($form['Alamat']); ?>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Provinsi', 'Provinsi', 'class = "col-sm-3 control-label" id="labelProvinsi"'); ?>
								<div class="col-sm-9">
									<select id="Provinsi" name="provinsi" class="form-control select2"></select>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Kota', 'Kota', 'class = "col-sm-3 control-label" id="labelKota"'); ?>
								<div class="col-sm-9">
									<select id="Kota" name="kota" class="form-control select2"></select>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Kecamatan', 'Kecamatan', 'class = "col-sm-3 control-label" id="labelKecamatan"'); ?>
								<div class="col-sm-9">
									<select id="Kecamatan", name="kecamatan" class="form-control select2"></select>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Kelurahan', 'Kelurahan', 'class = "col-sm-3 control-label" id="labelKelurahan"'); ?>
								<div class="col-sm-9">
									<select id="Kelurahan" name="kelurahan" class="form-control select2"></select>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Kode Pos', 'KodePos', 'class = "col-sm-3 control-label" id="labelKodePos"'); ?>
								<div class="col-sm-9">
									<?php echo form_input($form['KodePos']); ?>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Jenis TPB', 'JenisTPB', 'class = "col-sm-3 control-label" id="labelJenisTPB"'); ?>
								<div class="col-sm-9">
									<?php echo form_dropdown('JenisTPB', $option1, '', 'class="form-control select2" id="JenisTPB"'); ?>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Lokasi TPB', 'LokasiTPB', 'class = "col-sm-3 control-label" id="labelLokasiTPB"'); ?>
								<div class="col-sm-9">
									<?php echo form_dropdown('LokasiTPB', $option2, '', 'class="form-control select2" id="LokasiTPB"'); ?>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('No Skep Izin TPB', 'IzinKelola', 'class = "col-sm-3 control-label" id="labelIzinKelola"'); ?>
								<div class="col-sm-9">
									<?php echo form_input($form['IzinKelola']); ?>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Latitude', 'Latitude', 'class = "col-sm-3 control-label" id="labelLatitude"'); ?>
								<div class="col-sm-9">
									<?php echo form_input($form['Latitude']); ?>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Longitude', 'Longitude', 'class = "col-sm-3 control-label" id="labelLongitude"'); ?>
								<div class="col-sm-9">
									<?php echo form_input($form['Longitude']); ?>
									<span class="help-blok"></span>
								</div>
							</div>
							<div class="form-group">
								<?php echo form_label('Status', 'Status', 'class = "col-sm-3 control-label" id="labelStatus"'); ?>
								<div class="col-sm-9">
									<select name="status" id="status" class="form-control select2">
										<option value="">Pilih Status Perusahaan</option>
										<option value="Y">Aktif</option>
										<option value="N">Tidak Aktif</option>
									</select>
								</div>
							</div>
						</form>
					</div>
					<div class="row">
						<button type="button" id="simpan" class="btn btn-primary pull-right" onclick="save()">Simpan</button>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="tabBarang">
					<div class="row formBarang">
						<div class="col-md-12 col-sm-12">
							<form class="form-horizontal" id="formBarang">
								<div class="form-group">
									<label class="col-md-3 col-sm-3 control-label">NAMA PRODUK</label>
									<div class="col-md-9 col-sm-9">
										<input type="text" name="nama" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 col-sm-3 control-label">MERK</label>
									<div class="col-md-9 col-sm-9">
										<input class="form-control" type="input" name="merk">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 col-sm-3 control-label">HS CODE</label>
									<div class="col-md-9 col-sm-9">
										<input class="form-control" type="input" name="hs">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 col-sm-3 control-label">FOTO</label>
									<div class="col-md-9 col-sm-9">
										<input class="form-control" type="file" name="foto">
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="row formBarang">
						<div class="col-md-12 col-sm-12">
							<button type="button" id="simpan" class="btn btn-primary pull-right" onclick="addBarang()" style="margin-bottom: 10px;">TAMBAH</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<table class="table table-bordered table-hover table-responsive" id="tableBarang">
								<thead>
									<th style="width: 5%;" class="text-center">No</th>
									<th style="width: 20%;" class="text-center">Nama Produk</th>
									<th style="width: 10%;" class="text-center">Merk</th>
									<th style="width: 10%;" class="text-center">HS CODE</th>
									<th class="text-center">Foto</th>
									<th style="width: 8%;" class="text-center">Action</th>
								</thead>
								<tfoot>
									<th style="width: 5%;" class="text-center">No</th>
									<th style="width: 20%;" class="text-center">Nama Produk</th>
									<th style="width: 10%;" class="text-center">Merk</th>
									<th style="width: 10%;" class="text-center">HS CODE</th>
									<th class="text-center">Foto</th>
									<th style="width: 8%;" class="text-center">Action</th>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="tabSkep">
				</div>
				<div role="tabpanel" class="tab-pane" id="tabOwner">
				</div>
				<div role="tabpanel" class="tab-pane" id="tabKaryawan">
				</div>
				<div role="tabpanel" class="tab-pane" id="tabRelasi">
				</div>
				<div role="tabpanel" class="tab-pane" id="tabLabkeu">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<button type="button" class="btn btn-primary pull-right" onclick="tambahLapkeu()" style="margin-bottom: 10px;">TAMBAH</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<table class="table table-bordered table-hover table-responsive" id="tableLapkeu">
								<thead>
									<th style="width: 5%;" class="text-center">No</th>
									<th style="width: 20%;" class="text-center">Tahun Pajak</th>
									<th style="width: 10%;" class="text-center">Periode Pembukuan</th>
									<th style="width: 8%;" class="text-center">Detail</th>
									<th style="width: 8%;" class="text-center">Edit</th>
								</thead>
								<tfoot>
									<th style="width: 5%;" class="text-center">No</th>
									<th style="width: 20%;" class="text-center">Tahun Pajak</th>
									<th style="width: 10%;" class="text-center">Periode Pembukuan</th>
									<th style="width: 8%;" class="text-center">Detail</th>
									<th style="width: 8%;" class="text-center">Edit</th>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row"><button class="btn btn-default pull-right" onclick="load_page('perusahaan/tpb/','index/<?php echo $tpb ?>')">BACK</button></div>
	</div>
</div>

<?php if (isset($modal)) {$this->load->view($modal);}?>
<?php if (isset($js)) {$this->load->view($js);}?>