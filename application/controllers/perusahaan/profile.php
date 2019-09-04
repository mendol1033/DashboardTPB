<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('perusahaan/perusahaan_model', 'perusahaan', true);
		$this->load->model('perusahaan/barang_model', 'barang', true);
	}

	public function index() {
		$this->data['js'] = 'stakeholders/js';
		$this->data['modal'] = "stakeholders/modal_profile";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Data Stakeholders";
		$this->data['breadcrumb_item'] = array("Stakeholders", "Data Stakeholders");
		$this->data['tpb'] = $_GET['tpb'];

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
		$this->load->view('stakeholders/profile', $this->data);
	}

	public function page_info() {
		$perusahaan = $this->perusahaan->getById();
		$data['breadcrumb_item'] = array("Stakeholders", $perusahaan->nama_perusahaan);

		echo json_encode($data);
	}

}

/* End of file profile.php */
/* Location: ./application/controllers/perusahaan/profile.php */