<?php
if (!defined('BASEPATH'))exit('No direct script access allowed');

class Tpb extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('pengawasan/tpb_model','tpb_data',true);
	}

	public function index()
	{
		$this->data['main_content'] = 'pengawasan/tpb/main_content';
		// $this->data['JudulPanelBesar'] = 'Upload Data';
		$this->data['js'] = 'pengawasan/tpb/js';
		$this->data['modal'] = "pengawasan/tpb/Modal";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Data Perusahaan";
		$this->data['breadcrumb_item'] = array("Pengawasan","Data Perusahaan");

		$options = array();
		$referensiFasTPB = $this->tpb_data->getReferensi("Fasilitas");
		foreach ($referensiFasTPB as $key => $value) {
			$fasTPB[$value['IdReferensi']] = $value['NmReferensi']; 
		}

		$referensiJnsTPB = $this->tpb_data->getReferensi("Jenis");
		foreach ($referensiJnsTPB as $key => $value) {
			$jenisTPB[$value['IdReferensi']] = $value['NmReferensi']; 
		}

		$referensiProfil = $this->tpb_data->getReferensi("ProfilResiko");
		foreach ($referensiProfil as $key => $value) {
			$ProfilResiko[$value['IdReferensi']] = $value['NmReferensi']; 
		}

		$referensiLokasi = $this->tpb_data->getReferensi("Lokasi");
		foreach ($referensiLokasi as $key => $value) {
			$Lokasi[$value['IdReferensi']] = $value['NmReferensi']; 
		}

		$options['fasTPB'] = $fasTPB;
		$options['jenisTPB'] = $jenisTPB;
		$options['ProfilResiko'] = $ProfilResiko;
		$options['Lokasi'] = $Lokasi;

		$this->data['options'] = $options;
		$this->load->view('pengawasan/tpb/main_content',$this->data);
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Pengawasan","Data Perusahaan");

		echo json_encode($data);
	}

	public function ajax_list(){
		//start datatable
		$list = $this->tpb_data->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData){
			if($ListData->Status == "Y"){
				$Status = "Aktif";
				$background = "bg-green";
			} else {
				$Status = "Tidak Aktif";
				$background = "bg-red";
			}

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->NPWP;
			$row[] = strtoupper($ListData->NmPerusahaan);
			$row[] = $ListData->AlamatPabrik;
			$row[] = '<p class="text-center '.$background.'">'.$Status.'</p>';
			$row[] = '<button type="button" class="btn btn-primary" onclick="view('.$ListData->IdPerusahaan.')"><i class="icon ion-md-document"><span hidden>View</span></i></button>';
			$row[] = '<button type="button" class="btn btn-success" onclick="edit('.$ListData->IdPerusahaan.')"><i class="icon ion-md-open"><span hidden>Edit</span></i></button>';
			$row[] = '<button type="submit" onclick="hapus('.$ListData->IdPerusahaan.')" class="btn btn-danger"><i class="icon ion-close"><span hidden>Hapus</span></i></button>';


			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->tpb_data->count_all(),
			"recordsFiltered" => $this->tpb_data->count_filtered(),
			"data" => $data,
		);
		
		echo json_encode($output);
	}

	public function ajax_add(){
		if(!empty($_POST)){
			$status = $this->tpb_data->add(); //Masukkan fungsi update data TPB di model
			$operation = "Tambah";
			$app = "Tempat Penimbunan Berikat";

			$pesan = $this->appfeedback($status,$operation,$app);
		}

		echo json_encode($pesan);
	}

	public function ajax_update(){
		if(!empty($_POST)){
			$status = $this->tpb_data->update(); //Masukkan fungsi update data TPB di model
			$operation = "Ubah";
			$app = "Tempat Penimbunan Berikat";

			$pesan = $this->appfeedback($status,$operation,$app);
		}
		echo json_encode($pesan);
	}

	public function getById(){
		$data = $this->tpb_data->getById();

		echo json_encode($data);
	}
}

/* End of file tpb.php */
/* Location: ./application/controllers/pengawasan/tpb.php */