<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pembatalan extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('hanggar/pembatalan_model','pembatalan',true);
		$this->load->model('perusahaan/perusahaan_model','perusahaan',true);
	}

	public function index()
	{	
		$this->data['JudulPanelBesar'] = 'Monitoring dan Evaluasi Pembatalan Dokumen CEISA TPB';
		$this->data['js'] = 'hanggar/pembatalan/js';
		$this->data['modal'] = "hanggar/pembatalan/Modal";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Dashboard";
		$this->data['breadcrumb_item'] = array("Hanggar","Pembatalan");

		// Dropdown list Jenis Dokumen
		$jnsDokumen = $this->menu->getJenisDokumen();
		$jnsDok[] = "Semua Dokumen";
		foreach ($jnsDokumen as $key => $value) {
			$jnsDok[$value['Kd_Dok']] = $value['Nm_Dok'];
		}
		$options = array('jnsDok' => $jnsDok);
		$this->data['options'] = $options;

		$this->load->view('hanggar/pembatalan/main_content',$this->data);	
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Hanggar","Pembatalan");

		echo json_encode($data);
	}

	public function ajax_list(){
		//start datatable
		$list = $this->pembatalan->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData){
			if(isset($ListData->IdPerusahaan)){
				$dataPT = $this->perusahaan->getById2($ListData->IdPerusahaan);
			}
			if(isset($ListData->JnsDok)){
				$jnsDok = $this->menu->getJenisDokumenByKode($ListData->JnsDok);
			}
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = strtoupper($dataPT->nama_perusahaan);
			$row[] = $jnsDok->Nm_Dok;
			$row[] = $ListData->NmrDok;
			$row[] = $ListData->TglDok;
			$row[] = $ListData->Alasan;
			$row[] = '<button type="button" class="btn btn-primary" onclick="view('.$ListData->Id.')"><i class="icon ion-document"><span hidden>View</span></i></button>';
			$row[] = '<button type="button" class="btn btn-success" onclick="edit('.$ListData->Id.')"><i class="icon ion-compose"><span hidden>Edit</span></i></button>';
			$row[] = '<button type="submit" onclick="hapus('.$ListData->Id.')" class="btn btn-danger"><i class="icon ion-close"><span hidden>Hapus</span></i></button>';


			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->pembatalan->count_all(),
			"recordsFiltered" => $this->pembatalan->count_filtered(),
			"data" => $data,
		);
		
		echo json_encode($output);
	}

	public function ajax_add(){
		if(!empty($_POST)){
			$status = $this->pembatalan->add();
			$operation = "tambah";
			$app = "pembatalan";

			$pesan = $this->appfeedback($status,$operation,$app);
		}

		echo json_encode($pesan);
	}

	public function ajax_edit(){
		$id = $_GET['id'];
		$dataPembatalan = $this->pembatalan->getById($id);
		$dataPT = $this->perusahaan->getById($dataPembatalan->IdPerusahaan);

		$data = array(
			'pembatalan' => $dataPembatalan,
			'perusahaan' => $dataPT
		);

		echo json_encode($data);
	}

	public function ajax_update(){
		if(!empty($_POST)){
			$status = $this->pembatalan->update();
			$operation = "ubah";
			$app = "pembatalan";

			$pesan = $this->appfeedback($status,$operation,$app);
		}
		echo json_encode($pesan);
	}

}

/* End of file pembatalan.php */
/* Location: ./application/controllers/hanggar/pembatalan.php */