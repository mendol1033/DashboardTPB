<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monevumum extends MY_Controller {

	public function __construct() {
		parent::__construct();
		//Do your magic here
		$this->load->model('hanggar/monev_model', "monev", TRUE);
	}

	var $filePDF;

	public function index() {
		$this->data['modal'] = "hanggar/monevumum/modal";
		$this->data['js'] = "hanggar/monevumum/js";
		if ($this->session->userdata('IdHanggar') != 0 || $this->session->userdata('IdHanggar') != NULL) {
			$this->data['type'] = "hanggar";
		} else {
			$this->data['type'] = "seksi";
		}
		$this->load->view('hanggar/monevumum/main_content', $this->data);
	}

	public function archive() {
		$this->data['modal'] = "hanggar/monevumum/modal";
		$this->data['js'] = "hanggar/monevumum/js";
		$this->data['type'] = "arsip";
		$this->load->view('hanggar/monevumum/main_content', $this->data);
	}

	public function admin() {
		$this->data['modal'] = "hanggar/monevumum/modal";
		$this->data['js'] = "hanggar/monevumum/js";
		$this->data['type'] = "admin";
		$this->load->view('hanggar/monevumum/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("Hanggar", "Monitoring dan Evaluasi Umum");

		echo json_encode($data);
	}

	public function getPerusahaan() {
		$search = $this->input->get('nama');
		$column = array('id_perusahaan', 'nama_perusahaan', 'nama_tpb', 'ijin_kelola_tpb');
		$data = $this->monev->getTPB($search, $column);

		echo json_encode($data);
	}

	public function ajax_list() {

		$table = 'monev_hanggar_detail';
		$column_order = array(null, 'idPerusahaan', 'nama_perusahaan', 'tanggal');
		$column_search = array('idPerusahaan', 'nama_perusahaan', 'tanggal');

		//start datatable
		$list = $this->monev->GetDataTable("laporan", $table, $column_order, $column_search);
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			switch ($_POST['type']) {
				case "hanggar":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li><a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a></li>
				<li><a href="javascript:void({})" onclick="edit(' . $ListData->id . ')">Edit Laporan</a></li>
				<li><a href="javascript:void({})" onclick="lampiran(' . $ListData->id . ')">Edit Lampiran</a></li>
				<li><a href="javascript:void({})" onclick="validasi(' . $ListData->id . ",'hanggar'" . ')">Validasi Laporan</a></li>
				</ul></div>';
				break;
				case "seksi":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li><a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a></li>
				<li><a href="javascript:void({})" onclick="lampiran(' . $ListData->id . ')">Lihat Lampiran</a></li>
				<li><a href="javascript:void({})" onclick="validasi(' . $ListData->id . ",'seksi'" . ')">Validasi Laporan</a></li>
				</ul></div>';
				break;
				case "arsip":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li><a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a></li>
				<li><a href="javascript:void({})" onclick="lampiran(' . $ListData->id . ')">Lihat Lampiran</a></li>
				</ul></div>';
				break;
				default:
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li><a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a></li>
				<li><a href="javascript:void({})" onclick="edit(' . $ListData->id . ')">Edit Laporan</a></li>
				<li><a href="javascript:void({})" onclick="lampiran(' . $ListData->id . ')">Edit Lampiran</a></li>
				<li><a href="javascript:void({})" onclick="hapus(' . $ListData->id . ')">Hapus Laporan</a></li>
				</ul></div>';
				break;
			}

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->NPWP;
			$row[] = strtoupper($ListData->nama_perusahaan);
			$row[] = $ListData->alamat;
			$row[] = date("F", strtotime($ListData->tanggalLaporan)) . " - " . date("Y", strtotime($ListData->tanggalLaporan));
			$row[] = $ListData->tanggalLaporan;
			$row[] = $action;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->monev->count_all("laporan"),
			"recordsFiltered" => $this->monev->count_filtered("laporan"),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function ajax_listLampiran($id = NULL) {

		$table = 'monev_hanggar_file';
		$column_order = array(null, 'namaFile', 'typeFile');
		$column_search = array('namaFile', 'typeFile');

		//start datatable
		$list = $this->monev->GetDataTable("lampiran", $table, $column_order, $column_search, $id);
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			switch ($ListData->typeFile) {
				case 'application/vnd.openxmlformats-officedocument.presentationml.presentation':
				$jenisFile = "ppt";
				break;
				case 'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
				$jenisFile = "doc";
				break;
				case 'application/pdf':
				$jenisFile = "pdf";
				break;
				case 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
				$jenisFile = "xls";
				break;
				case 'image/jpeg':
				$jenisFile = "img";
				break;
				case 'image/jpg':
				$jenisFile = "img";
				break;
				case 'image/png':
				$jenisFile = "img";
				break;
				case 'image/bmp':
				$jenisFile = "img";
				break;
				default:
				$jenisFile = "other";
				break;
			}

			switch ($jenisFile) {
				case "pdf":
				$menu = '<li><a href="javascript:void({})" onclick="lihat(' . $ListData->id . ')">Lihat Lampiran</a></li>';
				break;
				case "img":
				$menu = '<li><a href="javascript:void({})" onclick="lihat(' . $ListData->id . ')">Lihat Lampiran</a></li>';
				break;
				default:
				$menu = '<li><a href="javascript:void({})" onclick="downloadFile(' . $ListData->id . ')">Download Lampiran</a></li>';
				break;
			}

			switch ($_POST['type']) {
				case "hanggar":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				' . $menu . '
				<li><a href="javascript:void({})" onclick="hapusLampiran(' . $ListData->id . ')">Hapus Lampiran</a></li>
				</ul></div>';
				break;
				case "seksi":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				' . $menu . '
				</ul></div>';
				break;
				case "arsip":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				' . $menu . '
				</ul></div>';
				break;
				default:
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				' . $menu . '
				<li><a href="javascript:void({})" onclick="hapusLampiran(' . $ListData->id . ')">Hapus Lampiran</a></li>
				</ul></div>';
				break;
			}

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->namaFile;
			$row[] = $jenisFile;
			$row[] = $action;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->monev->count_all("lampiran", $id),
			"recordsFiltered" => $this->monev->count_filtered("lampiran", $id),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function ajax_add() {
		if (!empty($_POST)) {
			$status = $this->monev->post();
			if ($status === TRUE) {
				$pesan = "Data laporan berhasil disimpan";
			} else {
				$pesan = "Data laporan gagal disimpan";
			}
		} else {
			$pesan = "Tidak ada data yang di simpan";
		}

		echo json_encode($pesan);
	}

	public function ajax_update() {
		if (!empty($_POST)) {
			$status = $this->monev->update();
			if ($status === TRUE) {
				$pesan = "Data laporan berhasil diubah";
			} else {
				$pesan = "Data laporan gagal diubah";
			}
		} else {
			$pesan = "Tidak ada data yang di simpan";
		}

		echo json_encode($pesan);
	}

	public function ajax_edit() {
		$data = $this->monev->getById();

		echo json_encode($data);
	}

	public function cetak() {
		$data = $this->monev->getById();
		$template = "assets/upload/monev/template/template_monev_umum_hanggar.docx";
		$dirDocx = 'assets/upload/monev/report_docx/';
		$dirPdf = 'assets/upload/monev/report_pdf/';
		$thick = mb_convert_encoding('&#x2714;', 'UTF-8', 'HTML-ENTITIES');
		$fileDir = 'D:\xampp\htdocs\DashboardTPB\assets\upload\monev\report_docx\\';

		$headerLaporan = $data[0];
		$isiLaporan = $data[1];

		try {
			\PhpOffice\PhpWord\Settings::setOutputEscapingEnabled(true);
			$templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor($template);
			$templateProcessor->setValue('nama_perusahaan', $headerLaporan['nama_perusahaan']);
			$templateProcessor->setValue('alamat', $headerLaporan['alamat']);
			$templateProcessor->setValue('tanggal', date('d-m-Y', strtotime($headerLaporan['tanggalLaporan'])));
			$templateProcessor->setValue('kesimpulan', $headerLaporan['keterangan']);
			$templateProcessor->setValue('nama', $headerLaporan['NamaPegawai']);

			for ($i = 0; $i < count($isiLaporan); $i++) {
				switch ($isiLaporan[$i]['kondisi']) {
					case "Y":
					$templateProcessor->setValue('y' . $isiLaporan[$i]['item'], $thick);
					$templateProcessor->setValue('n' . $isiLaporan[$i]['item'], "");
					break;
					case "N":
					$templateProcessor->setValue('y' . $isiLaporan[$i]['item'], "");
					$templateProcessor->setValue('n' . $isiLaporan[$i]['item'], $thick);
					break;
					default:
					$templateProcessor->setValue('y' . $isiLaporan[$i]['item'], "");
					$templateProcessor->setValue('n' . $isiLaporan[$i]['item'], "");
					break;
				}

				$templateProcessor->setValue('ket' . $isiLaporan[$i]['item'], $isiLaporan[$i]['keterangan']);
			}

			$fileName = 'Laporan_' . $headerLaporan['idPerusahaan'] . "_" . date('d-m-Y', strtotime($headerLaporan['tanggalLaporan']));

			$report = $dirDocx . $fileName . ".docx";

			$templateProcessor->saveAs($report);

			system('cmd /c D:\xampp\htdocs\DashboardTPB\assets\convert.bat D:\xampp\htdocs\DashboardTPB\assets\upload\monev\report_pdf D:\xampp\htdocs\DashboardTPB\assets\upload\monev\report_docx\\' . $fileName . ".docx", $value);

			$pdfFile = $dirPdf . $fileName . ".pdf";

			unlink($dirDocx . $fileName . ".docx");
		} catch (\BadMethodCallException $e) {
			$error = $e->getMessage();
		} finally {
			if (isset($error)) {
				echo json_encode(array($pdfFile, $fileName, $error));
			} else {
				echo json_encode(array($pdfFile, $fileName));
			}
			
		// echo json_encode("sudah");
		}
		
	}

	public function delete_pdf() {
		$name = $_GET['name'];

		if (is_dir('assets/upload/monev/report_pdf/' . $name . ".pdf")) {
			unlink('assets/upload/monev/report_pdf/' . $name . ".pdf");
		}

		echo json_encode("selesai");
	}

	public function validate() {
		if (!empty($_GET)) {
			if ($_GET['type'] === "hanggar") {
				$validate_stat = 1;
			} else {
				$validate_stat = 2;
			}
			$validate_stat = 1;
			$status = $this->monev->validate($validate_stat);

			if ($status === TRUE) {
				$pesan = "Laporan monev berhasil di validasi. <br> Jika ada kesalahan silahkan hubungi Admin PKC";
			} else {
				$pesan = "Laporan monev gagal di validasi";
			}
		}

		echo json_encode($pesan);
	}

	public function delete() {
		if (!empty($_GET)) {
			$validate_stat = 99;
			$status = $this->monev->validate($validate_stat);

			if ($status === TRUE) {
				$pesan = "Laporan Monev telah dihapus";
			} else {
				if ($status !=== FALSE) {
					$pesan = $status;
				} else {
					$pesan = "Laporan Monev gagal dihapus";
				}
			}
		}

		echo json_encode($pesan);
	}

	public function test() {
		$data = $this->session->userdata();

		print_r($data);
	}

	public function getFileById() {
		$dataFile = $this->monev->getFileById();
		echo json_encode($dataFile);
	}

	public function hapusFile() {
		$data = $this->monev->hapusFile();

		echo json_encode($data);
	}

	public function testt () {
		$data = $this->monev->test();

		echo json_encode($data);
	}

}

/* End of file monevumum.php */
/* Location: ./application/controllers/hanggar/monevumum.php */