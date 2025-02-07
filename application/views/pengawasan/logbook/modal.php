<style type="text/css">
	/* Customize the label (the container) */
	.checkcontainer {
		display: block;
		position: relative;
		padding-left: 35px;
		margin-bottom: 12px;
		cursor: pointer;
		font-size: 22px;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}

	/* Hide the browser's default radio button */
	.checkcontainer input {
		position: absolute;
		opacity: 0;
		cursor: pointer;
		height: 0;
		width: 0;
	}

	/* Create a custom radio button */
	.checkmark {
		position: absolute;
		top: 0;
		left: 0;
		height: 25px;
		width: 25px;
		background-color: #eee;
		border-radius: 50%;
	}

	/* On mouse-over, add a grey background color */
	.checkcontainer:hover input ~ .checkmark {
		background-color: #ccc;
	}

	/* When the radio button is checked, add a blue background */
	.checkcontainer input:checked ~ .checkmark {
		background-color: #2196F3;
	}

	/* Create the indicator (the dot/circle - hidden when not checked) */
	.checkmark:after {
		content: "";
		position: absolute;
		display: none;
	}

	/* Show the indicator (dot/circle) when checked */
	.checkcontainer input:checked ~ .checkmark:after {
		display: block;
	}

	/* Style the indicator (dot/circle) */
	.checkcontainer .checkmark:after {
		top: 9px;
		left: 9px;
		width: 8px;
		height: 8px;
		border-radius: 50%;
		background: white;
	}
</style>
<div class="modal fade" id="modalForm" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog" role="dokumen">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<form id="form" class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label class="col-sm-4 col-md-4 control-label">Jenis Logbook</label>
						<div class="col-sm-8 col-md-8">
							<select class="form-control select2" name="Logbook" id="Logbook">
								<option value="">Pilih Jenis Logbook</option>
								<option value="1">CCTV</option>
								<option value="2">IT INVENTORY</option>
								<option value="3">E-SEAL</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 col-md-4 control-label">Nama Perusahaan</label>
						<div class="col-sm-8 col-md-8">
							<select class="form-control select2" id="idPerusahaan" name="idPerusahaan"></select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 col-md-4 control-label">Tanggal Laporan</label>
						<div class="col-sm-8 col-md-8">
							<input type="text" name="tglLaporan" id="tglLaporan" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 col-md-4 control-label">Kondisi</label>
						<div class="col-sm-8 col-md-8">
							<div class="col-sm-4 col-md-4">
								<label class="checkcontainer">
									<input type="radio" name="kondisi" value="Y">
									<span class="checkmark"></span>
									Dapat Diakses
								</label>
							</div>
							<div class="col-sm-4 col-md-4">
								<label class="checkcontainer">
									<input type="radio" name="kondisi" value="N">
									<span class="checkmark"></span>
									Tidak Dapat Diakses
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 col-md-4 control-label">Isi Laporan</label>
						<div class="col-sm-8 col-md-8">
							<textarea class="form-control" name="isiLaporan" id="isiLaporan" rows="7"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 col-md-4 control-label">Upload Screen Shot</label>
						<div class="col-sm-8 col-md-8">
							<input type="file" name="upload[]" id="upload" class="form-control" multiple="multiple">
						</div>
					</div>
				</form>
				<table class="table table-responsive table-hover table-striped sr-only" id="tablePic">
					<thead>
						<th style="width: 5%;"><p class="text-justify"> No </p></th>
						<th style="width: 90%;"><p class="text-justify"> Picture </p></th>
						<th style="width: 5%;"><p class="text-justify"> Action </p></th>
					</thead>
					<tbody id="bodyTable">
						
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" id="batal" class="btn btn-default" data-dismiss="modal">Batal</button>
				<button type="button" id="simpan" class="btn btn-primary" onclick="save()">Simpan</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalView" tabindex="-1" role="dialog" aria-labelledby="modalViewLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<div class="col-md-12 col-lg-12">
					<form id="formView" class="form-horizontal" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label class="col-sm-2 col-md-2 control-label">Jenis Logbook</label>
							<div class="col-sm-10 col-md-10">
								<input type="text" name="viewLogbook" disabled="disabled" class="form-control" value="">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-md-2 control-label">Nama Perusahaan</label>
							<div class="col-sm-10 col-md-10">
								<input type="text" name="viewPerusahaan" disabled="disabled" class="form-control" value="">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-md-2 control-label">Tanggal Laporan</label>
							<div class="col-sm-10 col-md-10">
								<input type="text" name="viewTglLaporan" disabled="" class="form-control" value="">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-md-2 control-label">Kondisi</label>
							<div class="col-sm-10 col-md-10">
								<div class="col-sm-5 col-md-5">
									<label class="checkcontainer">
										<input type="radio" name="viewKondisi" value="Y">
										<span class="checkmark"></span>
										Dapat Diakses
									</label>
								</div>
								<div class="col-sm-5 col-md-5">
									<label class="checkcontainer">
										<input type="radio" name="viewKondisi" value="N">
										<span class="checkmark"></span>
										Tidak Dapat Diakses
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-md-2 control-label">Isi Laporan</label>
							<div class="col-sm-10 col-md-10">
								<textarea class="form-control" name="viewIsiLaporan" id="viewIsiLaporan" rows="15" disabled="disabled"></textarea>
							</div>
						</div>
					</form>
				</div>
				<!-- Indicators -->
				<div class="carousel slide" id="MyCarousel">
					<ol class="carousel-indicators"></ol>
					<!-- Wrapper for slides -->
					<div class="carousel-inner"></div>
					<!-- Controls -->
					<a href="#MyCarousel" class="left carousel-control" data-slide="prev"><span class="icon-prev"></span></a>
					<a href="#MyCarousel" class="right carousel-control" data-slide="next"><span class="icon-next"></span></a>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">
					Close
				</button>
				<!-- <button type="button" class="btn btn-primary">Save changes</button> -->
			</div>
		</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->