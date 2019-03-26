<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monevmoncer extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('pengawasan/monevmoncer_model', 'monev', true);
	}

	public function index() {
		$this->data['modal'] = 'pengawasan/monevumum/modal';
		$this->data['js'] = 'pengawasan/monevumum/js';

		if ($this->session->userdata('GrupMenu') == 5 || $this->session->userdata('GrupMenu') == 1) {
			if ($this->session->userdata('GrupMenu') == 1) {
				$this->data['akses'] = "admin";
			} else {
				switch ($this->session->userdata('Eselon')) {
				case 7:
					$this->data['akses'] = "pelaksana";
					break;
				case 4:
					$this->data['akses'] = "seksi";
					break;
				default:
					$this->data['akses'] = "browse";
					break;
				}
			}
		} else {
			redirect('error403');
		}

		$this->data['eselon'] = $this->session->userdata('Eselon');

		$this->load->view('pengawasan/monevumum/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("pengawasan", "Monitoring dan Evaluasi Umum");

		echo json_encode($data);
	}

	public function ajax_list() {
		//start datatable
		$list = $this->monev->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			switch ($_POST['type']) {
			case "pelaksana":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li><a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a></li>
				<li><a href="javascript:void({})" onclick="edit(' . $ListData->id . ')">Edit Laporan</a></li>
				<li><a href="javascript:void({})" onclick="validasi(' . $ListData->id . ",'hanggar'" . ')">Validasi Laporan</a></li>
				</ul></div>';
				break;
			case "seksi":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li><a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a></li>
				<li><a href="javascript:void({})" onclick="validasi(' . $ListData->id . ",'seksi'" . ')">Validasi Laporan</a></li>
				</ul></div>';
				break;
			case "browse":
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li><a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a></li>
				</ul></div>';
				break;
			default:
				$action =
				'<div class="btn-group">
				<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				ACTION
				<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
				<li><a href="javascript:void({})" onclick="cetak(' . $ListData->id . ')">Cetak Laporan</a></li>
				<li><a href="javascript:void({})" onclick="edit(' . $ListData->id . ')">Edit Laporan</a></li>
				<li><a href="javascript:void({})" onclick="hapus(' . $ListData->id . ')">Hapus Laporan</a></li>
				</ul></div>';
				break;
			}

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->NPWP;
			$row[] = strtoupper($ListData->nama_perusahaan);
			$row[] = $ListData->alamat;
			$row[] = date("F", strtotime($ListData->tglLaporan)) . " - " . date("Y", strtotime($ListData->tglLaporan));
			$row[] = $ListData->tglLaporan;
			$row[] = $action;

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

}

/* End of file monevumum.php */
/* Location: ./application/controllers/pengawasan/monevumum.php */