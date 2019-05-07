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
								<select id="filterTahun" name="filterTahun" class="form-control">
								</select>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<select id="filterDokumen" name="filterDokumen" class="form-control">
									
								</select>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<select id="filterHanggar" name="filterHanggar" class="form-control select2">
									
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
		<!-- Statistik Dokumen -->
		<div class="row">
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs pull-right">
					<li class="active">
						<a class="mainGrafik" id="tabAllDokumen" href="#allDokumen" data-toggle="tab">All Dokumen</a>
					</li>
					<li>
						<a class="mainGrafik" id="tabCurrentDokumen" href="#currentDokumen" data-toggle="tab">Dokumen Tahun Berjalan</a>
					</li>
					<li>
						<a class="mainGrafik" id="tabNetto" href="#netto" data-toggle="tab">Netto</a>
					</li>
					<li class="pull-left header">
						<i class="fa fa-inbox"></i>
						<strong id="grafikTitle">Year to Year Jumlah Dokumen BC 2.3</strong>
					</li>
				</ul>
				<div class="tab-content no-padding">
					<div class="tab-pane active" id="allDokumen" style="height: 400px; width: 100%"></div>
					<div class="tab-pane" id="currentDokumen" style="height: 400px; width: 100%;"></div>
					<div class="tab-pane" id="netto" style="height: 400px; width: 100%;"></div>
				</div>
			</div>
		</div>
		<!-- Statistik Dokumen -->
		<div class="row">
			<div class="col-md-9 col-lg-9">
				<div class="row">
					<div class="col-md-5 col-lg-5 nopadding">
						<div class="nav-tabs-custom">
							<ul class="nav nav-tabs pull-right">
								<li class="active">
									<a id="tabChartStatus" href="#chartStatus" data-toggle="tab">Grafik</a>
								</li>
								<li>
									<a id="tabDataStatus" href="#dataStatus" data-toggle="tab">Data</a>
								</li>
								<li class="pull-left header">
									<i class="fa fa-inbox"></i>
									<strong>Status Dokumen</strong>
								</li>
							</ul>
							<div class="tab-content no-padding">
								<div class="tab-pane active" id="chartStatus" style="height: 400px;"></div>
								<div class="tab-pane" id="dataStatus">
									<table class="table table-hover table-responsive table-striped" id="tableDokStat">
										<thead>
											<th style="text-align: center; vertical-align: middle;">Status</th>
											<th style="text-align: center; vertical-align: middle;">Jumlah Dokumen</th>
										</thead>
										<tbody>

										</tbody>
										<tfoot>
											<th style="text-align: center; vertical-align: middle;">Status</th>
											<th style="text-align: center; vertical-align: middle;">Jumlah Dokumen</th>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="box box-default">
									<div class="box-header with-border">
										<i class="fa fa-inbox"></i><h4 id="boxTitle1" style="width: 50%; display: inline;"><strong>Status Monitoring Umum Hanggar</strong></h4>
									</div>
									<div class="box-body">
										<form class="form-horizontal">
											<div class="row">
												<div class="col-lg-12 col-md-12 col-sm-12">
													<div class="form-group">
														<label class="col-lg-3 col-md-3 col-sm-3 control-label">Bulan</label>
														<div class="col-lg-5 col-md-5 col-sm-5">
															<select class="form-control select2" name="bulan">
																<option value=1>Januari</option>
																<option value=2>Februari</option>
																<option value=3>Maret</option>
																<option value=4>April</option>
																<option value=5>Mei</option>
																<option value=6>Juni</option>
																<option value=7>Juli</option>
																<option value=8>Agustus</option>
																<option value=9>September</option>
																<option value=10>Oktober</option>
																<option value=11>November</option>
																<option value=12>Desember</option>
															</select>
														</div>
														<div class="col-lg-4 col-md-4 col-sm-4 pull-right">
															<button class="btn btn-info pull-right" type="button" value="filter" id="filter">FILTER</button>
														</div>
													</div>
												</div>
											</div>
										</form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12">
												<table class="table table-hover table-responsive table-striped" id="tableMonevHanggar">
													<thead></thead>
													<tbody></tbody>
													<tfoot></tfoot>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>							
						</div>
					</div>
					<div class="col-md-7 col-lg-7">
						<div class="box box-default">
							<div class="box-header with-border">
								<i class="fa fa-inbox"></i><h4 id="boxTitle2" style="width: 50%; display: inline;"><strong>Dokumen Outstanding</strong></h4>
							</div>
							<div class="box-body">
								<table class="table table-hover table-responsive table-striped" id="tableDokOutStand">
									<thead>
									</thead>
									<tbody>
									</tbody>
									<tfoot>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-lg-3">

			</div>
		</div>
		
	</section>
	<!-- right col -->
</div>
<!-- /.row (main row) -->
<?php if(isset($js)){$this->load->view($js);} ?>