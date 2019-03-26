<div class="modal fade" id="modalForm" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg" role="dokumen">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" onclick="closeModal()">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<form id="form" class="form-horizontal" method="post" enctype="multipart/form-data">
					<table class="table table-responsive">
						<tr>
							<td class="col-md-3">
								<label class="control-label">Nama Perusahaan</label>
							</td>
							<td class="col-md-9">
								<select class="form-control  select2" name="idPerusahaan" id="idPerusahaan">

								</select>
							</td>
						</tr>
						<tr class="hidden">
							<td colspan="2">

							</td>
						</tr>
						<tr>
							<td class="col-md-3">
								<label class="control-label">Alamat</label>
							</td>
							<td class="col-md-9">
								<input class="form-control" type="text" name="alamat" id="alamat">
							</td>
						</tr>
						<tr class="hidden">
							<td colspan="2">

							</td>
						</tr>
						<tr>
							<td class="col-md-3">
								<label class="control-label">Tanggal Pelaksanaan</label>
							</td>
							<td class="col-md-9">
								<input class="form-control" type="text" name="tanggal" id="tanggal">
							</td>
						</tr>
						<tr class="hidden">
							<td colspan="2">

							</td>
						</tr>
					</table>
					<table class="table table-bordered table-responsive table-hover table-striped">
						<thead>
							<th style="text-align: center; vertical-align: middle; width: 5%;"><b>NO</b></th>
							<th style="text-align: center; vertical-align: middle; width: 20%"><b>KEGIATAN</b></th>
							<th style="text-align: center; vertical-align: middle; width: 40%;"><b>URAIAN KEGIATAN</b></th>
							<th style="text-align: center; vertical-align: middle; width: 35%;"><b>HASIL PENGAMATAN</b></th>
						</thead>
						<tbody>
							<tr>
								<td style="text-align: center; vertical-align: top;">1</td>
								<td style="vertical-align: top;"><b>Monitoring Umum melalui pemanfaatan CCTV</b></td>
								<td style="text-align: left; vertical-align: top;">
									Langkah-langkah yang dapat dilaksanakan adalah sebagai berikut: <br>
									<ul>
										<li>
											Melakukan pemeriksaan apakah CCTV dapat diakses.
										</li>
										<li>
											Keseluruhan CCTV yang dipersyaratkan apakah masih terpasang dan bisa diakses.
										</li>
										<li>
											Pengawasan seluruh TPB melalui CCTV dan dilakukan pencatatan pada log book yang paling kurang memuat pelaksanaan pengamatan melalui CCTV. berdasarkan manajemen risiko dan dapat dilakukan secara <i>random</i>.
										</li>
									</ul>
									atensi: <br>
									<ul>
										<li>
											CCTV yang tidak dapat diakses pada jam rawan seperti sabtu malam atau minggu malam
										</li>
										<li>
											CCTV tidak dapat diakses pada saat pembongkaran atau penimbunan barang
										</li>
									</ul>
									<i>
										Catat hasil pengamatan terhadap CCTV jika ada hal yang mencurigakan dan dilakukan konfirmasi jika ada hal yang mencurigakan.
									</i>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<textarea class="form-control" style="width: 100%" rows="15">

									</textarea>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">2</td>
								<td style="vertical-align: top;"><b>Monitoring Umum melalui pemanfaatan <i>IT Inventory</i></b></td>
								<td style="text-align: left; vertical-align: top;">
									Langkah-langkah yang dapat dilaksanakan adalah sebagai berikut: <br>
									<ul>
										<li>
											Melakukan pemeriksaan apakah <i>IT Inventory</i> dapat diakses.
										</li>
										<li>
											Melakukan pemeriksaan apakah <i>IT Inventory</i> dapat dimanfaatkan.
										</li>
										<li>
											Uji petik pemanfaatan <i>IT Inventory</i> dengan membandingkan data pada SKP <i>real time</i> dicatatan. Jika tidak, harus diketahui saat TPB melakukan input data pada <i>IT Inventory</i> sesuai SKP.
										</li>
										<li>
											Unduh data pemasukan dan pengeluaran pada <i>IT Inventory</i> untuk dilakukan uji petik analisis kewajaran.
										</li>
										<li>
											Catat hasil analisis pada log book
										</li>
									</ul>
									atensi: <br>
									<ul>
										<li>
											TPB yang terlalu <i>lag</i>/jeda waktu pencatatannya antara <i>IT Inventory</i> dengan SKP dibandingkan SOP Perusahaan.
										</li>
										<li>
											Kewajaran antara jumlah data pemasukan dan data pengeluaran.
										</li>
										<li>
											Kewajaran antara jumlah data pada <i>IT Inventory</i> dengan data pada SKP.
										</li>
									</ul>
									<i>
										Catat hasil analisis terhadap <i>IT Inventory</i> perusahaan jika ada yang mencurigakan.
									</i>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<textarea class="form-control" style="width: 100%" rows="15">

									</textarea>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
						</tbody>
					</table>
					<div class="row">
						<label class="col-md-12 pull-left"><b>Keterangan Lain:</b></label>
						<div class="col-md-12">
							<textarea class="form-control" name="keteranganLain" style="width: 100%; height: 200px;"></textarea>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" id="batal" class="btn btn-default" onclick="closeModal()">Batal</button>
				<button type="button" id="simpan" class="btn btn-primary" onclick="save()">Simpan</button>
			</div>
		</div>
	</div>
</div>