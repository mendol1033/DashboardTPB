<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Htp extends MY_Controller {

	public function __construct() {
		parent::__construct();
		//Do your magic here
		$this->load->model('pengawasan/htp_model', 'htp', TRUE);
	}

	public function index() {
		$this->data['modal'] = "pengawasan/htp/modal";
		$this->data['js'] = "pengawasan/htp/js";
		$this->load->view('pengawasan/htp/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("Pengawasan", "Survey Harga Transaksi Pasar");

		echo json_encode($data);
	}

	public function getPegawai() {
		if (!empty($_GET)) {
			$data = $this->htp->getPegawai();

			echo json_encode($data);
		}
	}

	public function getNip() {
		if (!empty($_GET)) {
			$data = $this->htp->getNip();

			echo json_encode($data);
		}
	}

}

/* End of file htp.php */
/* Location: ./application/controllers/pengawasan/htp.php */