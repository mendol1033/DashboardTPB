<!-- <?php if ($this->session->userdata('IdHanggar') != 0) { ?> -->
<!-- <div class="row">
	<div class="col-lg-6 col-md-6 col-sm-6">
		<div class="form-group">
			<label class="col-lg-4 col-md-4 col-sm-4 control-label">Nama Perusahaan</label>
			<div class="col-lg-8 col-md-8 col-sm-8">
				<select class="form-control select2" name="filterPerusahaan" id="filterPerusahaan">

				</select>
			</div>
		</div>
	</div>
</div> -->
<!-- <?php } ?> -->

<section class="form">
	<?php if ($this->session->userdata('IdHanggar') == 0) { ?>
		<div class="container-fluid">
			<form class="form-horizontal" id="formFilter">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="form-group">
							<label class="col-lg-4 col-md-4 col-sm-4 control-label">Nama Perusahaan</label>
							<div class="col-lg-8 col-md-8 col-sm-8">
								<select class="form-control select2" name="hanggar" id="hanggar">
									<option value="0">Pilih Hanggar TPB</option>
									<?php foreach ($hanggar as $key => $value) {
										echo '<option value="'.$value['id'].'">'.$value['grupHanggar'].'</option>';
									} ?>
								</select>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6">
						<button class="btn btn-info pull-left" type="button" value="filter" style="" onclick="initMap()">FILTER</button>
					</div>
				</div>
			</form>
		</div>
	<?php } ?>
	<div class="row">
		<div id="mapGoogle" style="height: 740px"></div>
	</div>
</section>
<?php $this->load->view('index/modal.php');?>