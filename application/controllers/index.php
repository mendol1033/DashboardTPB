<?php
if(!defined('BASEPATH'))exit('No direct script access allowed');

class Index extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('perusahaan/perusahaan_model','perusahaan',TRUE);
	}

	public function index()
	{	
		$this->data['app'] = "DASHBOARD";
		$this->data['breadcrumb'] = "menu";
		$this->data['title'] = "DASHBOARD TPB";
		$this->data['main_content'] = null;
		$this->load->view('template/template',$this->data);
	}

	public function getLocation(){
		$data = $this->perusahaan->getLocationTPB();

		echo json_encode($data);
	}

}

/* End of file index.php */
/* Location: ./application/controllers/index.php */