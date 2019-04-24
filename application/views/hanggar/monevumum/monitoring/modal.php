<div class="modal fade" id="modalPetugas" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog" role="dokumen">
		<div class="modal-content">
			<div class="modal-header">
				<button id="btn_close" type="button" class="close" onclick="closeModal()">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<table class="table table-bordered table-hover table-responsive" id="tableHanggar">
							<thead>
								<th>No</th>
								<th>Nama Pegawai</th>
								<th>Pangkat</th>
								<th>Jabatan</th>
								<th>Action</th>
							</thead>
							<tfoot>
								<th>No</th>
								<th>Nama Pegawai</th>
								<th>Pangkat</th>
								<th>Jabatan</th>
								<th>Action</th>
							</tfoot>
						</table>
					</div>
				</div>
				<div class="row sr-only" id="detailPegawai">
					<div class="col-md-12 col-sm-12">
						<form class="form-horizontal" id="formPegawai">
							<div class="form-group">
								<label class="col-sm-3 col-md-3 control-label">NIP Pegawai</label>
								<div class="col-sm-9 col-md-9">
									<input type="text" name="NIP" class="form-control" disabled="disabled">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 col-md-3 control-label">Nama Pegawai</label>
								<div class="col-sm-9 col-md-9">
									<input type="text" name="nama" class="form-control" disabled="disabled">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 col-md-3 control-label">Pangkat</label>
								<div class="col-sm-9 col-md-9">
									<input type="text" name="pangkat" class="form-control" disabled="disabled">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 col-md-3 control-label">Unit</label>
								<div class="col-sm-9 col-md-9">
									<input type="text" name="unit" class="form-control" disabled="disabled">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 col-md-3 control-label">Jabatan</label>
								<div class="col-sm-9 col-md-9">
									<input type="text" name="jabatan" class="form-control" disabled="disabled">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="batal" class="btn btn-default" onclick="closeModal()">TUTUP</button>
			</div>
		</div>
	</div>
</div>