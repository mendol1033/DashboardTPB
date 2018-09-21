<div class="modal fade" id="modalFormDokKeluar" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="mainFormDokKeluar" novalidate="true">
					<input type="hidden" name="NipUser" value="<?php echo $this->session->userdata('NipUser');?>">
					<div class="form-group">
						<div class="col-md-3">
							<label class="control-label" id="labelPerusahaan">Nama Perusahaan</label>
						</div>
						<div class="col-md-9">
							<select class="form-control select2Nama" id="NamaPerusahaan" name="NamaPerusahaan"></select>
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-3">
							<label class="control-label" id="labelJnsDokumen">Jenis Dokumen</label>
						</div>
						<div class="col-md-9">
							<?php echo form_dropdown('JnsDokumen', $options['jnsDok'],'', 'class="form-control select2"'); ?>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-3">
							<label class="control-label" id="labelDokumen">No dan Tgl Dok</label>
						</div>
						<div class="col-md-5">
							<input class="form-control" type="text" name="NoDokumen" id="NoDokumen">
						</div>
						<div class="col-md-4">
							<input class="form-control" type="text" name="TglDokumen" id="TglDokumen">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-3">
							<label class="control-label" id="labelDokPembatalan">No dan Tgl Permohonan</label>
						</div>
						<div class="col-md-5">
							<input class="form-control" type="text" name="dokPembatalan" id="dokPembatalan">
						</div>
						<div class="col-md-4">
							<input class="form-control" type="text" name="tglPembatalan" id="tglPembatalan">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-3">
							<label class="control-label" id="labelAlasan">Alasan</label>
						</div>
						<div class="col-md-9">
							<textarea class="form-control" rows="2" name="Alasan" id="Alasan"></textarea>
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