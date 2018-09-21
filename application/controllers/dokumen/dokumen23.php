<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dokumen23 extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('dokumen/dokumen23_model','bc',true);
	}

	public function index()
	{
		$this->data['JudulPanelBesar'] = 'Dokumen BC 2.3';
		$this->data['js'] = 'dokumen/jsdokumen23';
		// $this->data['modal'] = "dokumen/modal23";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Dashboard";
		$this->data['breadcrumb_item'] = array("Dokumen","BC 2.3");

		// Dropdown list Jenis Dokumen
		$jnsDokumen = $this->menu->getJenisDokumen();
		$jnsDok[] = "Semua Dokumen";
		foreach ($jnsDokumen as $key => $value) {
			$jnsDok[$value['Kd_Dok']] = $value['Nm_Dok'];
		}
		$options = array('jnsDok' => $jnsDok);
		$this->data['options'] = $options;

		$this->load->view('dokumen/main_content',$this->data);
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Dokumen","BC 2.3");

		echo json_encode($data);
	}

	public function ajax_list(){
		$list = $this->bc->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData){
			$dataHeader = $this->dokumen->getByAju($ListData->NOMOR_AJU);

			$no++;
			$row = array();
			$row[] = '<p class="text-center">'.$no.'</p>';
			$row[] = strtoupper($ListData->NOMOR_DAFTAR);
			$row[] = '<p class="text-center">'.date("d-m-Y",strtotime($ListData->TANGGAL_DAFTAR)).'</p>';
			$row[] = $ListData->NAMA_PERUSAHAAN;
			$row[] = $dataHeader->NAMA_PEMASOK;
			$row[] = $ListData->STATUS;

			$row[] = '<button type="button" class="btn btn-primary" onclick="view('.$ListData->NOMOR_AJU.')"><i class="icon ion-document"><span hidden>View</span></i></button>';
			// $row[] = '<button type="button" class="btn btn-success" onclick="edit('.$ListData->Id.')"><i class="icon ion-compose"><span hidden>Edit</span></i></button>';
			// $row[] = '<button type="submit" onclick="hapus('.$ListData->Id.')" class="btn btn-danger"><i class="icon ion-close"><span hidden>Hapus</span></i></button>';


			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->bc->count_all(),
			"recordsFiltered" => $this->bc->count_filtered(),
			"data" => $data,
		);
		
		echo json_encode($output);
	}

}

/* End of file dokumen23.php */
/* Location: ./application/controllers/dokumen/dokumen23.php */