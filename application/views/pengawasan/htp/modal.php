<div class="modal fade" id="modal" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="form" novalidate="true">
					<div class="form-group">
						<label class=" col-md-3 control-label">Nama Toko</label>
						<div class="col-md-9">
							<input type="text" name="nama" class="form-control" list="namaToko" style="text-transform: uppercase;">
							<datalist class="col-md-12" id="namaToko" style="width: 100%">

							</datalist>
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">Alamat</label>
						<div class="col-md-9">
							<input type="text" name="alamat" class="form-control" style="text-transform: capitalize;">
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">Pemilik</label>
						<div class="col-md-9">
							<input type="text" name="pemilik" class="form-control" style="text-transform: capitalize;">
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">No Telepon</label>
						<div class="col-md-9">
							<input type="text" name="telepon" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">No Handphone</label>
						<div class="col-md-9">
							<input type="text" name="handphone" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Provinsi</label>
						<div class="col-md-9">
							<input type="text" name="Provinsi" class="form-control" list="Provinsi" style="text-transform: capitalize;">
							<datalist id="Provinsi" style="widows: 100%">

							</datalist>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Kota / Kabupaten</label>
						<div class="col-md-9">
							<input type="text" name="Kabupaten" class="form-control" list="Kabupaten" style="text-transform: capitalize;">
							<datalist id="Kabupaten" style="widows: 100%">

							</datalist>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Kecamatan</label>
						<div class="col-md-9">
							<input type="text" name="Kecamatan" class="form-control" list="Kecamatan" style="text-transform: capitalize;">
							<datalist id="Kecamatan" style="widows: 100%">

							</datalist>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Kelurahan</label>
						<div class="col-md-9">
							<input type="text" name="Kelurahan" class="form-control" list="Kelurahan" style="text-transform: capitalize;">
							<datalist id="Kelurahan" style="widows: 100%">

							</datalist>
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">Koordinat</label>
						<div class="col-md-9">
							<input type="text" name="koordinat" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">Surveyor</label>
						<div class="col-md-5">
							<input type="text" name="surveyor" class="form-control" list="surveyor" style="text-transform: capitalize;">
							<datalist class="col-md-12" id="surveyor" style="width: 100%">

							</datalist>
						</div>
						<div class="col-md-4">
							<input type="text" name="nip" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class=" col-md-3 control-label">Tanggal Kunjungan</label>
						<div class="col-md-9">
							<input type="text" name="tanggal" class="form-control">
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" id="tutup" class="btn btn-default" data-dismiss="modal">Tutup</button>
				<button type="button" id="simpan" class="btn btn-primary" onclick="save()">Simpan</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalDetail" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="form" novalidate="true">
					<div class="row">
						<div class="col-md-6">
							<div class="row">
								<h4 class="text-center"><strong>INFORMASI PADA ROKOK</strong></h4>
							</div>
							<div class="form-group">
								<label class=" col-md-3 control-label">Merk</label>
								<div class="col-md-9">
									<input type="text" name="merek" class="form-control" list="merek" style="text-transform: uppercase;">
									<datalist class="col-md-12" id="merek" style="width: 100%">

									</datalist>
								</div>
							</div>
							<div class="form-group">
								<label class=" col-md-3 control-label">Nama Pabrik</label>
								<div class="col-md-9">
									<input type="text" name="namaPabrik" list="namaPabrik" class="form-control" style="text-transform: capitalize;">
									<datalist class="col-md-12" id="namaPabrik" style="width: 100%"></datalist>
								</div>
							</div>
							<div class="form-group">
								<label class=" col-md-3 control-label">Lokasi Pabrik</label>
								<div class="col-md-9">
									<input type="text" name="lokasiPabrik" class="form-control" style="text-transform: capitalize;">
								</div>
							</div>
							<div class="form-group">
								<label class=" col-md-3 control-label">Harga Jual</label>
								<div class="col-md-9">
									<input type="text" name="hargaJual" class="form-control">
								</div>
							</div>

						</div>
						<div class="col-md-6">
							<div class="row">
								<h4 class="text-center"><strong>INFORMASI PADA PITA CUKAI</strong></h4>
							</div>
							<div class="form-group">
								<label class=" col-md-3 control-label">Tahun Pita Cukai</label>
								<div class="col-md-9">
									<input type="text" name="tahunPita" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Tarif</label>
								<div class="col-md-9">
									<input type="text" name="tarif" class="form-control" list="tarif" style="text-transform: capitalize;">
									<datalist class="col-md-12" id="tarif" style="width: 100%"></datalist>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">HJE</label>
								<div class="col-md-9">
									<input type="text" name="hje" class="form-control" list="hje" style="text-transform: capitalize;">
									<datalist id="hje" style="widows: 100%">

									</datalist>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Jenis HT</label>
								<div class="col-md-9">
									<input type="text" name="jenisHT" class="form-control" list="jenisHT" style="text-transform: capitalize;">
									<datalist id="jenisHT" style="widows: 100%">

									</datalist>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Isi</label>
								<div class="col-md-9">
									<input type="text" name="isi" class="form-control" list="isi" style="text-transform: capitalize;">
									<datalist id="isi" style="widows: 100%">

									</datalist>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<h4 class="text-center"><strong>INFORMASI TAMBAHAN</strong></h4>
						<div class="col-md-6">
							<div class="form-group">
								<label class=" col-md-3 control-label">Jumlah Kemasan</label>
								<div class="col-md-9">
									<input type="text" name="jmlhKemasan" class="form-control">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class=" col-md-3 control-label">Keterangan</label>
								<div class="col-md-9">
									<input type="text" name="keterangan" class="form-control" list="keterangan" style="text-transform: capitalize;">
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<button type="button" class="btn btn-primary pull-right" onclick="addRokok()" style="margin-bottom: 10px;">TAMBAH</button>
						</div>
					</div>
				</form>
				<div class="row">
					<style type="text/css">
						.table thead,
						.table th {
							text-align: center;
							vertical-align: middle !important;
						}
					</style>
					<table class="table table-hover table-responsive table-striped" id="tableDetail">
						<thead class="text-center align-middle">
							<tr>
								<th rowspan="2">NO</th>
								<th colspan="4">INFORMASI PADA KEMASAN ROKOK</th>
								<th colspan="5">INFORMASI PADA PITA CUKAI</th>
								<th rowspan="2">JUMLAH<br>KEMASAN<br>(BUNGKUS)</th>
								<th rowspan="2">KETERANGAN</th>
							</tr>
							<tr>
								<th>MEREK</th>
								<th>NAMA PABRIK</th>
								<th>LOKASI PABRIK</th>
								<th>HARGA JUAL<br>TOKO/WARUNG</th>
								<th>TAHUN PC</th>
								<th>TARIF (Rp)</th>
								<th>HJE (Rp)</th>
								<th>JENIS HT</th>
								<th>ISI</th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="tutup" class="btn btn-default" data-dismiss="modal">Tutup</button>
				<button type="button" id="simpan" class="btn btn-primary" onclick="save()">Simpan</button>
			</div>
		</div>
	</div>
</div>