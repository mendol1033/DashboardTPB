<div class="modal fade" id="modal" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" style="widows: 100%; text-align: center;"></h4>
			</div>
			<div class="modal-body">
				<!-- <div class="text-center"> -->
					<!-- <button class="btn btn-primary" type="button" onclick="ipCheck('cctv')">CCTV</button>
					<button class="btn btn-primary" type="button" onclick="ipCheck('it')">IT INVENTORY</button>
					<button class="btn btn-primary" type="button" onclick="ipCheck('seal')">E-SEAL</button> -->
					<form id="formCheck" class="form-horizontal" method="post" enctype="multipart/form-data" novalidate="novalidate">
						<div class="form-group">
							<div class="col-sm-3 control-label">PILIH HANGGAR</div>
							<div class="col-sm-9">
								<select name="hanggar" class="form-control select2">
									<?php
										foreach ($hanggar as $key => $value) {
											echo '<option value="'.$value['id'].'">'.$value['grupHanggar'].'</option>';
										}
									?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-3 control-label">PILIH AKSES</div>
							<div class="col-sm-9">
								<select name="ipCheck" class="form-control select2" id="ipCheck">
									<option value="cctv">CCTV</option>
									<option value="it">IT INVENTORY</option>
									<option value="seal">E-SEAL</option>
								</select>
							</div>
						</div>
					</form>
				<!-- </div> -->
			</div>
			<div class="modal-footer">
				<button type="button" id="btncheck" class="btn btn-primary pull-right">CHECK</button>
				<button type="button" id="tutup" class="btn btn-default" data-dismiss="modal" style="margin-right: 15px;">Tutup</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="modalGrafik" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" aria-label="close" onclick="closeModal()">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="titleGrafik">Disini Modal Title</h4>
			</div>
			<div class="modal-body" id="canvasLocation">
			</div>
		</div>
	</div>
</div>