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
		//start datatable
		$list = $this->monev->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			if ($this->session->userdata('GrupMenu') == 1) {
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li>
				<a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a>
				</li>
				<li>
				<a href="javascript:void({})" onclick="edit(' . $ListData->id . ')">Edit Laporan</a>
				</li>
				<li>
				<a href="javascript:void({})" onclick="validasi(' . $ListData->id . ')">Validasi Laporan</a>
				</li>
				<li>
				<a href="javascript:void({})" onclick="hapus(' . $ListData->id . ')">Hapus Laporan</a>
				</li>
				</ul>
				</div>';
			} else {
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li>
				<a href="javascript:void({}) onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a>
				</li>
				<li>
				<a href="javascript:void({})" onclick="edit(' . $ListData->id . ')">Edit Laporan</a>
				</li>
				<li>
				<a href="javascript:void({})" onclick="validasi(' . $ListData->id . ')">Validasi Laporan</a>
				</li>
				</div>'
				;
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

	public function print() {
		$data = $this->monev->getById();
		$template = "assets/upload/monev/template/template_monev_umum_hanggar.docx";
		$dirDocx = 'assets/upload/monev/report_docx/';
		$dirPdf = 'assets/upload/monev/report_pdf/';
		$thick = mb_convert_encoding('&#x2714;', 'UTF-8', 'HTML-ENTITIES');
		$templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor($template);
		$fileDir = 'D:\xampp\htdocs\DashboardTPB\assets\upload\monev\report_docx\\';

		$headerLaporan = $data[0];
		$isiLaporan = $data[1];

		$templateProcessor->setValue('nama_perusahaan', $headerLaporan['nama_perusahaan']);
		$templateProcessor->setValue('alamat', $headerLaporan['alamat']);
		$templateProcessor->setValue('tanggal', date('d-m-Y', strtotime($headerLaporan['tanggalLaporan'])));
		$templateProcessor->setValue('kesimpulan', $headerLaporan['keterangan']);
		$templateProcessor->setValue('nama', $headerLaporan['NamaPegawai']);

		for ($i = 0; $i < count($isiLaporan); $i++) {
			if ($isiLaporan[$i]['kondisi'] == "Y") {
				$templateProcessor->setValue('y' . $isiLaporan[$i]['item'], $thick);
				$templateProcessor->setValue('n' . $isiLaporan[$i]['item'], "");
			} else {
				$templateProcessor->setValue('y' . $isiLaporan[$i]['item'], "");
				$templateProcessor->setValue('n' . $isiLaporan[$i]['item'], $thick);
			}

			$templateProcessor->setValue('ket' . $isiLaporan[$i]['item'], $isiLaporan[$i]['keterangan']);
		}

		$fileName = 'Laporan_' . $headerLaporan['idPerusahaan'] . "_" . date('d-m-Y', strtotime($headerLaporan['tanggalLaporan']));

		$report = $dirDocx . $fileName . ".docx";

		$templateProcessor->saveAs($report);

		system('cmd /c D:\xampp\htdocs\DashboardTPB\assets\convert.bat D:\xampp\htdocs\DashboardTPB\assets\upload\monev\report_pdf D:\xampp\htdocs\DashboardTPB\assets\upload\monev\report_docx\\' . $fileName . ".docx", $value);

		$pdfFile = $dirPdf . $fileName . ".pdf";

		unlink($dirDocx . $fileName . ".docx");

		echo json_encode(array($pdfFile, $fileName));
	}

	public function delete_pdf() {
		$name = $_GET['name'];

		unlink('assets/upload/monev/report_pdf/' . $name . ".pdf");

		echo json_encode("selesai");
	}

	public function validate() {
		if (!empty($_GET)) {
			$validate_stat = 1;
			$status = $this->monev->validate($validate_stat);

			if ($status === TRUE) {
				$pesan = "Laporan monev berhasil di validasi";
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
				$pesan = "Laporan Monev gagal dihapus";
			}
		}

		echo json_encode($pesan);
	}

}

/* End of file monevumum.php */
/* Location: ./application/controllers/hanggar/monevumum.php */