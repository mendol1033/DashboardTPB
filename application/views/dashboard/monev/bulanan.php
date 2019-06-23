<div class="row">
	<div class="col-md-7 col-lg-7">
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="box" data-widget="box-widget">
					<div class="box-header with-border">
						<h4 class="box-title" id="boxChartTitle"></h4>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<div class="box-body">
						<div id="barGraph" style="width: 100%; height: 400px;">

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="box">
					<div class="box-header"><h4><strong>PENDAYAGUNAAN IT INVENTORY</strong></h4></div>
					<div class="box-body">
						<div class="row">
							<div class="col-md-6 col-lg-6">
								<div id="pieItem12" style="width: 100%; height: 300px;">
									
								</div>
							</div>
							<div class="col-md-6 col-lg-6">
								<div id="pieItem13" style="width: 100%; height: 300px;">
									
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4 col-lg-4">
								<div id="pieItem8" style="width: 100%; height: 300px;">
									
								</div>
							</div>
							<div class="col-md-4 col-lg-4">
								<div id="pieItem9" style="width: 100%; height: 300px;">
									
								</div>
							</div>
							<div class="col-md-4 col-lg-4">
								<div id="pieItem10" style="width: 100%; height: 300px;">
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="box"><div class="box-header"><h4><strong>PENDAYAGUNAAN IT CCTV</strong></h4></div></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="box"><div class="box-header"><h4><strong>KETERSEDIAAN RUANG HANGGAR</strong></h4></div></div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="box"><div class="box-header"><h4><strong>ENTITY, RESPONSIBILITY, NATURE OF BUSSINESS AND AUDITABLE (ERNA)</strong></h4></div></div>
			</div>
		</div>
	</div>
	<div class="col-md-5 col-lg-5">
		<div class="box" data-widget="box-widget">
			<div class="box-header with-border">
				<h4 class="box-title" id="boxTableTitle"></h4>
				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					</button>
				</div>
			</div>
			<div class="box-body">
				<table class="table table-responsive table-striped table-hover" id="tabel">
					<thead>
						<th>HANGGAR TPB</th>
						<th class="text-center">JUMLAH TPB</th>
						<th class="text-center">KONSEP</th>
						<th class="text-center">VALIDASI HANGGAR</th>
					</thead>
					<tbody id="tableBody">
						
					</tbody>
					<tfoot>
						<th>HANGGAR TPB</th>
						<th class="text-center">JUMLAH TPB</th>
						<th class="text-center">KONSEP</th>
						<th class="text-center">VALIDASI HANGGAR</th>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>

<?php if(isset($js)){$this->load->view($js);} ?>