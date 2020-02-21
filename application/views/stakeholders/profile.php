<?php if ($idtpb != 0) {
	$backUrl = 'perusahaan/tpb/index/'.$idtpb;
} else {
	$backUrl = 'perusahaan/tpb';
}
?>
<div class="form">
	<div class="container-fluid">
		<div class="nav-tabs-custom">
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="#tabUmum" data-toggle="tab" aria-expdanded="true">DATA UMUM PERUSAHAAN</a>
				</li>
				<li>
					<a href="#tabSkep" data-toggle="tab" aria-expanded="true">DATA SKEP FASILITAS</a>
				</li>
				<li>
					<a href="#tabOwner" data-toggle="tab" aria-expanded="true">DATA PENANGGUNG JAWAB</a>
				</li>
				<li>
					<a href="#tabKaryawan" data-toggle="tab" aria-expanded="true">DATA KARYAWAN</a>
				</li>
				<li>
					<a href="#tabBarang" data-toggle="tab" aria-expanded="true">DATA BARANG JADI/DITIMBUN</a>
				</li>
				<li>
					<a href="#tabRelasi" data-toggle="tab" aria-expanded="true">DATA RELASI PERUSAHAAN</a>
				</li>
				<li>
					<a href="#tabLabkeu" data-toggle="tab" aria-expanded="true">DATA LAPORAN KEUANGAN</a>
				</li>
				<li>
					<a href="#tabSubkon" data-toggle="tab" aria-expanded="true">SUBKONTRAK TLDDP</a>
				</li>
				<li class="pull-right">
					<a href="#" onclick="load_page('<?php echo $backUrl;?>')"><i class="fas fa-angle-double-left">&nbsp;<span>BACK</span></i></a>
				</li>
			</ul>
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="tabUmum">
					<div class="row">
						<div class="col-md-6 col-lg-6">
							<div class="box-body">
								<div class="col-md-12 col-lg-12">
									<table id="tbDataUmum" class="table table-bordered table-striped table-hover table-responsive">
										<thead>
											<th colspan="2" style="text-align: center;"><strong>DATA UMUM PERUSAHAAN</strong></th>
										</thead>
										<tbody></tbody>
									</table>
								</div>
							</div>
							<div class="box-footer">
								<div class="col-md-12 col-lg-12">
									<?php if ((int)$this->session->userdata("GrupMenu") === 1 || (int)$this->session->userdata("GrupMenu") === 5) {
										echo '<button type="button" class="btn btn-danger" onclick="edit()">EDIT</button>';
									} ?>
								</div>	
							</div>
						</div>
						<div class="col-md-6 col-lg-6">
							<div class="box-body">
								<div class="col-md-12 col-lg-12">
									<table id="#tbDataUmum" class="table table-bordered table-striped table-hover table-responsive">
										<thead>
											<th colspan="2" style="text-align: center;"><strong>DATA UMUM PERUSAHAAN</strong></th>
										</thead>
										<tbody></tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 col-lg-4">
							<div class="box-body">
								<div class="col-md-12 col-lg-12">
									<table id="tbAksesCCTV" class="table table-bordered table-striped table-hover table-responsive">
										<thead>
											<th colspan="2" style="text-align: center;"><strong>DATA AKSES CCTV</strong></th>
										</thead>
										<tbody></tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-lg-4">
							<div class="box-body">
								<div class="col-md-12 col-lg-12">
									<table id="tbAksesIT" class="table table-bordered table-striped table-hover table-responsive">
										<thead>
											<th colspan="2" style="text-align: center;"><strong>DATA AKSES IT INVENTORY</strong></th>
										</thead>
										<tbody></tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-lg-4">
							<div class="box-body">
								<div class="col-md-12 col-lg-12">
									<table id="tbAksesEseal" class="table table-bordered table-striped table-hover table-responsive">
										<thead>
											<th colspan="2" style="text-align: center;"><strong>DATA AKSES E-SEAL</strong></th>
										</thead>
										<tbody></tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="tabBarang">
					<div class="row formBarang">
						<div class="col-md-12 col-sm-12">
							<form class="form-horizontal" id="formBarang">
								<div class="form-group">
									<label class="col-md-3 col-sm-3 control-label">NAMA PRODUK</label>
									<div class="col-md-9 col-sm-9">
										<input type="text" name="nama" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 col-sm-3 control-label">MERK</label>
									<div class="col-md-9 col-sm-9">
										<input class="form-control" type="input" name="merk">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 col-sm-3 control-label">HS CODE</label>
									<div class="col-md-9 col-sm-9">
										<input class="form-control" type="input" name="hs">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 col-sm-3 control-label">FOTO</label>
									<div class="col-md-9 col-sm-9">
										<input class="form-control" type="file" name="foto">
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="row formBarang">
						<div class="col-md-12 col-sm-12">
							<button type="button" id="simpan" class="btn btn-primary pull-right" onclick="addBarang()" style="margin-bottom: 10px;">TAMBAH</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<table class="table table-bordered table-hover table-responsive" id="tableBarang">
								<thead>
									<th style="width: 5%;" class="text-center">No</th>
									<th style="width: 20%;" class="text-center">Nama Produk</th>
									<th style="width: 10%;" class="text-center">Merk</th>
									<th style="width: 10%;" class="text-center">HS CODE</th>
									<th class="text-center">Foto</th>
									<th style="width: 8%;" class="text-center">Action</th>
								</thead>
								<tfoot>
									<th style="width: 5%;" class="text-center">No</th>
									<th style="width: 20%;" class="text-center">Nama Produk</th>
									<th style="width: 10%;" class="text-center">Merk</th>
									<th style="width: 10%;" class="text-center">HS CODE</th>
									<th class="text-center">Foto</th>
									<th style="width: 8%;" class="text-center">Action</th>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="tabSkep">
				</div>
				<div role="tabpanel" class="tab-pane" id="tabOwner">
				</div>
				<div role="tabpanel" class="tab-pane" id="tabKaryawan">
				</div>
				<div role="tabpanel" class="tab-pane" id="tabRelasi">
				</div>
				<div role="tabpanel" class="tab-pane" id="tabLabkeu">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<button type="button" class="btn btn-primary pull-right" onclick="tambahLapkeu()" style="margin-bottom: 10px;">TAMBAH</button>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<table class="table table-bordered table-hover table-responsive" id="tableLapkeu">
								<thead>
									<th style="width: 5%;" class="text-center">No</th>
									<th style="width: 20%;" class="text-center">Tahun Pajak</th>
									<th style="width: 10%;" class="text-center">Periode Pembukuan</th>
									<th style="width: 8%;" class="text-center">Detail</th>
									<th style="width: 8%;" class="text-center">Edit</th>
								</thead>
								<tfoot>
									<th style="width: 5%;" class="text-center">No</th>
									<th style="width: 20%;" class="text-center">Tahun Pajak</th>
									<th style="width: 10%;" class="text-center">Periode Pembukuan</th>
									<th style="width: 8%;" class="text-center">Detail</th>
									<th style="width: 8%;" class="text-center">Edit</th>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="tabSubkon">
					<div class="row">
						<div class="form-group">
							<label class="col-md-3 col-lg-3 control-label">NOMOR AGENDA</label>
							<div class="col-md-3 col-lg-3">
								<input type="text" name="agenda" class="form-control">
							</div>
							<div class="col-md-2 col-lg-2" style="vertical-align: top;">
								<button type="button" class="btn btn-primary" onclick="ajax_reload_subkon()">CARI</button>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<table class="table table-bordered table-hover table-responsive" id="tableSubkon">
								<thead>
									<th style="width: 5%;" class="text-center">No</th>
									<th style="width: 15%;" class="text-center">Nomor Surat Persetujuan</th>
									<th style="width: 10%;" class="text-center">Tanggal Surat</th>
									<th style="width: 15%;" class="text-center">Nomor Permohonan</th>
									<th style="width: 50%;" class="text-center">Isi</th>
									<th style="width: 5%;" class="text-center">View</th>
								</thead>
								<tfoot>
									<th style="width: 5%;" class="text-center">No</th>
									<th style="width: 15%;" class="text-center">Nomor Surat Persetujuan</th>
									<th style="width: 10%;" class="text-center">Tanggal Surat</th>
									<th style="width: 15%;" class="text-center">Nomor Permohonan</th>
									<th style="width: 50%;" class="text-center">Isi</th>
									<th style="width: 5%;" class="text-center">View</th>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<?php if (isset($modal)) {$this->load->view($modal);}?>
<?php if (isset($js)) {$this->load->view($js);}?>