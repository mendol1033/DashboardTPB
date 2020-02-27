<!-- <div class="modal fade" id="modal_lapkeu" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="form" novalidate="true">
					<div class="form-group">
						<label class=" col-md-3 control-label">Nama Toko</label>
						<div class="col-md-9">
							<input type="text" name="nama" class="form-control" list="namaToko">
							<datalist class="col-md-12" id="namaToko" style="width: 100%">

							</datalist>
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">Alamat</label>
						<div class="col-md-9">
							<input type="text" name="alamat" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">Pemilik</label>
						<div class="col-md-9">
							<input type="text" name="pemilik" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">No Telepon</label>
						<div class="col-md-9">
							<input type="text" name="telepon" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">No Handphone</label>
						<div class="col-md-9">
							<input type="text" name="handphone" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label('Provinsi', 'Provinsi', 'class = "col-md-3 control-label" id="labelProvinsi"'); ?>
						<div class="col-md-9">
							<select id="Provinsi" name="provinsi" class="form-control select2"></select>
							<span class="help-blok"></span>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label('Kota', 'Kota', 'class = "col-md-3 control-label" id="labelKota"'); ?>
						<div class="col-md-9">
							<select id="Kota" name="kota" class="form-control select2"></select>
							<span class="help-blok"></span>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label('Kecamatan', 'Kecamatan', 'class = "col-md-3 control-label" id="labelKecamatan"'); ?>
						<div class="col-md-9">
							<select id="Kecamatan", name="kecamatan" class="form-control select2"></select>
							<span class="help-blok"></span>
						</div>
					</div>
					<div class="form-group">
						<?php echo form_label('Kelurahan', 'Kelurahan', 'class = "col-md-3 control-label" id="labelKelurahan"'); ?>
						<div class="col-md-9">
							<select id="Kelurahan" name="kelurahan" class="form-control select2"></select>
							<span class="help-blok"></span>
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">Koordinat</label>
						<div class="col-md-9">
							<input type="text" name="koordinat" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">Surveyor</label>
						<div class="col-md-5">
							<input type="text" name="surveyor" class="form-control" list="surveyor">
							<datalist class="col-md-12" id="surveyor" style="width: 100%">

							</datalist>
						</div>
						<div class="col-md-4">
							<input type="text" name="nip" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">Tanggal Kunjungan</label>
						<div class="col-md-9">
							<input type="text" name="tanggal" class="form-control">
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" id="tutup" class="btn btn-default" data-dismiss="modal">Tutup</button>
				<button type="button" id="simpan" class="btn btn-primary" onclick="save()">Simpan</button>
			</div>
		</div>
	</div>
</div> -->


<div class="modal fade" id="modalSubkon" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-6 col-lg-6">
						<table id="dataSurat" class="table table-bordered table-striped table-hover table-responsive">
							<thead>
								<th colspan="2" style="text-align: center;"><strong>DATA SURAT PERSETUJUAN</strong></th>
							</thead>
							<tbody></tbody>
						</table>
					</div>
					<div class="col-md-6 col-lg-6">
						<table id="dataPenerima" class="table table-bordered table-striped table-hover table-responsive">
							<thead>
								<th colspan="2" style="text-align: center;"><strong>DATA PENERIMA</strong></th>
							</thead>
							<tbody></tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-lg-12">
						<table id="dataBarang" class="table table-bordered table-striped table-hover table-responsive">
							<thead>
								<tr>
									<th colspan="10" style="text-align: center;">DATA BARANG YANG DISUBKONTRAKKAN</th>
								</tr>
								<tr>
									<th rowspan="2" style="text-align: center; vertical-align: middle;">No</th>
									<th colspan="4" style="text-align: center; vertical-align: middle;">Dokumen Asal</th>
									<th rowspan="2" style="text-align: center; vertical-align: middle;">HS CODE</th>
									<th rowspan="2" style="text-align: center; vertical-align: middle;">Kode Barang</th>
									<th rowspan="2" style="text-align: center; vertical-align: middle;">Uraian Barang</th>
									<th rowspan="2" style="text-align: center; vertical-align: middle;">Jumlah</th>
									<th rowspan="2" style="text-align: center; vertical-align: middle;">CIF</th>
								</tr>
								<tr>
									<th style="text-align: center; vertical-align: middle;">Kode</th>
									<th style="text-align: center; vertical-align: middle;">Nomor</th>
									<th style="text-align: center; vertical-align: middle;">Tanggal</th>
									<th style="text-align: center; vertical-align: middle;">Negara</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-lg-6">
						<table id="dataHasil" class="table table-bordered table-striped table-hover table-responsive">
							<thead>
								<tr>
									<th colspan="6" style="text-align: center;">DATA BARANG YANG DIHASILKAN</th>
								</tr>
								<tr>
									<th style="text-align: center; vertical-align: middle;">No</th>
									<th style="text-align: center; vertical-align: middle;">HS CODE</th>
									<th style="text-align: center; vertical-align: middle;">Kode Barang</th>
									<th style="text-align: center; vertical-align: middle;">Uraian Barang</th>
									<th style="text-align: center; vertical-align: middle;">Jumlah</th>
									<th style="text-align: center; vertical-align: middle;">CIF</th>
								</tr>
							</thead>
							<tbody>
								
							</tbody>
						</table>
					</div>
					<div class="col-md-6 col-lg-6">
						<table id="dataSisa" class="table table-bordered table-striped table-hover table-responsive">
							<thead>
								<tr>
									<th colspan="6" style="text-align: center;">DATA BARANG YANG SISA</th>
								</tr>
								<tr>
									<th style="text-align: center; vertical-align: middle;">No</th>
									<th style="text-align: center; vertical-align: middle;">Kode Barang</th>
									<th style="text-align: center; vertical-align: middle;">Uraian Barang</th>
									<th style="text-align: center; vertical-align: middle;">Jumlah</th>
								</tr>
							</thead>
							<tbody>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="tutup" class="btn btn-default" data-dismiss="modal">Tutup</button>
			</div>
		</div>
	</div>
</div>

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

<div class="modal fade" id="modal" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<div class="col-md-12">
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
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="simpan" class="btn btn-primary pull-right" onclick="save()" style="margin-left: 10px;">Simpan</button>
				<button type="button" id="tutup" class="btn btn-default" data-dismiss="modal">Tutup</button>
			</div>
		</div>
	</div>
</div>