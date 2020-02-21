<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('perusahaan/perusahaan_model', 'perusahaan', true);
		$this->load->model('perusahaan/barang_model', 'barang', true);
		$this->load->model('perusahaan/subkon_model','subkon',true);
		$this->load->model('pengawasan/cctv_model','cctv',true);
		$this->load->model('pengawasan/it_model','it',true);
		$this->load->model('pengawasan/eseal_model','eseal',true);
	}

	public function index() {
		$this->data['js'] = 'stakeholders/js_profile';
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
		$this->data['idperusahaan'] = $_GET['id'];
		$this->data['idtpb'] = $_GET['tpb'];
		$pt = $this->perusahaan->getById();

		$userdata = array(
			'idperusahaan' => $pt->id_perusahaan,
			'NPWP' => $pt->NPWP
		);

		$this->session->set_userdata($userdata);

		// $this->data['options'] = $options;
		$this->load->view('stakeholders/profile', $this->data);
	}

	public function page_info() {
		$perusahaan = $this->perusahaan->getById();
		$data['breadcrumb_item'] = array("Stakeholders", $perusahaan->nama_perusahaan);

		echo json_encode($data);
	}

	public function getById() {
		$data = $this->perusahaan->getById();

		echo json_encode($data);
	}

	public function ajax_list_barang($id = null) {
		//start datatable
		$list = $this->barang->GetDataTable($id);
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = strtoupper($ListData->nama_produk);
			$row[] = strtoupper($ListData->merk);
			$row[] = $ListData->hs_code;
			$row[] = '<img src="' . base_url() . 'assets/upload/tpb/barang/' . $ListData->foto . '" style="width: 100%" class="text-center">';
			$row[] = '<button type="button" class="btn btn-primary" onclick="view(' . $ListData->id_produk . ')"><i class="icon ion-md-document"><span hidden>View</span></i></button>';
			$row[] = '<button type="button" class="btn btn-success" onclick="edit(' . $ListData->id_produk . ')"><i class="icon ion-md-open"><span hidden>Edit</span></i></button>';
			$row[] = '<button type="submit" onclick="hapus(' . $ListData->id_produk . ')" class="btn btn-danger"><i class="icon ion-close"><span hidden>Hapus</span></i></button>';

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->barang->count_all($id),
			"recordsFiltered" => $this->barang->count_filtered($id),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function ajax_list_subkon(){
		//start datatable
		$list = $this->subkon->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = 'S-'.$ListData->agd.'/WBC.09/KPP.MP.07/'.$ListData->thn;
			$row[] = $ListData->tglagenda;
			$row[] = $ListData->nmr;
			$row[] = $ListData->isi;
			$row[] = '<button type="button" class="btn btn-primary" onclick="subkonCount(' ."'".  $ListData->IDSurat ."'". ')"><i class="icon ion-md-document"><span hidden>View</span></i></button>';

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->subkon->count_all(),
			"recordsFiltered" => $this->subkon->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function getDataSubkontrak(){
		$data = $this->subkon->getDataSubkontrak();

		$dataSurat = array(
			'NOMOR SURAT' => "S-".$data['surat']['agd']."/WBC.09/KPP.MP.07/".$data['surat']['thn'],
			'TANGGAL SURAT' =>  $data['surat']['tglagenda'],
			'PERIHAL' => $data['surat']['isi'],
			'NOMOR PERMOHONAN' => $data['surat']['nmr'],
			'NPWP TPB' => $data['header']['UsahaNpwp'],
			'NAMA TPB' => $data['header']['UsahaNama'],
			'ALAMAT' => $data['header']['UsahaAlmt'],
			'NILAI JAMINAN' =>  "Rp. ". number_format($data['header']['niljaminan'],2,',','.'),
		);

		$dataPenerima = array(
			'NPWP PENERIMA' => $data['penerima']['PenerimaNpwp'],
			'NAMA PENERIMA' => $data['penerima']['PenerimaNama'],
			'ALAMAT PENERIMA' => $data['penerima']['PenerimaAlmt'],
			'SKEP PENERIMA' => $data['penerima']['PenerimaNoSkep'],
			'NOMOR KONTRAK' => $data['penerima']['NoKontrak'],
			'PEKERJAAN' => $data['penerima']['Pekerjaan'],
			'TANGGAL KONTRAK' => $data['penerima']['TgKontrak'],
			'TANGGAL SELESAI' => $data['penerima']['tgselesai']
		);

		echo json_encode(array('raw' => $data, 'head' => $dataSurat, 'penerima' => $dataPenerima));
	}

}

/* End of file profile.php */
/* Location: ./application/controllers/perusahaan/profile.php */