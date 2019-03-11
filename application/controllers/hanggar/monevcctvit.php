<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monevcctvit extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('hanggar/monevcctvit_model', 'monev', true);
	}

	public function index() {
		$this->data['JudulPanelBesar'] = 'Monitoring dan Evaluasi CCTV dan IT INVENTORY';
		$this->data['js'] = 'hanggar/cctvit/js';
		$this->data['modal'] = "hanggar/cctvit/Modal";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Dashboard";
		$this->data['breadcrumb_item'] = array("Hanggar", "CCTVIT");

		// Dropdown list Jenis Dokumen
		$jnsDokumen = $this->menu->getJenisDokumen();
		$jnsDok[] = "Semua Dokumen";
		foreach ($jnsDokumen as $key => $value) {
			$jnsDok[$value['Kd_Dok']] = $value['Nm_Dok'];
		}
		$options = array('jnsDok' => $jnsDok);
		$this->data['options'] = $options;

		$this->load->view('hanggar/cctvit/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("Hanggar", "CCTVIT");

		echo json_encode($data);
	}

	public function ajax_list() {
		//start datatable
		$list = $this->monev->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {
			if (isset($ListData->IdPerusahaan)) {
				$dataPT = $this->perusahaan->getById2($ListData->IdPerusahaan);
			}

			if ($ListData->statusCCTV == "Y" && $ListData->realtimeCCTV == "Y" && $ListData->statusIT == "Y" && $ListData->realtimeIT == "Y") {
				$status = '<p class="text-center bg-green"><strong>CCTV dan IT Inventory Aktif dan Realtime</strong></p>';
			} else if ($ListData->statusCCTV == "N" && $ListData->realtimeCCTV == "N" && $ListData->statusIT == "N" && $ListData->realtimeIT == "N") {
				$status = '<p class="text-center bg-red"><strong>CCTV dan IT Inventory Tidak Aktif</strong></p>';
			} else {
				$status = '<p class="text-center bg-yellow"><strong>CCTV dan IT Inventory Aktif Namun Tidak Realtime</strong></p>';
			}
			$no++;
			$row = array();
			$row[] = '<p class="text-center">' . $no . '</p>';
			$row[] = strtoupper($dataPT->nama_perusahaan);
			$row[] = '<p class="text-center">' . date("d-m-Y", strtotime($ListData->Tanggal)) . '</p>';
			$row[] = $status;
			$row[] = $ListData->Keterangan;

			// $row[] = '<button type="button" class="btn btn-primary" onclick="view('.$ListData->Id.')"><i class="icon ion-document"><span hidden>View</span></i></button>';
			// $row[] = '<button type="button" class="btn btn-success" onclick="edit('.$ListData->Id.')"><i class="icon ion-compose"><span hidden>Edit</span></i></button>';
			// $row[] = '<button type="submit" onclick="hapus('.$ListData->Id.')" class="btn btn-danger"><i class="icon ion-close"><span hidden>Hapus</span></i></button>';

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
			$status = $this->monev->add();
			$operation = "tambah";
			$app = "Monev CCTV IT";

			$pesan = $this->appfeedback($status, $operation, $app);
		}

		echo json_encode($pesan);
	}

	public function ajax_edit() {
		$id = $_GET['id'];
		$dataPembatalan = $this->monev->getById($id);
		$dataPT = $this->perusahaan->getById($dataPembatalan->IdPerusahaan);

		$data = array(
			'pembatalan' => $dataPembatalan,
			'perusahaan' => $dataPT,
		);

		echo json_encode($data);
	}

	public function ajax_update() {
		if (!empty($_POST)) {
			$status = $this->monev->update();
			$operation = "ubah";
			$app = "Monev CCTV IT";

			$pesan = $this->appfeedback($status, $operation, $app);
		}
		echo json_encode($pesan);
	}

}

/* End of file monevcctvit.php */
/* Location: ./application/controllers/hanggar/monevcctvit.php */