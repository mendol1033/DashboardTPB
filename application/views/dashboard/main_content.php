<section class="form">
	<div class="container-fluid">
		<?php if (isset($JudulPanelBesar)){?>
			<header><h3><?php echo $JudulPanelBesar; ?></h3></header>
		<?php }?>
		<div class="row">
			<div class="box">
				<div class="box-body">
					<div class="col-lg-6 col-md-8 col-sm-12">
						<div class="form-group">
							<div class="col-lg-2 col-md-2 col-sm-2">
								<select id="filterTahun" class="form-control">
								</select>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<select id="filterDokumen" class="form-control">
									
								</select>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<select id="filterHanggar" class="form-control select2">
									
								</select>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<select id="filterTPB" class="form-control select2">
									
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title"><strong>Jumlah Dokumen</strong></h3>
					<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Collapse">
							<i class="fa fa-minus"></i>
						</button>
						<button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove">
							<i class="fa fa-times"></i>
						</button>
					</div>
				</div>
				<div class="box-body">
					<div class="row">
						<div id="jumlahDokumen">
							<div class="col-md-2">
								<div class="info-box">
									<span class="info-box-icon bg-green"><i class="fa fa-files-o"></i></span>
									<div class="info-box-content">
										<span class="info-box-text">BC 2.3</span>
										<span class="info-box-number" id="BC23"></span>
									</div>
									<!-- /.info-box-content -->
								</div>
							</div>
							<div class="col-md-2">
								<div class="info-box">
									<span class="info-box-icon bg-green"><i class="fa fa-files-o"></i></span>
									<div class="info-box-content">
										<span class="info-box-text">BC 2.5</span>
										<span class="info-box-number" id="BC25"></span>
									</div>
									<!-- /.info-box-content -->
								</div>
							</div>
							<div class="col-md-2">
								<div class="info-box">
									<span class="info-box-icon bg-green"><i class="fa fa-files-o"></i></span>
									<div class="info-box-content">
										<span class="info-box-text">BC 2.6.1 <br> BC 2.6.2</span>
										<span class="info-box-number" id="BC26"></span>
									</div>
									<!-- /.info-box-content -->
								</div>
							</div>
							<div class="col-md-2">
								<div class="info-box">
									<span class="info-box-icon bg-green"><i class="fa fa-files-o"></i></span>
									<div class="info-box-content">
										<span class="info-box-text">BC 2.7</span>
										<span class="info-box-number" id="BC27"></span>
									</div>
									<!-- /.info-box-content -->
								</div>
							</div>
							<div class="col-md-2">
								<div class="info-box">
									<span class="info-box-icon bg-green"><i class="fa fa-files-o"></i></span>
									<div class="info-box-content">
										<span class="info-box-text">BC 3.0</span>
										<span class="info-box-number" id="BC30"></span>
									</div>
									<!-- /.info-box-content -->
								</div>
							</div>
							<div class="col-md-2">
								<div class="info-box">
									<span class="info-box-icon bg-green"><i class="fa fa-files-o"></i></span>
									<div class="info-box-content">
										<span class="info-box-text">BC 4.0 | 4.1</span>
										<span class="info-box-number" id="BC4"></span>
									</div>
									<!-- /.info-box-content -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
				<!-- <div class="box-footer">
					Footer
				</div> -->
				<!-- /.box-footer-->
			</div>
		</div>
		<div class="row">
			<!-- Left col -->
			<section class="col-lg-7 connectedSortable">
				<!-- Custom tabs (Charts with tabs)-->
				<div class="nav-tabs-custom">
					<!-- Tabs within a box -->
					<ul class="nav nav-tabs pull-right">
						<li class="active"><a href="#revenue-chart" data-toggle="tab">Area</a></li>
						<li><a href="#sales-chart" data-toggle="tab">Donut</a></li>
						<li class="pull-left header"><i class="fa fa-inbox"></i> Sales</li>
					</ul>
					<div class="tab-content no-padding">
						<!-- Morris chart - Sales -->
						<div class="chart tab-pane active" id="revenue-chart" style="position: relative; height: 300px;"></div>
						<div class="chart tab-pane" id="sales-chart" style="position: relative; height: 300px;"></div>
					</div>
				</div>
				<!-- /.nav-tabs-custom -->

				<!-- Chat box -->

				<!-- /.box (chat box) -->

				<!-- TO DO List -->

				<!-- /.box -->

				<!-- quick email widget -->

			</section>
			<!-- /.Left col -->
			<!-- right col (We are only adding the ID to make the widgets sortable)-->
			<section class="col-lg-5 connectedSortable">

				<!-- Map box -->
				<div class="box box-solid bg-light-blue-gradient">
					<div class="box-header">
						<!-- tools box -->
						<div class="pull-right box-tools">
							<button type="button" class="btn btn-primary btn-sm daterange pull-right" data-toggle="tooltip"
							title="Date range">
							<i class="fa fa-calendar"></i></button>
							<button type="button" class="btn btn-primary btn-sm pull-right" data-widget="collapse"
							data-toggle="tooltip" title="Collapse" style="margin-right: 5px;">
							<i class="fa fa-minus"></i></button>
						</div>
						<!-- /. tools -->

						<i class="fa fa-map-marker"></i>

						<h3 class="box-title">
							Visitors
						</h3>
					</div>
					<div class="box-body">
						<div id="world-map" style="height: 250px; width: 100%;"></div>
					</div>
					<!-- /.box-body-->
					<div class="box-footer no-border">
						<div class="row">
							<div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
								<div id="sparkline-1"></div>
								<div class="knob-label">Visitors</div>
							</div>
							<!-- ./col -->
							<div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
								<div id="sparkline-2"></div>
								<div class="knob-label">Online</div>
							</div>
							<!-- ./col -->
							<div class="col-xs-4 text-center">
								<div id="sparkline-3"></div>
								<div class="knob-label">Exists</div>
							</div>
							<!-- ./col -->
						</div>
						<!-- /.row -->
					</div>
				</div>
				<!-- /.box -->

				<!-- solid sales graph -->
				<div class="box box-solid bg-teal-gradient">
					<div class="box-header">
						<i class="fa fa-th"></i>

						<h3 class="box-title">Sales Graph</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn bg-teal btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn bg-teal btn-sm" data-widget="remove"><i class="fa fa-times"></i>
							</button>
						</div>
					</div>
					<div class="box-body border-radius-none">
						<div class="chart" id="line-chart" style="height: 250px;"></div>
					</div>
					<!-- /.box-body -->
					<div class="box-footer no-border">
						<div class="row">
							<div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
								<input type="text" class="knob" data-readonly="true" value="20" data-width="60" data-height="60"
								data-fgColor="#39CCCC">

								<div class="knob-label">Mail-Orders</div>
							</div>
							<!-- ./col -->
							<div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
								<input type="text" class="knob" data-readonly="true" value="50" data-width="60" data-height="60"
								data-fgColor="#39CCCC">

								<div class="knob-label">Online</div>
							</div>
							<!-- ./col -->
							<div class="col-xs-4 text-center">
								<input type="text" class="knob" data-readonly="true" value="30" data-width="60" data-height="60"
								data-fgColor="#39CCCC">

								<div class="knob-label">In-Store</div>
							</div>
							<!-- ./col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-footer -->
				</div>
				<!-- /.box -->

				<!-- Calendar -->

			</section>
			<!-- right col -->
		</div>
		<!-- /.row (main row) -->
	</div>
</section>
<?php if(isset($js)){$this->load->view($js);} ?>