<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monevumum extends MY_Controller {

	public function __construct() {
		parent::__construct();
		//Do your magic here
		$this->load->model('hanggar/monev_model', "monev", TRUE);
	}

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
				</div>';
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

		$report = $dirDocx . 'Laporan_' . $headerLaporan['nama_perusahaan'] . "_" . date('d-m-Y', strtotime($headerLaporan['tanggalLaporan'])) . ".docx";

		$templateProcessor->saveAs($report);

		$reportPdf = $dirPdf . 'Laporan_' . $headerLaporan['nama_perusahaan'] . "_" . date('d-m-Y', strtotime($headerLaporan['tanggalLaporan'])) . "pdf";

		$pdf = Gears\Pdf::convert($report, $reportPdf);

		echo json_encode($reportPdf);
	}

}

/* End of file monevumum.php */
/* Location: ./application/controllers/hanggar/monevumum.php */