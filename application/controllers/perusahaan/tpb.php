<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tpb extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('perusahaan/perusahaan_model', 'perusahaan', true);
	}

	public function index($tpb = null) {
		$this->data['main_content'] = 'stakeholders/main_content';
		// $this->data['JudulPanelBesar'] = 'Upload Data';
		$this->data['js'] = 'stakeholders/js';
		$this->data['modal'] = "stakeholders/Modal";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Data Stakeholders";
		$this->data['breadcrumb_item'] = array("Stakeholders", "Data Stakeholders");
		$this->data['tpb'] = $tpb;

		$option1[''] = "--Jenis TPB--";
		$data = $this->perusahaan->GetJenisTPB()->result_array();
		foreach ($data as $key => $value) {
			$option1[$value['id']] = $value['jenis'] . " (" . $value['nama'] . ")";
		}
		$this->data['option1'] = $option1;

		$this->data['option2'] = array('' => '--Pilih Lokasi--',
			'1' => 'Di dalam Kawasan Industri',
			'2' => 'Di luar Kawasan Industri');

		$option3[''] = "--Pilih Hanggar TPB--";
		$data = $this->perusahaan->GetListHanggar()->result_array();
		foreach ($data as $key => $value) {
			$option3[$value['id']] = $value['nama'];
		}
		$this->data['option3'] = $option3;

		// $this->data['options'] = $options;
		$this->load->view('stakeholders/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("Stakeholders", "All Perusahaan");

		echo json_encode($data);
	}

	public function ajax_list() {
		//start datatable
		$list = $this->perusahaan->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->NPWP;
			$row[] = strtoupper($ListData->nama_perusahaan);
			$row[] = $ListData->alamat;
			$row[] = '<p class="text-center">' . $ListData->status . '</p>';
			$row[] = '<button type="button" class="btn btn-primary" onclick="view(' . $ListData->id_perusahaan . ')"><i class="icon ion-md-document"><span hidden>View</span></i></button>';
			$row[] = '<button type="button" class="btn btn-success" onclick="edit(' . $ListData->id_perusahaan . ')"><i class="icon ion-md-open"><span hidden>Edit</span></i></button>';
			$row[] = '<button type="submit" onclick="hapus(' . $ListData->id_perusahaan . ')" class="btn btn-danger"><i class="icon ion-close"><span hidden>Hapus</span></i></button>';

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->perusahaan->count_all(),
			"recordsFiltered" => $this->perusahaan->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function ajax_add() {
		if (!empty($_POST)) {
			$status = $this->perusahaan->add(); //Masukkan fungsi update data TPB di model
			$operation = "Tambah";
			$app = "Stakeholders";

			$pesan = $this->appfeedback($status, $operation, $app);
		}

		echo json_encode($pesan);
	}

	public function ajax_update() {
		if (!empty($_POST)) {
			$status = $this->perusahaan->update(); //Masukkan fungsi update data TPB di model
			$operation = "Ubah";
			$app = "Stakeholders";

			$pesan = $this->appfeedback($status, $operation, $app);
		}
		echo json_encode($pesan);
	}

	public function getById() {
		$data = $this->perusahaan->getById();

		echo json_encode($data);
	}

	public function getDropDown() {
		$search = $this->input->get('nama');
		$column = array('id_perusahaan', 'nama_perusahaan');
		$data = $this->perusahaan->getByNama($search, $column);

		echo json_encode($data);
	}

	public function getDropDownNPWP() {
		$search = $this->input->get('nama');
		$column = array('username', 'name');
		$data = $this->perusahaan->getNPWP($search, $column);

		echo json_encode($data);
	}

	public function getLocation() {
		$data = $this->perusahaan->getLocationTPB();

		echo json_encode($data);
	}

	public function getProvinsi() {
		$search = $this->input->get('nama');
		// $column = array('username','name');
		$data = $this->perusahaan->getProvinsi($search);

		echo json_encode($data);
	}

	public function getKabupaten() {
		if (!empty($_GET['provinsi'])) {
			$search = $this->input->get('nama');
			$data = $this->perusahaan->getKabupaten($_GET['provinsi'], $search);
		} else {
			$data = "Pilih Provinsi Terlebih Dahulu";
		}
		echo json_encode($data);
	}

	public function getKecamatan() {
		if (!empty($_GET['kabupaten'])) {
			$search = $this->input->get('nama');
			$data = $this->perusahaan->getKecamatan($_GET['kabupaten'], $search);
		} else {
			$data = "Pilih Kota/Kabupaten Terlebih Dahulu";
		}
		echo json_encode($data);
	}

	public function getKelurahan() {
		if (!empty($_GET['kecamatan'])) {
			$search = $this->input->get('nama');
			$data = $this->perusahaan->getKelurahan($_GET['kecamatan'], $search);
		} else {
			$data = "Pilih Kecamatan Terlebih Dahulu";
		}
		echo json_encode($data);
	}

	public function getLokasi() {
		if (!empty($_POST)) {
			$data = $this->perusahaan->getLokasi($_POST);
		} else {
			$data = "Data Tidak Ditemukan";
		}
		echo json_encode($data);
	}

}

/* End of file tpb.php */
/* Location: ./application/controllers/perusahaan/tpb.php */