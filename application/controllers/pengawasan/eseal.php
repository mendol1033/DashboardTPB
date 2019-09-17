<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Eseal extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('pengawasan/eseal_model', "eseal", true);
	}

	public function index() {
		$this->data['main_content'] = 'pengawasan/cctv/main_content';
		// $this->data['JudulPanelBesar'] = 'Upload Data';
		$this->data['js'] = 'pengawasan/cctv/js_eseal';
		$this->data['modal'] = "pengawasan/cctv/Modal_eseal";
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

		$this->data['browserOptions'] = $browser;
		$this->load->view('pengawasan/cctv/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("Pengawasan", "Data IT Inventory");

		echo json_encode($data);
	}

	public function ajax_list() {
		//start datatable
		$list = $this->eseal->GetDataTable();
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
			$row[] = '<button type="button" class="btn btn-success" onclick="edit(' . $ListData->Id . ')"><i class="icon ion-md-open"><span hidden>Edit</span></i></button>';
			$row[] = '<button type="submit" onclick="hapus(' . $ListData->Id . ')" class="btn btn-danger"><i class="icon ion-md-close"><span hidden>Hapus</span></i></button>';
			$row[] = $ListData->IdPerusahaan;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->eseal->count_all(),
			"recordsFiltered" => $this->eseal->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function getById() {
		$data = $this->eseal->getById();

		echo json_encode($data);
	}

	public function getDropDownNPWP() {
		$search = $this->input->get('nama');
		$column = array('IdPerusahaan', 'NmPerusahaan', 'Fasilitas', 'NoSkepAkhir');
		$data = $this->eseal->getTpbNonIT($search, $column);

		echo json_encode($data);
	}

	public function ajax_add() {
		if (!empty($_POST)) {
			$status = $this->eseal->add();
			$operation = "Tambah";
			$app = "IT Inventory";

			$pesan = $this->appfeedback($status, $operation, $app);
		}

		echo json_encode($pesan);
	}

	public function ajax_update() {
		if (!empty($_POST)) {
			$status = $this->eseal->update();
			$operation = "Ubah";
			$app = "IT Inventory";

			$pesan = $this->appfeedback($status, $operation, $app);
		}
		echo json_encode($pesan);
	}
}

/* End of file eseal.php */
/* Location: ./application/controllers/pengawasan/eseal.php */