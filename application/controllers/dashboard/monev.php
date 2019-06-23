<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monev extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('dashboard/monev_model','monev',true);
	}

	public function index()
	{
		$this->data['main_content'] = 'dashboard/monev/main_content';
		// $this->data['JudulPanelBesar'] = 'Upload Data';
		$this->data['js'] = 'dashboard/monev/js';
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Summary";
		$this->data['breadcrumb_item'] = array("Dashboard","Summary");
		$this->load->view('dashboard/monev/main_content',$this->data);
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Dashboard","Report Monev Hanggar");

		echo json_encode($data);
	}

	public function monthlyReport(){
		$this->data['js'] = 'dashboard/monev/js_bulanan';
		$this->load->view('dashboard/monev/bulanan',$this->data);
	}

	public function yearlyReport(){
		$this->data['js'] = 'dashboard/monev/js_tahunan';
		$this->load->view('dashboard/monev/tahunan',$this->data);
	}

	public function getBarChartData(){
		$data = $this->monev->getBarChart();
		echo json_encode($data);
	}

	public function getTableData(){
		$data = $this->monev->getTable();

		echo json_encode($data);
	}

	public function getPieChartData(){
		$data = $this->monev->getPieChart();
		$tpb = $this->monev->getCountAllTPB();
		$chartData = array();

		for ($i=1; $i < 20 ; $i++) {
		if ($i === 12) {
		 	$ind = "TIDAK PEMBEKUAN";
		 } else {
		 	$ind = "TIDAK ADA DATA";
		 }
			$chartData['ITEM_'.$i] = array($data[0]['kode_ref']=>(int)$data[0]['ITEM_'.$i], $data[1]['kode_ref']=>(int)$data[1]['ITEM_'.$i], $ind => ((int)$tpb['JUMLAH']-((int)$data[0]['ITEM_'.$i] + (int)$data[1]['ITEM_'.$i])));
		}

		echo json_encode(array($chartData,$tpb));
	}

}

/* End of file monev.php */
/* Location: ./application/controllers/dashboard/monev.php */