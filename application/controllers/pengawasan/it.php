<?php
if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

class It extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('pengawasan/it_model', 'it', true);
		$this->load->model('pengawasan/randomcheck_model', 'random', TRUE);
	}

	public function index() {
		$this->data['main_content'] = 'pengawasan/cctv/main_content';
		// $this->data['JudulPanelBesar'] = 'Upload Data';
		$this->data['js'] = 'pengawasan/cctv/js_it';
		$this->data['modal'] = "pengawasan/cctv/Modal_it";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Data Perusahaan";
		$this->data['breadcrumb_item'] = array("Pengawasan", "Data IT Inventory");

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

		$this->data['browserOptions'] = $browser;
		$this->load->view('pengawasan/cctv/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("Pengawasan", "Data IT Inventory");

		echo json_encode($data);
	}

	public function ajax_list() {
		//start datatable
		$list = $this->it->GetDataTable();
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

			if (substr($ListData->IpAddress, 0, 7) == "http://") {
				$url = $ListData->IpAddress;
			} else {
				$url = "http://" . $ListData->IpAddress;
			}

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->NPWP;
			$row[] = strtoupper($ListData->NmPerusahaan) . " | " . $ListData->Fasilitas . " | " . $ListData->NoSkepAkhir;
			$row[] = $ListData->Browser;
			$row[] = '<p class="text-center">' . $ListData->Username . '<br>' . $ListData->Password . '</p>';
			// $row[] = $ListData->Password;
			$row[] = '<p class="text-center ' . $background . '">' . $statusCCTV . '</p> <br> <p class="text-center">' . $ListData->Keterangan . '</p>';
			$row[] = '<a href="' . $url . '" target="_blank"><button type="button" class="btn btn-primary"><i class="icon ion-md-globe"><span hidden>View</span></i></button></a>';
			$row[] = '<div class="btn-group"><button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ACTION<span class="caret"></span></button><ul class="dropdown-menu"><li><a href="javascript:void({})" onclick="edit(' . $ListData->Id . ')">Edit User</a></li><li><a href="javascript:void({})" onclick="getGraph(' . $ListData->IdPerusahaan . ')">Cek History</a></li></ul></div>';
			$row[] = '<button type="submit" onclick="hapus(' . $ListData->Id . ')" class="btn btn-danger"><i class="icon ion-md-close"><span hidden>Hapus</span></i></button>';
			$row[] = $ListData->IdPerusahaan;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->it->count_all(),
			"recordsFiltered" => $this->it->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function getById() {
		$data = $this->it->getById();

		echo json_encode($data);
	}

	public function getDropDownNPWP() {
		$search = $this->input->get('nama');
		$column = array('IdPerusahaan', 'NmPerusahaan', 'Fasilitas', 'NoSkepAkhir');
		$data = $this->it->getTpbNonIT($search, $column);

		echo json_encode($data);
	}

	public function ajax_add() {
		if (!empty($_POST)) {
			$status = $this->it->add();
			$operation = "Tambah";
			$app = "IT Inventory";

			$pesan = $this->appfeedback($status, $operation, $app);
		}

		echo json_encode($pesan);
	}

	public function ajax_update() {
		if (!empty($_POST)) {
			$status = $this->it->update();
			$operation = "Ubah";
			$app = "IT Inventory";

			$pesan = $this->appfeedback($status, $operation, $app);
		}
		echo json_encode($pesan);
	}

	public function getGraph() {
		$data = $this->random->getGraphData($_GET['Id'], 'it');

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

/* End of file it.php */
/* Location: ./application/controllers/pengawasan/it.php */