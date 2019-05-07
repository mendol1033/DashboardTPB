<?php
if (!defined('BASEPATH')) exit ('No direct script access allowed');

class Summary extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('dashboard/dashboard_model','dashboard',true);
		$this->load->model('dokumen/dokumen_model','dokumen',true);
		$this->load->model('dokumen/dokumen23_model','dokumen23',true);
	}

	public function index()
	{
		$this->data['main_content'] = 'dashboard/main_content';
		// $this->data['JudulPanelBesar'] = 'Upload Data';
		$this->data['js'] = 'dashboard/js';
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Summary";
		$this->data['breadcrumb_item'] = array("Dashboard","Summary");
		$this->load->view('dashboard/main_content',$this->data);
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Dashboard","Summary");

		echo json_encode($data);
	}

	public function getOption(){
		$data = $this->dashboard->getOption();

		echo json_encode($data);
	}

	public function getData(){
		$jumlahDokumen = $this->dokumen->getJumlahDokumenTahunBerjalan();
		$data['jumlahDokumen'] = $jumlahDokumen;

		$dokPerBulan23 = $this->dokumen23->getDokPerbulan();
		$data['dokPerBulan23'] = $dokPerBulan23;

		echo json_encode($data);
	}

	public function getDashboard(){
		switch ($_POST['param']) {
			case "all":
			$graph = $this->dashboard->getAllDokumen();
			break;

			case "netto":
			$graph = $this->dashboard->getNetto();
			break;
			
			default:
			$graph = $this->dashboard->getCurrentDokumen();
			break;
		}
		
		$data = array(
			'graph' => $graph,
		);

		echo json_encode($data);
	}

	public function getTabel(){
		$status = $this->dashboard->getAllDokStatus();
		$outstanding = $this->dashboard->getDokOutstanding();
		$persentaseOutstanding = $this->dashboard->getJumlahStatus();
		
		$data = array(
			'status' => $status,
			'outstanding' => $outstanding,
			'pie' => $persentaseOutstanding

		);

		echo json_encode($data);
	}

	public function getDataMonev(){
		if ($_POST['url'] === "status") {
			$monev = $this->dashboard->getStatusMonevHanggar();
		} else {
			$monev = $this->dashboard->getMonevPerTPB();
		}

		echo json_encode($monev);
		
	}

}

/* End of file dashboard.php */
/* Location: ./application/controllers/dashboard/dashboard.php */