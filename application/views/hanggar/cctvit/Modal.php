<div class="modal fade" id="modalFormCCTVIT" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="mainFormCCTVIT" novalidate="true">
					<input type="hidden" name="NipUser" value="<?php echo $this->session->userdata('NipUser');?>">
					<div class="form-group">
						<div class="col-md-4">
							<label class="control-label" id="labelPerusahaan">Nama Perusahaan</label>
						</div>
						<div class="col-md-8">
							<select class="form-control select2Nama" id="NamaPerusahaan" name="NamaPerusahaan"></select>
							<span class="help-block"></span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-4">
							<label class="control-label" id="labelDokumen">Tanggal Laporan</label>
						</div>
						<div class="col-md-8">
							<input class="form-control" type="text" name="tanggal" id="tanggal" value="<?php echo date('Y-m-d')?>">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-4">
							<label class="control-label" id="labelDokumen">Status CCTV</label>
						</div>
						<div class="col-md-4">
							<div class="checkbox">
								<label>
									<input class="minimal" type="checkbox" name="activeCCTV" id="activeCCTV" value="Y">
									<span>&nbsp;Aktif</span>
								</label>
							</div>
						</div>
						<div class="col-md-4">
							<div class="checkbox">
								<label>
									<input class="minimal" type="checkbox" name="realtimeCCTV" id="realtimeCCTV" value="Y">
									<span>&nbsp;Realtime</span>
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-4">
							<label class="control-label" id="labelDokumen">Status IT Inventory</label>
						</div>
						<div class="col-md-4">
							<div class="checkbox">
								<label>
									<input class="minimal" type="checkbox" name="activeIT" id="activeIT" value="Y">
									<span>&nbsp;Aktif</span>
								</label>
							</div>
						</div>
						<div class="col-md-4">
							<div class="checkbox">
								<label>
									<input class="minimal" type="checkbox" name="realtimeIT" id="realtimeIT" value="Y">
									<span>&nbsp;Realtime</span>
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-4">
							<label class="control-label" id="labelKeterangan">Keterangan</label>
						</div>
						<div class="col-md-8">
							<textarea class="form-control noresize" id="Keterangan" name="Keterangan" rows="3" ></textarea>
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