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
							<div class="col-lg-3 col-md-4 col-sm-6">
								<select id="ddCategory" class="form-control">
									<option value="namaPerusahaan">Nama Perusahaan</option>
									<option value="tpb">Hanggar</option>
									<option value="seksi">Seksi Pabean</option>
								</select>
							</div>
							<div class="col-lg-9 col-md-8 col-sm-6">
								<select id="ddFilter" class="form-control select2">
									
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
							<i class="fa fa-minus"></i></button>
							<button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="" data-original-title="Remove">
								<i class="fa fa-times"></i></button>
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
			</div>
		</section>
		<?php if(isset($js)){$this->load->view($js);} ?>