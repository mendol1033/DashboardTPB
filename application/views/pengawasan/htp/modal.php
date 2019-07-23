<div class="modal fade" id="modal" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="formCCTV" novalidate="true">
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
</div>