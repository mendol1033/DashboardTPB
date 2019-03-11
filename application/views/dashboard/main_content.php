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
<!-- 							<div class="col-lg-3 col-md-3 col-sm-3">
								<select id="filterTPB" class="form-control select2">
									
								</select>
							</div> -->
							<div class="col-lg-1 col-md-1 col-sm-1 pull-right">
								<button class="btn btn-info" id="cari">Filter</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs pull-right">
					<li class="active">
						<a id="tabAllDokumen" href="#allDokumen" data-toggle="tab">All Dokumen</a>
					</li>
					<li>
						<a id="tabCurrentDokumen" href="#currentDokumen" data-toggle="tab">Dokumen Tahun Berjalan</a>
					</li>
					<li>
						<a id="tabNetto" href="#netto" data-toggle="tab">Netto</a>
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

		
	</section>
	<!-- right col -->
</div>
<!-- /.row (main row) -->
<?php if(isset($js)){$this->load->view($js);} ?>