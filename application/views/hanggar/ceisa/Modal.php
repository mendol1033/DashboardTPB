<div class="modal fade" id="modalFormCeisa" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="mainFormCeisa" novalidate="true">
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
							<label class="control-label" id="labelJnsKendala">Jenis Kendala</label>
						</div>
						<div class="col-md-9">
							<?php echo form_dropdown('kendala', $options['kendala'],'', 'class="form-control select2"'); ?>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-3">
							<label class="control-label" id="labelDetailKendala">Detail Kendala</label>
						</div>
						<div class="col-md-9">
							<textarea class="form-control" name="detailKendala" id="detailKendala" rows="3"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-3">
							<label class="control-label" id="labelWaktu">Waktu</label>
						</div>
						<div class="col-md-4">
							<div class="input-group">
								<input class="form-control timepicker" type="text" name="wktMulai" id="wktMulai">
								<div class="input-group-addon">
									<i class="fa fa-clock-o"></i>
								</div>
							</div>
						</div>
						<div class="col-md-1">
							<label class="control-label">s/d</label>
						</div>
						<div class="col-md-4">
							<div class="input-group">
								<input class="form-control timepicker" type="text" name="wktSelesai" id="wktSelesai">
								<div class="input-group-addon">
									<i class="fa fa-clock-o"></i>
								</div>
							</div>
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