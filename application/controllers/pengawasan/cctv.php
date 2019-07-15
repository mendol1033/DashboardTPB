<?php
if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

class Cctv extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('pengawasan/cctv_model', "cctv", true);
		$this->load->model('pengawasan/randomcheck_model', 'random', TRUE);
	}

	public function index() {
		$this->data['main_content'] = 'pengawasan/cctv/main_content';
		// $this->data['JudulPanelBesar'] = 'Upload Data';
		$this->data['js'] = 'pengawasan/cctv/js';
		$this->data['modal'] = "pengawasan/cctv/Modal";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Data Perusahaan";
		$this->data['breadcrumb_item'] = array("Pengawasan", "Data CCTV");

		$browser = array(
			'' => 'Pilih Jenis Browser',
			'Internet Explorer' => 'Internet Explorer',
			'Mozilla Firefox' => 'Mozilla Firefox',
			'Google Chrome' => 'Google Chrome',
			'Opera' => 'Opera',
			'Safari' => 'Safari',
			'Palemoon' => 'Palemoon',
			'Aplikasi Dekstop' => 'Aplikasi Dekstop',
			'Remote Dekstop' => 'Remote Dekstop',
			'Team Viewer' => 'Team Viewer',
		);

		$cctvType = array(
			'' => 'Pilih Jenis CCTV',
			'CMS' => 'CMS Any time & Any where IP Surveillance for Your Life',
			'KRISVIEW' => 'KRISVIEW',
			'WebCMS' => 'WebCMS',
			'NetSurveilenceWeb' => 'NetSurveilenceWeb',
			'NetworkVideoClient' => 'NetworkVideoClient',
			'HIKVISION' => 'HIKVISION',
			'INFINITY' => 'INFINITY',
		);

		$this->data['cctvType'] = $cctvType;
		$this->data['browserOptions'] = $browser;
		$this->load->view('pengawasan/cctv/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("Pengawasan", "Data CCTV");

		echo json_encode($data);
	}

	public function ajax_list() {
		//start datatable
		$list = $this->cctv->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {
			if ($ListData->Status === "Y") {
				$statusCCTV = "Aktif";
				$background = "bg-green";
			} else {
				$statusCCTV = "Tidak Aktif";
				$background = "bg-red";
			}

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->NPWP;
			$row[] = strtoupper($ListData->NmPerusahaan) . " | " . $ListData->Fasilitas . " | " . $ListData->NoSkepAkhir;
			$row[] = $ListData->Browser;
			$row[] = '<p class="text-center">' . $ListData->Username . '<br>' . $ListData->Password . '</p>';
			$row[] = '<p class="text-center ' . $background . '">' . $statusCCTV . '</p> <br> <p class="text-center">' . $ListData->Keterangan . '</p>';
			$row[] = '<a href="http://' . $ListData->IpAddress . '" target="_blank"><button type="button" class="btn btn-primary"><i class="icon ion-md-globe"><span hidden>View</span></i></button></a>';
			$row[] = '<div class="btn-group"><button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ACTION<span class="caret"></span></button><ul class="dropdown-menu"><li><a href="javascript:void({})" onclick="edit(' . $ListData->Id . ')">Edit User</a></li><li><a href="javascript:void({})" onclick="getGraph(' . $ListData->IdPerusahaan . ')">Cek History</a></li></ul></div>';
			$row[] = $ListData->IdPerusahaan;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->cctv->count_all(),
			"recordsFiltered" => $this->cctv->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function getById() {
		$data = $this->cctv->getById();

		echo json_encode($data);
	}

	public function getDropDownNPWP() {
		$search = $this->input->get('nama');
		$column = array('IdPerusahaan', 'NmPerusahaan', 'Fasilitas', 'NoSkepAkhir');
		$data = $this->cctv->getTpbNonCctv($search, $column);

		echo json_encode($data);
	}

	public function getByName() {
		$column = array('IdPerusahaan', 'NmPerusahaan');
		$data = $this->cctv->getByName($_GET['nama'], $column);

		echo json_encode($data);
	}

	public function ajax_add() {
		if (!empty($_POST)) {
			$status = $this->cctv->add();
			$operation = "tambah";
			$app = "CCTV";

			$pesan = $this->appfeedback($status, $operation, $app);
		}

		echo json_encode($pesan);
	}

	public function ajax_update() {
		if (!empty($_POST)) {
			$status = $this->cctv->update();
			$operation = "ubah";
			$app = "CCTV";

			$pesan = $this->appfeedback($status, $operation, $app);
		}
		echo json_encode($pesan);
	}

	public function getGraph() {
		$data = $this->random->getGraphData($_POST['Id'], 'cctv');

		foreach ($data as $key => $value) {
			$periode[] = $value['BULAN'] . " " . $value['TAHUN'];
			$aktif[] = $value['AKTIF'];
			$nonAktif[] = $value['TIDAK_AKTIF'];
		}
		$set = array(
			'graphData' => $data,
			'dataLabel' => array(
				'label_1' => "AKTIF",
				'label_2' => "TIDAK AKTIF",
			),
		);

		echo json_encode($set);
	}
}

/* End of file cctv.php */
/* Location: ./application/controllers/pengawasan/cctv.php */