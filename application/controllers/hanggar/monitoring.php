<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monitoring extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('hanggar/monitoring_model','monitoring',true);
		$this->load->model('hanggar/hanggar_model','hanggar',true);
	}

	public function ajax_list() {

		//start datatable
		$list = $this->monitoring->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		switch ($_POST['bulan']) {
			case '1':
			$bulan = "Januari";
			break;
			case '2':
			$bulan = "Februari";
			break;
			case '3':
			$bulan = "Maret";
			break;
			case '4':
			$bulan = "April";
			break;
			case '5':
			$bulan = "Mei";
			break;
			case '6':
			$bulan = "Juni";
			break;
			case '7':
			$bulan = "Juli";
			break;
			case '8':
			$bulan = "Agustus";
			break;
			case '9':
			$bulan = "September";
			break;
			case '10':
			$bulan = "Oktober";
			break;
			case '11':
			$bulan = "November";
			break;
			default:
			$bulan = "Desember";
			break;
		}

		

		foreach ($list as $ListData) {

			$action =
			'<div class="btn-group">
			<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			ACTION
			<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
			<li><a href="javascript:void({})" onclick="petugas(' . $ListData->IdHanggar . ')">Cek Petugas Hanggar</a></li>
			</ul></div>';
			
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->NPWP;
			$row[] = strtoupper($ListData->nama_perusahaan) ." | ". $ListData->nama_tpb ." | ". $ListData->ijin_kelola_tpb;
			$row[] = $ListData->alamat;
			$row[] = $bulan . " - " . $_POST['tahun'];
			$row[] = $action;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->monitoring->count_all(),
			"recordsFiltered" => $this->monitoring->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function ajax_listHanggar() {
		//start datatable
		$table = 'tb_petugas_hanggar_detail';
		$column_order = array(null, 'Id', 'NamaPegawai', 'Pangkat', 'NamaJabatan');
		$column_search = array('NamaPegawai');

		$list = $this->hanggar->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			$action =
			'<button type="button" class="btn btn-success" aria-expanded="false" onclick="detail(' . $ListData->IdPegawai	 . ')">DETAIL</button>';

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->NamaPegawai;
			$row[] = $ListData->Pangkat;
			$row[] = $ListData->NamaJabatan;
			$row[] = $action;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->hanggar->count_all(),
			"recordsFiltered" => $this->hanggar->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function getHanggar(){
		if (!empty($_GET)) {
			$data = $this->hanggar->getHanggarById();

			echo json_encode($data);
		}
	}

	public function getPetugas(){
		if (!empty($_GET)) {
			$data = $this->hanggar->getPegawaiById();

			echo json_encode($data);
		}
	}

	public function cetakLaporan(){
		if (!empty($_GET)) {
			$data = $this->monitoring->getReport();
			echo json_encode($_GET);
		}
	}

	public function test(){
		$data = $this->monitoring->sudahLaporan();

		echo json_encode($data);
	}

}

/* End of file monitoring.php */
/* Location: ./application/controllers/hanggar/monitoring.php */