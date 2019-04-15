<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monevmoncer extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('pengawasan/monevmoncer_model', 'monev', true);
	}

	public function index() {
		$this->data['modal'] = 'pengawasan/monevumum/modal';
		$this->data['js'] = 'pengawasan/monevumum/js';

		if ($this->session->userdata('GrupMenu') == 5 || $this->session->userdata('GrupMenu') == 1) {
			if ($this->session->userdata('GrupMenu') == 1) {
				$this->data['akses'] = "admin";
			} else {
				switch ($this->session->userdata('Eselon')) {
					case 7:
					$this->data['akses'] = "pelaksana";
					break;
					case 4:
					$this->data['akses'] = "seksi";
					break;
					default:
					$this->data['akses'] = "browse";
					break;
				}
			}
		} else {
			redirect('error403');
		}

		$this->data['eselon'] = $this->session->userdata('Eselon');

		$this->load->view('pengawasan/monevumum/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("pengawasan", "Monitoring dan Evaluasi Umum");

		echo json_encode($data);
	}

	public function ajax_list() {
		//start datatable
		$list = $this->monev->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			switch ($_POST['type']) {
				case "pelaksana":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li><a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a></li>
				<li><a href="javascript:void({})" onclick="edit(' . $ListData->id . ')">Edit Laporan</a></li>
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
				<li><a href="javascript:void({})" onclick="validasi(' . $ListData->id . ",'seksi'" . ')">Validasi Laporan</a></li>
				</ul></div>';
				break;
				case "browse":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li><a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a></li>
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
			"recordsTotal" => $this->monev->count_all(),
			"recordsFiltered" => $this->monev->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function ajax_edit(){
		if (!empty($_GET)) {
			$data = $this->monev->getById();
		}

		echo json_encode($data);
	}

	public function ajax_add(){
		if(!empty($_POST)){
			$status = $this->monev->add();
			if ($status === TRUE) {
				$pesan = "Data Laporan Monev Umum Monitoring Room Berhasil Direkam";
			} else {
				$pesan = "Data Laporan Monev Umum Monitoring Room Gagal Direkam";
			}
		}

		echo json_encode($pesan);
	}

	public function ajax_update(){
		if(!empty($_POST)){
			$status = $this->monev->update();
			if ($status === TRUE) {
				$pesan = "Data Laporan Monev Umum Monitoring Room Berhasil Direkam";
			} else {
				$pesan = "Data Laporan Monev Umum Monitoring Room Gagal Direkam";
			}
		}

		echo json_encode($pesan);
	}

	public function cetak() {
		$data = $this->monev->getById();
		$template = "assets/upload/monev/template/template_monev_umum_moncer.docx";
		$dirDocx = 'assets/upload/monev/report_docx/';
		$dirPdf = 'assets/upload/monev/report_pdf/';
		$thick = mb_convert_encoding('&#x2714;', 'UTF-8', 'HTML-ENTITIES');
		// $fileDir = 'C:\xampp\htdocs\DashboardTPB\assets\upload\monev\report_docx\\';

		$headerLaporan = $data['laporan'];
		$isiLaporan = $data['isi'];

		try {
			\PhpOffice\PhpWord\Settings::setOutputEscapingEnabled(true);
			$templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor($template);
			$templateProcessor->setValue('nama_perusahaan', $headerLaporan['nama_perusahaan']);
			$templateProcessor->setValue('alamat', $headerLaporan['alamat']);
			$templateProcessor->setValue('tanggal', date('d-m-Y', strtotime($headerLaporan['tanggalLaporan'])));
			$templateProcessor->setValue('kesimpulan', $headerLaporan['kesimpulan']);
			$templateProcessor->setValue('nama', $headerLaporan['NamaPegawai']);

			for ($i = 0; $i < count($isiLaporan); $i++) {
				$templateProcessor->setValue('ket' . $isiLaporan[$i]['item'], $isiLaporan[$i]['keterangan']);
			}

			$fileName = 'Laporan_Moncer_' . $headerLaporan['idPerusahaan'] . "_" . date('d-m-Y', strtotime($headerLaporan['tanggalLaporan']));

			$report = $dirDocx . $fileName . ".docx";

			$templateProcessor->saveAs($report);

			system('cmd /c C:\xampp\htdocs\DashboardTPB\assets\convert.bat C:\xampp\htdocs\DashboardTPB\assets\upload\monev\report_pdf C:\xampp\htdocs\DashboardTPB\assets\upload\monev\report_docx\\' . $fileName . ".docx", $value);

			$pdfFile = $dirPdf . $fileName . ".pdf";

			unlink($dirDocx . $fileName . ".docx");
		} catch (\BadMethodCallException $e) {
			$error = $e->getMessage();
		} finally {
			if (isset($error)) {
				echo json_encode(array($pdfFile, $fileName, $error));
			} else {
				echo json_encode(array($pdfFile, $fileName, $value));
			}
		}
		
	}

	public function delete_pdf() {
		$name = $_GET['name'];

		if (file_exists('assets/upload/monev/report_pdf/' . $name . ".pdf")) {
			if (unlink('assets/upload/monev/report_pdf/' . $name . ".pdf")) {
				echo json_encode("file berhasil dihapus");
			} else{
				echo json_encode("file gagal dihapus");
			}
		} else {
			echo json_encode("file tidak ada");
		}
	}

	public function hapus(){
		if (!empty($_GET)) {
			$status = $this->monev->hapus();
			if ($status === TRUE) {
				$pesan = "Data berhasil dihapus";
			} else {
				$pesan = "Data gagal dihapus";
			}

			echo json_encode($pesan);
		}
	}

}

/* End of file monevumum.php */
/* Location: ./application/controllers/pengawasan/monevumum.php */