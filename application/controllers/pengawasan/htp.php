<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Htp extends MY_Controller {

	public function __construct() {
		parent::__construct();
		//Do your magic here
		$this->load->model('pengawasan/htp_model', 'htp', TRUE);
		$this->load->model('pengawasan/htp_detail_model', 'htp_detail', TRUE);
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
			$row[] = strtoupper($ListData->nmrKuisioner);
			$row[] = strtoupper($ListData->namaToko);
			$row[] = strtoupper($ListData->pemilik);
			$row[] = strtoupper($ListData->alamat . ', ' . $ListData->kelurahan . ', ' . $ListData->kecamatan . ', ' . $ListData->kota . ', ' . $ListData->provinsi);
			$row[] = '<button type="button" class="btn btn-primary" onclick="view(' . $ListData->id . ')"><i class="icon ion-md-document"><span hidden>View</span></i></button>';
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

	public function ajax_list_detail($id = null) {
		//start datatable
		$list = $this->htp_detail->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = strtoupper($ListData->merk);
			$row[] = strtoupper($ListData->namaPabrik);
			$row[] = strtoupper($ListData->lokasiPabrik);
			$row[] = 'Rp' . number_format($ListData->hargaJual, 2, ',', '.');
			$row[] = $ListData->tahunPita;
			$row[] = 'Rp' . number_format($ListData->tarif, 2, ',', '.');
			$row[] = 'Rp' . number_format($ListData->hje, 2, ',', '.');
			$row[] = strtoupper($ListData->jenisHT);
			$row[] = $ListData->isi;
			$row[] = number_format($ListData->jmlhKemasan, 0, ',', '.');
			$row[] = $ListData->keterangan;
			$row[] = '<button type="submit" onclick="hapusRokok(' . $ListData->id . ')" class="btn btn-danger"><i class="fas fa-eraser"><span hidden>Hapus</span></i></button>';

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->htp_detail->count_all(),
			"recordsFiltered" => $this->htp_detail->count_filtered(),
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

	public function ajax_edit(){
		if (!empty($_GET)) {
			$data = $this->htp->getKuisionerById();

			echo json_encode($data);
		}
	}

	public function ajax_update() {
		if (!empty($_POST)) {
			$status = $this->htp->update();

			if ($status === TRUE) {
				$pesan = "Data berhasil diubah";
			} else {
				$pesan = "Data gagal diubah";
			}

			$data = array(
				'pesan' => $pesan,
			);

			echo json_encode($data);
		}
	}

	public function ajax_add_rokok(){
		if(!empty($_POST)){
			$status = $this->htp->addRokok();

			if ($status === TRUE) {
				$pesan = "Data Rokok Berhasil Ditambah";
			} else {
				$pesan = "Data Rokok Gagal Ditambah";
			}

			$data = array('pesan' => $pesan);

			echo json_encode($data);
		}
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

	public function printKuisioner(){

		$spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load('vendor/template/template_kuisioner_htp.xlsx');

		$worksheet = $spreadsheet->getActiveSheet();
		// $drawing = new \PhpOffice\PhpSpreadsheet\Worksheet\Drawing();

		// $drawing->setWorksheet($spreadsheet->getActiveSheet());

		$dataHeader = $this->htp->getReportHeader();

		$data = $this->htp->getReportData();

		$worksheet->setCellValue('D3', $dataHeader['KPPBC']);
		$worksheet->setCellValue('D4', $dataHeader['ftz']);
		$worksheet->setCellValue('D5', $dataHeader['toko']);
		$worksheet->setCellValue('D6', $dataHeader['alamat']);
		$worksheet->setCellValue('D7', $dataHeader['provinsi']);
		$worksheet->setCellValue('D8', $dataHeader['kota']);
		$worksheet->setCellValue('D9', $dataHeader['kecamatan']);
		$worksheet->setCellValue('D10', $dataHeader['kelurahan']);
		$worksheet->setCellValue('D11', $dataHeader['tanggal']);
		$worksheet->setCellValue('D12', $dataHeader['surveyor']);
		$worksheet->setCellValue('K4', $dataHeader['nmrKuisioner']);
		$worksheet->setCellValue('K12', $dataHeader['nama']);

		$worksheet->fromArray($data,NULL,'A16');
		// $lastCell = sizeof($data)+15;

		// for ($i = 15; $i < $lastCell ; $i++) {
		// 	$spreadsheet->getActiveSheet()->getRowDimension($i)->setRowHeight(45);	
		// }

		// $a = $data;
		// end($a);
		// $last = key($a);
		// $cell = 15 + $last + 4;


		$writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet,'Xlsx');

		$filename = 'Kuisioner '.$dataHeader['nmrKuisioner'].'.xlsx';

		$writer->save('vendor/report/'.$filename);
		force_download('vendor/report/'.$filename,NULL);

		// echo $cell;

	}

	public function test(){
		$data = $this->htp->test();

		echo json_encode($data);
	}

}

/* End of file htp.php */
/* Location: ./application/controllers/pengawasan/htp.php */