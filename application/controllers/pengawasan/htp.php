<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Htp extends MY_Controller {

	public function __construct() {
		parent::__construct();
		//Do your magic here
		$this->load->model('pengawasan/htp_model', 'htp', TRUE);
	}

	public function index() {
		$this->data['modal'] = "pengawasan/htp/modal";
		$this->data['js'] = "pengawasan/htp/js";
		$this->load->view('pengawasan/htp/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("Pengawasan", "Survey Harga Transaksi Pasar");

		echo json_encode($data);
	}

	public function ajax_list() {
		//start datatable
		$list = $this->htp->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = date('F', strtotime($ListData->tanggalKunjungan)) . " - " . date('Y', strtotime($ListData->tanggalKunjungan));
			$row[] = strtoupper($ListData->namaToko);
			$row[] = strtoupper($ListData->pemilik);
			$row[] = strtoupper($ListData->alamat . ', ' . $ListData->kelurahan . ', ' . $ListData->kecamatan . ', ' . $ListData->kabupaten . ', ' . $ListData->provinsi);
			$row[] = '<button type="button" class="btn btn-primary" onclick="convertDMS(' . "'" . $ListData->koordinat . "'" . ')"><i class="icon ion-md-document"><span hidden>View</span></i></button>';
			$row[] = '<button type="button" class="btn btn-success" onclick="edit(' . $ListData->id . ')"><i class="icon ion-md-open"><span hidden>Edit</span></i></button>';
			$row[] = '<button type="submit" onclick="hapus(' . $ListData->id . ')" class="btn btn-danger"><i class="icon ion-close"><span hidden>Hapus</span></i></button>';

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->htp->count_all(),
			"recordsFiltered" => $this->htp->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function getPegawai() {
		if (!empty($_GET)) {
			$data = $this->htp->getPegawai();

			echo json_encode($data);
		}
	}

	public function getNip() {
		if (!empty($_GET)) {
			$data = $this->htp->getNip();

			echo json_encode($data);
		}
	}

	public function ajax_add() {
		if (!empty($_POST)) {
			$status = $this->htp->add();

			if ($status === TRUE) {
				$pesan = "Data berhasil disimpan";
			} else {
				$pesan = "Data gagal disimpan";
			}

			$data = array('pesan' => $pesan);

			echo json_encode($data);
		}
	}

	public function ajax_update() {

	}

	public function getProvinsi() {
		$search = $this->input->get('nama');
		// $column = array('username','name');
		$data = $this->htp->getProvinsi($search);

		echo json_encode($data);
	}

	public function getKabupaten() {
		if (!empty($_GET['provinsi'])) {
			$search = $this->input->get('nama');
			$data = $this->htp->getKabupaten($_GET['provinsi'], $search);
		} else {
			$data = "Pilih Provinsi Terlebih Dahulu";
		}
		echo json_encode($data);
	}

	public function getKecamatan() {
		if (!empty($_GET['kabupaten'])) {
			$search = $this->input->get('nama');
			$data = $this->htp->getKecamatan($_GET['kabupaten'], $search);
		} else {
			$data = "Pilih Kota/Kabupaten Terlebih Dahulu";
		}
		echo json_encode($data);
	}

	public function getKelurahan() {
		if (!empty($_GET['kecamatan'])) {
			$search = $this->input->get('nama');
			$data = $this->htp->getKelurahan($_GET['kecamatan'], $search);
		} else {
			$data = "Pilih Kecamatan Terlebih Dahulu";
		}
		echo json_encode($data);
	}

}

/* End of file htp.php */
/* Location: ./application/controllers/pengawasan/htp.php */