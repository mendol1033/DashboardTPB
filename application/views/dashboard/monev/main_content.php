<section class="form">
	<div class="container-fluid">
		<?php if (isset($JudulPanelBesar)){?>
			<header><h3><?php echo $JudulPanelBesar; ?></h3></header>
		<?php }?>
		<div class="row">
			<div class="box">
				<div class="box-body">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="form-group">
							<div class="col-lg-2 col-md-2 col-sm-2">
								<select id="filterTahun" name="filterTahun" class="form-control select2">
									<?php $tahun = (int)date("Y");
									for ($i=2011; $i < $tahun+1 ; $i++) { 
										echo '<option value="'.$i.'">'.$i.'</option>';
									} ;?>
								</select>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<select id="filterBulan" name="filterBulan" class="form-control select2">
									<option value="0">Sepanjang Tahun</option>
									<option value="1">Januari</option>
									<option value="2">Februari</option>
									<option value="3">Maret</option>
									<option value="4">April</option>
									<option value="5">Mei</option>
									<option value="6">Juni</option>
									<option value="7">Juli</option>
									<option value="8">Agustus</option>
									<option value="9">September</option>
									<option value="10">Oktoeber</option>
									<option value="11">November</option>
									<option value="12">Desember</option>
								</select>
							</div>
							<div class="col-lg-1 col-md-1 col-sm-1 pull-right">
								<button class="btn btn-info" id="cari">Filter</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row" id="contentReport">
			
		</div>
		
	</section>
	<!-- right col -->
</div>
<!-- /.row (main row) -->
<?php if(isset($js)){$this->load->view($js);} ?>