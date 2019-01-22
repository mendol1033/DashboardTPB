<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Guber extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('perusahaan/perusahaan_model','perusahaan',true);
	}

	public function index()
	{
		$this->data['main_content'] = 'stakeholders/main_content';
		// $this->data['JudulPanelBesar'] = 'Upload Data';
		$this->data['js'] = 'stakeholders/guberJs';
		$this->data['modal'] = "stakeholders/Modal";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Data Stakeholders";
		$this->data['breadcrumb_item'] = array("Stakeholders","Data Stakeholders");

		$option1[''] = "--Jenis TPB--";
		$data = $this->perusahaan->GetJenisTPB()->result_array();
		foreach ($data as $key => $value) {
			$option1[$value['id']] = $value['jenis']." (".$value['nama'].")";
		}
		$this->data['option1'] = $option1;

		$this->data['option2'] = array('' => '--Pilih Lokasi--',
			'1' => 'Di dalam Kawasan Industri',
			'2' => 'Di luar Kawasan Industri' );

		$option3[''] = "--Pilih Hanggar TPB--";
		$data = $this->perusahaan->GetListHanggar()->result_array();
		foreach ($data as $key => $value) {
			$option3[$value['id']] = $value['nama'];
		}
		$this->data['option3'] = $option3;

		// $this->data['options'] = $options;
		$this->load->view('stakeholders/main_content',$this->data);
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Stakeholders","Gudang Berikat");

		echo json_encode($data);
	}
}

/* End of file guber.php */
/* Location: ./application/controllers/perusahaan/guber.php */