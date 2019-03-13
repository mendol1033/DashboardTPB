<style type="text/css">
/* Customize the label (the container) */
.checkcontainer {
	display: block;
	position: relative;
	padding-left: 35px;
	margin-bottom: 12px;
	cursor: pointer;
	font-size: 22px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

/* Hide the browser's default radio button */
.checkcontainer input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
	height: 0;
	width: 0;
}

/* Create a custom radio button */
.checkmark {
	position: absolute;
	top: 0;
	left: 0;
	height: 25px;
	width: 25px;
	background-color: #eee;
	border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.checkcontainer:hover input ~ .checkmark {
	background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.checkcontainer input:checked ~ .checkmark {
	background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
	content: "";
	position: absolute;
	display: none;
}

/* Show the indicator (dot/circle) when checked */
.checkcontainer input:checked ~ .checkmark:after {
	display: block;
}

/* Style the indicator (dot/circle) */
.checkcontainer .checkmark:after {
	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}
</style>
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
				<form id="formMonevUmum" class="form-horizontal" method="post" enctype="multipart/form-data">
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
							<th rowspan="2" style="text-align: center; vertical-align: middle; width: 5%;">NO</th>
							<th rowspan="2" style="text-align: center; vertical-align: middle; width: 30%">KRITERIA</th>
							<th colspan="3" style="text-align: center; vertical-align: middle; width: 30%;">KONDISI</th>
							<th rowspan="2" style="text-align: center; vertical-align: middle; width: 35%;">PEMBUKTIAN</th>
							<tr>
								<th style="text-align: center; vertical-align: middle; width: 5%;">YA</th>
								<th style="text-align: center; vertical-align: middle; width: 5%;">TIDAK</th>
								<th style="text-align: center; vertical-align: middle;">KETERANGAN</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="text-align: center; vertical-align: top;">1</td>
								<td style="vertical-align: top;">Izin Usaha perusahaan TPB masih berlaku</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist1" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist1" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan1"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file1[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Cek izin usaha (bisa dilihat dari file arsip yang sudah ada) <br> <i>Cantumkan masa berlaku pada kolom keterangan</i> <br> <br> <i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">2</td>
								<td style="vertical-align: top;">Penanggung Jawab TPB yang tercantum dalam izin TPB sesuai dengan akte perusahaan terakhir</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist2" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist2" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan2"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file2[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Cek akte terakhir (bisa dilihat dari file arsip yang sudah ada) <br> <i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i> <br> <i>Pengecekan dilakukan sebulan sekali, untuk meyakini kebenaran penanggung jawab TPB dapat dimintakan surat pernyataan dari pimpinan perusahaan</i> <br> <br> <i>Cantumkan nama jika ada penanggung jawab baru untuk rekomendasi presentasi proses bisnis ulang</i></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">3</td>
								<td style="vertical-align: top;">Di Lokasi TPB dupasang tanda nama perusahaan dan jenis TPB pada tempat yang dapat dilihat jelas oleh umum</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist3" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist3" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan3"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file3[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Foto tanda nama perusahaan (cukup dilakukan centang jika masih ada dan belum berubah) <br> <br><i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">4</td>
								<td style="vertical-align: top;">Tersedia ruang hanggar yang layak dab representatif untuk melakukan tugas beserta sarna penunjangnya</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist4" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist4" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan4"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file4[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">
									Foto tampak luar dan dalam ruang hanggar<br><br>
									Kriteria layak dan representatif: <br>
									<div class="row">
										<ul>
											<li>
												Ketersediaan ruangan lain sebagai penunjang seperti ruang istirahat dan toilet yang bersih dan memadai
											</li>
											<li>
												Tersedia sarana pendukung perkantoran seperti pengatur suhu ruangan (AC), meja kerja, kursi, lemari/ruang arsip
											</li>
											<li>
												Tersedianya Komputer (PC) dan Printer spesifikasi teknis yang mencukupi untuk menggunakan aplikasi-aplikasi perkantoran terkini dengan baik dan dapat dioperasikan dengan baik
											</li>
											<li>
												Tersedianya sarana komunikasi akses internet 24 jam
											</li>
										</ul>
									</div>
									<br>
									<i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">5</td>
								<td style="vertical-align: top;">Lokasi TPB dapat diakses langsung dari jalan umum dan dapat dilalui oleh saran pengankut peti kemas (khusus darat) atau srana pengangkut lain</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist5" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist5" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan5"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file5[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Foto akses jalan<br> <br> <i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">6</td>
								<td style="vertical-align: top;">Lokasi TPB mempunyai batas-batas yang jelas dengan tempat, bangunan, atau TPB lain</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist6" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist6" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan6"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file6[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Bandingkan batas-batas TPB pada izin TPB dengan kondisi fisik<br> <br> <i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">7</td>
								<td style="vertical-align: top;">Lokasi TPB tidak berhubungan dengan bangunan lain (kecuali masjid, asrama karyawan, klinik, koperasi, kantin dan bangunan lain untuk mendukung kepentingan karyawan TPB</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist7" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist7" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan7"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file7[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Cek denah dengan kondisi fisik <br> <br> <i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">8</td>
								<td style="vertical-align: top;">Kesesuaian data pemasukan dan pengeluaran barang ke dan dari TPB antara <i>IT Inventory</i> dengan Pemberitahuan Pabean dalam SKP</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist8" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist8" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan8"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file8[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">
									<div class="row">
										<ol>
											<li>Cek data pada <i>IT Inventory</i> dan data SKP</li>
											<li>Cek jumlah populasi masing-masing jenis pemberitahuan pabean</li>
											<li>Uji petik masing-masing jenis pemberitahuan pabean (terutama yang terakhir)</li>
										</ol>
									</div>
									Nomor 2 dan 3 dibuatkan kolom hasilnya.
									<br> <br> <i>Mencatat nomor dokumen yang dilakukan uji petik dalam kolom keterangan</i>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="5">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;"></td>
								<td style="vertical-align: top;">
									<i>IT Inventory</i> mencakup pencatatan: <br>
									<div class="row">
										<ol type="a">
											<li>pemasukan dan pengeluaran barang</li>
											<li>terdapat <i>field</i> untuk mencatat jenis dokumen pabean, nomor dan tanggal dokumen pabean</li>
											<li>terdapat menu untuk membuat laporan mutasi atas pemasukan, penimbunan, dan pengeluaran barang yang dapat diunduh melalui kantor pabean</li>
											<li>pemberian kode barang secara konsisten</li>
										</ol>
									</div>
									<i>Sebagai atensi perlu diperhatikan adalah untuk pencatatan pada IT Inventory harus menggunakan <b>nomor pendaftaran dan bukan nomor pengajuan</b></i>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist9" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist9" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan9"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file9[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;"> Screen shoot dan/atau penjelasan di buku manual system <br> <br> <b>Sebagai atensi perlu diperhatikan pencatatan pada IT Inventory harus menggunakan nomor pendaftaran dan bukan nomor pengajuan</b> <br> <br> <i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;"></td>
								<td style="vertical-align: top;">
									Perubahan data hanya bisa dilakukan oleh user yang mempunya otoritas tertentu
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist10" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist10" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan10"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file10[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Spot check dan/atau penjelasan di buku manual system <br> <br> <i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">9</td>
								<td style="vertical-align: top;">
									TPB masih aktif melakukan kegiatan fasilitas
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist11" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist11" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan11"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file11[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Cek kegiatan TPB dan data SKP Tidak aktif berarti:<br>
									<div class="row">
										<ol>
											<li>TPB sudah tidak lagi membuat pemberitahuan pabean pemasukan dan pengeluaran</li>
											<li>Terdapat Pemberitahuan pabean pemasukan atau pengeluaran, tetapi tidak melakukan pengolahan</li>
										</ol>
									</div>
									<br> <br> <i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">10</td>
								<td style="vertical-align: top;">
									Dalam hal izin TPB dibekukan, TPB tidak memasukkan barang dengan mendapatkan fasilitas
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist12" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist12" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan12"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file12[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">
									<div class="row">
										<ol>
											<li>Cek sudah ada input "pembekuan" di SILFIANA</li>
											<li>Cek tempat penimbunan barang, <i>IT Inventory</i>, dan CEISA (antara lain tidak ada dokumen BC 2.3, 4.0, dan 2.7</li>
										</ol>
									</div>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">11</td>
								<td style="vertical-align: top;">
									Kondisi bangunan TPB dalam keadaan layak untuk mendapatkan fasilitas dari pemerintah dan memenuhi standar keamanan untuk dilakukan penimbunan dan/atau pengolahan barang yang masih terutang pungutan negara
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist13" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist13" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan13"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file13[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">
									Memastikan tidak ada hal-hal berikut: <br>
									<div class="row">
										<ol>
											<li>lubang/akses/pintu terhubung dengan bangunan/ruangan/tempat lain yang tidak dilaporkan ke DJBC</li>
											<li>Bagian bangunan lainnya yang rusak</li>
										</ol>
									</div>
									Sertakan foto jika terdapat kondisi 1 dan 2
									<br> <br> <i>Cukup dicentang jika data yang ada masih sama seperti data pada arsip</i>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">12</td>
								<td style="vertical-align: top;">
									Terdapat <i>authorized user log in</i> untuk petugas Bea dan Cukai.
									<br> <br> Maksud <i>authorized user logi in</i> adalah kode akses berupa username dan password untuk masuk ke dalam sistem
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist14" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist14" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan14"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file14[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Melakukan spot check dan/atau melihat penjelasan di buku <i>manual system</i> <br>
									User admin : <br>
									.........<br>
									User bea cukai: <br>
									.........<br>
									dan/atau<br>
									User unit internal perusahaan:<br>
									.........<br> <i>Dicatat jika ada perubahan authorized user login baru</i>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">13</td>
								<td style="vertical-align: top;">
									Laporan <i>IT Inventory</i> dapat diakses secara <i>online</i> oleh DJBC
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist15" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist15" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan15"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file15[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Membuka tautan <i>IT Inventory</i> perusahaan melalui <i>handphone</i>, komputer, <i>monitoring room</i> dan/atau perangkat lainnya <br> <br> <i>Cukup dicentang jika sesuai</i></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">14</td>
								<td style="vertical-align: top;">
									Jumlah dan penempatan CCTV yang dipasang memungkinkan petugas untuk melakukan pengawasan atas pemasukan, pembongkaran, dan pengeluaran barang
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist16" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist16" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan16"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file16[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">
									Mengecek jumlah dan lokasi penempatan CCTV, yaitu: <br>
									<div class="row">
										<ol>
											<li>Pintu pemasukan dan pengeluaran barang dan orang</li>
											<li>Lokasi pembongkaran barang</li>
											<li>Lokasi pemuatan barang</li>
											<li>Lokasi lain yang diperlukan (contoh: Gudang bahan baku, Gudang produksi, Gudang barang jadi)</li>
										</ol>
									</div>
									<br> <br> <i>Cukup dicentang jika sesuai, minimal penempatan CCTV pada poin no 1 - 3 harus dipenuhi.</i>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">15</td>
								<td style="vertical-align: top;">
									CCTV dapat diakses secara <i>realtime</i> dan <i>online</i> dari ruang hanggar
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist17" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist17" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan17"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file17[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">
									Mengecek akses CCTV (<i>realtime</i> dan <i>online</i>)
									<br> <i>Cukup dicentang jika sesuai</i>
								</td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">16</td>
								<td style="vertical-align: top;">
									Hasil pemantauan CCTV dapat direkam dan hasil rekaman CCTV dapat disimpan sekurang-kurangnya 7 (tujuh) hari.
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist18" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist18" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan18"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file18[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Mengecek hasil rekaman CCTV 7 hari yang lalu <br> <br> <i>Cukup dicentang jika sesuai</i></td>
							</tr>
							<tr class="hidden">
								<td colspan="6">

								</td>
							</tr>
							<tr>
								<td style="text-align: center; vertical-align: top;">17</td>
								<td style="vertical-align: top;">
									Gambar CCTV berwarna dan dapat dilihat secara jelas dan dapat digunakan untuk membantu pengawasan
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist19" value="Y" checked="checked">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="text-align: center; vertical-align: top;">
									<label class="checkcontainer">
										<input type="radio" name="checklist19" value="N">
										<span class="checkmark"></span>
									</label>
								</td>
								<td style="vertical-align: top; width: 25%">
									<textarea class="form-control" style="width: 100%; height: 100px;" name="keterangan19"></textarea>
									<br>
									<label>Sertakan file jika ada</label>
									<input class="form-control" type="file" multiple="multiple" name="file19[]" style="width: 100%;">
								</td>
								<td style="vertical-align: top;">Mengecek layar monitor CCTV <br> <br> <i>Cukup dicentang jika Sesuai</i></td>
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