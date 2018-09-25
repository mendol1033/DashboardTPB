<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monevceisa extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('hanggar/monevceisa_model','monev',true);
	}

	public function index()
	{
		$this->data['JudulPanelBesar'] = 'Monitoring dan Evaluasi CEISA';
		$this->data['js'] = 'hanggar/ceisa/js';
		$this->data['modal'] = "hanggar/ceisa/Modal";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Dashboard";
		$this->data['breadcrumb_item'] = array("Hanggar","CCTVIT");

		// Dropdown list Jenis Dokumen
		$jnsDokumen = $this->menu->getJenisDokumen();
		$jnsDok[] = "Semua Dokumen";
		foreach ($jnsDokumen as $key => $value) {
			$jnsDok[$value['Kd_Dok']] = $value['Nm_Dok'];
		}
		$kendala = array(
			'' => '-- Pilih Kendala Permasalahan Ceisa --',
			'1' => 'Kendala Internal Perusahaan',
			'2' => 'Kendala Server CEISA (IKC)',
			'3' => 'Kendala Akses VPN (Pusintek)'
		);

		$options = array('jnsDok' => $jnsDok,'kendala' => $kendala);
		$this->data['options'] = $options;

		$this->load->view('hanggar/ceisa/main_content',$this->data);
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Hanggar","Monev CEISA");

		echo json_encode($data);
	}

	public function ajax_list(){
		//start datatable
		$list = $this->monev->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData){
			if(isset($ListData->IdPerusahaan)){
				$dataPT = $this->perusahaan->getById2($ListData->IdPerusahaan);
			}
			switch ($ListData->Kendala) {
				case '1':
				$kendala = 'Kendala Internal Perusahaan';
				break;
				case '2':
				$kendala = 'Kendala Server CEISA (IKC)';
				break;
				default:
				$kendala = 'Kendala Akses VPN (Pusintek)';
				break;
			}

			$no++;
			$row = array();
			$row[] = '<p class="text-center">'.$no.'</p>';
			$row[] = strtoupper($dataPT->nama_perusahaan);
			$row[] = '<p class="text-center">'.date("d-m-Y",strtotime($ListData->WktMulai)).'</p>';
			$row[] = '<p class="text-center">'.date("H:i:s",strtotime($ListData->WktMulai)).'<br>'.date("H:i:s",strtotime($ListData->WktSelesai)).'</p>';
			$row[] = $kendala;
			$row[] = $ListData->DetailKendala;

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

	public function ajax_add(){
		if(!empty($_POST)){
			$status = $this->monev->add();
			$operation = "tambah";
			$app = "Laporan Kendala CEISA";

			$pesan = $this->appfeedback($status,$operation,$app);
		}

		echo json_encode($pesan);
	}

	public function ajax_edit(){
		$id = $_GET['id'];
		$dataPembatalan = $this->monev->getById($id);
		$dataPT = $this->perusahaan->getById($dataPembatalan->IdPerusahaan);

		$data = array(
			'pembatalan' => $dataPembatalan,
			'perusahaan' => $dataPT
		);

		echo json_encode($data);
	}

	public function ajax_update(){
		if(!empty($_POST)){
			$status = $this->monev->update();
			$operation = "ubah";
			$app = "Monev CCTV IT";

			$pesan = $this->appfeedback($status,$operation,$app);
		}
		echo json_encode($pesan);
	}

}

/* End of file monevceisa.php */
/* Location: ./application/controllers/hanggar/monevceisa.php */