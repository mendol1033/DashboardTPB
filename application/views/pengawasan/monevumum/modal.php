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
				<form id="formMonev" class="form-horizontal" method="post" enctype="multipart/form-data" novalidate="novalidate">
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
							<!-- START POIN 1 -->
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
									<textarea class="form-control" name="laporan1" id="laporan1" style="width: 100%" rows="15"></textarea>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<!-- END POIN 1 -->
							<!-- START POIN 2 -->
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
									<textarea class="form-control" name="laporan2" id="laporan2" style="width: 100%" rows="15"></textarea>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<!-- END POIN 2 -->
							<!-- START POIN 3 -->
							<tr>
								<td style="text-align: center; vertical-align: top;">3</td>
								<td style="vertical-align: top;"><b>Monitoring Umum melalui pemanfaatan CEISA TPB</b></td>
								<td style="text-align: left; vertical-align: top;">
									Langkah-langkah yang dapat dilaksanakan adalah sebagai berikut: <br>
									<ul>
										<li>Unduh data pada CEISA sebagai pembanding untuk keandalan IT Inventory</li>
										<li>
											Gunakan dapat pada SKP sebagai sumber database pola bisnis yang dilakukan perusahaan, misalnya:
											<ul>
												<li>pembelian yang dilakukan</li>
												<li>pekerjaa sub kontrak yang ada, dilakukan oleh siapa saja?</li>
												<li>penjualan lokal yang dilakukan</li>
												<li>penjualan ekspor yang dilakukan</li>
												<li>barang sisa atau scrap yang dijual</li>
												<li>penggunaan perusahaan jasa transportasi/sarana pengangkut</li>
											</ul>
										</li>
										<li>Unduh data BC 2.3 khusus barang modal, barang contoh, dan barang lainnya yang memerlukan atensi untuk dilakukan pengawasan lebih lanjut <br> Atens:</li>
										<li>Dokumen BC 2.5 yang besar dan tidak wajar sesuai komposisi penjualan lokal yang ada pada umumnya</li>
										<li>Kondisi barang yang diluar kebiasaan dari pola bisnis perusahaan TPB</li>
										<li>Dalam hal sistem transaksi tidak biasa dalam aplikasi monitoring dan evaluasi belum tersedia secara elektronik, pengawasan dapat dilakukan secara manual</li>
										<li>Dalam hal pelaksanaan monitoring dan evaluasi tidak terdapat sistem transaksi tidak biasa, maka pengawasan monitoring dan evaluasi dilakukan sesuai pedoman ini.</li>
									</ul>
									<i>
										Catat hasil analisis terhadap <i>CEISA TPB</i> perusahaan jika ada yang mencurigakan.
									</i>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<textarea class="form-control" name="laporan3" id="laporan3" style="width: 100%" rows="15"></textarea>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<!-- END POIN 3 -->
							<!-- START POIN 4 -->
							<tr>
								<td style="text-align: center; vertical-align: top;">3</td>
								<td style="vertical-align: top;"><b>Monitoring Umum melalui pemanfaatan data e-seal</b> <br> Monitoring ini dilakukan kepada TPB yang dipersyaratkan menggunakan e-seal.</td>
								<td style="text-align: left; vertical-align: top;">
									Langkah-langkah yang dapat dilaksanakan adalah sebagai berikut: <br>
									<ul>
										<li>Melakukan pemeriksaan apakah data e-seal termasuk pergerakannya dapat diakses.</li>
										<li>Melakukan pemeriksaan apakah data logbook e-seal dapat diakses.</li><br> Atensi
										<li>
											Nomor e-seal yang belum tertulis akibat pengiriman di malam hari dimana tidak ada petugas dan harus dilakukan pemeriksaan
										</li>
										<li>Perubahan pergerakan alat pengangkut sesuai e-seal yang tidak sesuai jalur yang telah diberikan</li>
										<li>Perubahan waktu kedatangan yang berbeda dengan waktu kedatangan yang diberikan</li>
									</ul>
									<i>
										Catat hasil analisis terhadap <i>e-seal</i> perusahaan jika ada yang mencurigakan.
									</i>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<textarea class="form-control" name="laporan4" id="laporan4" style="width: 100%" rows="15"></textarea>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<!-- END POIN 4 -->
							<!-- START POIN 5 -->
							<tr>
								<td style="text-align: center; vertical-align: top;">5</td>
								<td style="vertical-align: top;">Barang yang ditimbun di TPB selain Kawasan Berikat sesuai dengan yang tercantum dalam izin TPB</td>
								<td style="text-align: left; vertical-align: top;">
									Uji petik pebandingan barang yang ditimbun dengan izin TPB. <br>
									<i>
										Cukup dicentang jika data yang ada masih sama seperti data pada arsip
									</i>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<textarea class="form-control" name="laporan5" id="laporan5" style="width: 100%" rows="15"></textarea>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<!-- END POIN 5 -->
							<!-- START POIN 6 -->
							<tr>
								<td style="text-align: center; vertical-align: top;">6</td>
								<td style="vertical-align: top;">Barang yang dimasukkan atau dikeluarkan ke dan dari TPB sesuai dengan SKEP (selain KB) atau berhubungan dengan hasil produksi (KB)</td>
								<td style="text-align: left; vertical-align: top;">
									Cek data di SKEP dan pengamatan di tempat penimbunan barang. <br>
									<i>
										Cukup dicentang jika data yang ada masih sama seperti data pada arsip
									</i>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<textarea class="form-control" name="laporan6" id="laporan6" style="width: 100%" rows="15"></textarea>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<!-- END POIN 6 -->
							<tr>
								<td colspan="4"><label class="col-md-12 pull-left"><b>Kesimpulan:</b></label></td>
							</tr>
							<tr>
								<td colspan="4"><textarea class="form-control" name="kesimpulan" style="width: 100%; height: 200px;"></textarea></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" id="batal" class="btn btn-default" onclick="closeModal()">Batal</button>
				<button type="button" id="simpan" class="btn btn-primary" onclick="save()">Simpan</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalDoc" role="dialog" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg" role="dokumen">
		<div class="modal-content">
			<div class="modal-header">
				<button id="btn_close" type="button" class="close" onclick="closeModalView()">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Disini Modal Title</h4>
			</div>
			<div class="modal-body">
				<iframe id="iframeDoc" style="width: 100%; height: 800px;" src=""></iframe>
			</div>
		</div>
	</div>
</div>