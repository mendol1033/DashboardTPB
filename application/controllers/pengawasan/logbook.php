<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logbook extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('pengawasan/logbook_model','logbook',true);
	}

	public function index() {
		$this->data['modal'] = 'pengawasan/logbook/modal';
		$this->data['js'] = 'pengawasan/logbook/js';

		$this->data['eselon'] = $this->session->userdata('Eselon');

		$this->load->view('pengawasan/logbook/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("Pengawasan", "Logbook");

		echo json_encode($data);
	}

	public function ajax_list() {
		//start datatable
		$list = $this->logbook->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			switch ($ListData->type) {
				case '1':
					$type = "CCTV";
					break;
				case '2':
					$type = "IT INVENTORY";
					break;
				
				default:
					$type = "E-SEAL";
					break;
			}

			$action = '<div class="btn-group">
			<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			ACTION
			<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
			<li><a href="javascript:void({})" onclick="lihat(' . $ListData->id . ')">Lihat Log</a></li>
			<li><a href="javascript:void({})" onclick="edit(' . $ListData->id . ')">Edit Log</a></li>
			</ul></div>';

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $type;
			$row[] = strtoupper($ListData->nama_perusahaan ." | ".$ListData->nama_tpb." | ".$ListData->ijin_kelola_tpb);
			$row[] = $ListData->tglLaporan;
			$row[] = $ListData->isiLaporan;
			$row[] = $action;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->logbook->count_all(),
			"recordsFiltered" => $this->logbook->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function ajax_add(){
		$status = $this->logbook->add();

		if ($status = TRUE) {
			$pesan = "Data Logbook Berhasil Direkam";
		} else {
			$pesan = "Data Logbook Gagal Direkam";
		}

		echo json_encode($pesan);
	}

	public function ajax_update(){
		$status = $this->logbook->update();

		if ($status = TRUE) {
			$pesan = "Data Logbook Berhasil Diubah";
		} else {
			$pesan = "Data Logbook Gagal Diubah";
		}

		echo json_encode($pesan);
	}

	public function getById(){
		$data = $this->logbook->getById();

		echo json_encode($data);
	}

	public function deletepic(){
		$d = $this->logbook->deletepic();

		if ($d['status'] === FALSE) {
			$data = array(
				"status" => $d['status'],
				"pesan" => "Data Foto Logbook Gagal  Dihapus"
			);
		} else {
			$data = array(
				"status" => $d['status'],
				"pesan" => "Data Foto Logbook Berhasil Dihapus",
				"data" => $d['data']
			);
		}

		echo json_encode($data);
	}

}

/* End of file logbook.php */
/* Location: ./application/controllers/pengawasan/logbook.php */