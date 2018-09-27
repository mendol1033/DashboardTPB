<?php
if(!defined('BASEPATH'))exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Random_check extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('pengawasan/cctv_model','cctv',TRUE);
		$this->load->model('pengawasan/it_model','inventory',TRUE);
		$this->load->model('pengawasan/tpb_model','tpb',TRUE);
		$this->load->model('pengawasan/randomcheck_model','random',TRUE);
	}

	public function index()
	{
		$this->data['main_content'] = 'pengawasan/random_check/main_content';
		$this->data['js'] = 'pengawasan/random_check/js';
		$this->data['modal'] = "pengawasan/random_check/Modal";
		$this->data['css'] = null;

		$browser = array(
			'' => 'Pilih Jenis Browser',
			'Internet Explorer' => 'Internet Explorer',
			'Mozilla Firefox' => 'Mozilla Firefox',
			'Google Chrome' => 'Google Chrome',
			'Opera' => 'Opera',
			'Safari' => 'Safari',
			'Palemoon' => 'Palemoon',
			'Aplikasi Dekstop' => 'Aplikasi Dekstop',
			'Remote Dekstop' => 'Remote Dekstop',
			'Team Viewer' => 'Team Viewer'
		);

		$cctvType = array(
			'' => 'Pilih Jenis CCTV',
			'CMS' => 'CMS Any time & Any where IP Surveillance for Your Life',
			'KRISVIEW' => 'KRISVIEW',
			'WebCMS' => 'WebCMS',
			'NetSurveilenceWeb' => 'NetSurveilenceWeb',
			'NetworkVideoClient' => 'NetworkVideoClient',
			'HIKVISION' => 'HIKVISION',
			'INFINITY' => 'INFINITY',
		);

		$this->data['cctvType'] = $cctvType;
		$this->data['browserOptions'] = $browser;
		$this->load->view('pengawasan/random_check/main_content',$this->data);
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Pengawasan","Random Check");

		echo json_encode($data);
	}

	public function ajax_list(){
		//start datatable
		$list = $this->random->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData){
			if ($ListData->StatusCCTV === "Y"){
				$statusCCTV = "Aktif";
				$backgroundCCTV = "bg-green";
			} else {
				$statusCCTV = "Tidak Aktif";
				$backgroundCCTV = "bg-red";
			}

			if ($ListData->StatusInventory === "Y"){
				$statusIT = "Aktif";
				$backgroundIT = "bg-green";
			} else {
				$statusIT = "Aktif";
				$backgroundIT = "bg-red";
			}

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->NPWP;
			$row[] = $ListData->NmPerusahaan;
			$row[] = '<p class="text-center">'. $ListData->IpCCTV .'</p>';
			$row[] = '<p class="text-center '.$backgroundCCTV.'">'.$statusCCTV.'</p>';
			$row[] = '<p class="text-center">'.$ListData->IpIT.'</p>';
			// $row[] = $ListData->Password;
			$row[] = '<p class="text-center '.$backgroundIT.'">'.$statusIT.'</p>';
			$row[] = '<button type="button" class="btn btn-success" onclick="edit('.$ListData->Id.')"><i class="icon ion-md-open"><span hidden>Edit</span></i></button>';
			// $row[] = '<button type="submit" onclick="hapus('.$ListData->Id.')" class="btn btn-danger"><i class="icon ion-md-close"><span hidden>Hapus</span></i></button>';


			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->random->count_all(),
			"recordsFiltered" => $this->random->count_filtered(),
			"data" => $data,
		);
		
		echo json_encode($output);
	}

	public function ajax_add(){
		if (!empty($_POST)){
			$a = $_POST['IdPerusahaan'];
			end($a);
			$last = key($a) + 1;
			for ($i = 0; $i < $last ; $i++) {
				$post[] = array(
					'IdPerusahaan' => $_POST['IdPerusahaan'][$i],
					'IdCCTV' => $_POST['IdCCTV'][$i],
					'IdInventory' => $_POST['IdIT'][$i],
					'StatusCCTV' => $_POST['StatusCCTV'][$i],
					'StatusInventory' => $_POST['StatusIT'][$i],
					'TindakLanjut' => $_POST['tindakLanjut'][$i],
					'PtgsRekam' => $this->session->userdata('NipUser'),
				);		
			}
			$status = $this->random->add($post);
			$operation = "Tambah";
			$app = "Random Check CCTV dan IT Inventory";

			$pesan = $this->appfeedback($status,$operation,$app);
		}

		echo json_encode($pesan);
	}

	public function getRandom(){
		$data = $this->random->getRandom();

		echo json_encode($data);
	}

	public function printLaporan(){

		$spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load('vendor/template/template_laporan.xlsx');

		$worksheet = $spreadsheet->getActiveSheet();
		$drawing = new \PhpOffice\PhpSpreadsheet\Worksheet\Drawing();
		$drawing->setName('Logo');
		$drawing->setDescription('Logo');
		$drawing->setPath('vendor/template/logo.png');
		$drawing->setOffsetX(45);
		$drawing->setOffsetY(10);

		$drawing->setWorksheet($spreadsheet->getActiveSheet());

		$data = $this->random->getReportData();

		// $data = array(
		// 	array(1,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(2,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(3,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(4,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(5,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(6,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(7,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(8,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(9,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(10,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(11,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(12,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(13,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(14,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(15,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(16,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(17,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(18,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(19,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(20,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF'),
		// 	array(21,'012345678000000','PT. ABC INDONESIA','123.456.789.255','AKTIF','123.456.789.255:8080','TIDAK AKTIF')
		// );

		$worksheet->fromArray($data,NULL,'A15');
		$a = $data;
		end($a);
		$last = key($a);
		$cell = 14 + $last + 4;

		$worksheet->getCell('F'.$cell)->setValue('CIKARANG, '.date('d-m-Y'));
		$worksheet->getCell('F'.($cell+1))->setValue('PETUGAS PEMERIKSA');
		$worksheet->getCell('F'.($cell+5))->setValue($this->session->userdata('NamaPegawai'));
		$worksheet->getCell('F'.($cell+6))->setValue($this->session->userdata('NipUser'));


		// $worksheet->getCell('A14')->setValue(1);
		// $worksheet->getCell('B14')->setValue('012345678000000');
		// $worksheet->getCell('C14')->setValue('PT. ABC INDONESIA');
		// $worksheet->getCell('D14')->setValue('123.456.789.255');
		// $worksheet->getCell('E14')->setValue('AKTIF');
		// $worksheet->getCell('F14')->setValue('123.456.789.255:8080');
		// $worksheet->getCell('G14')->setValue('TIDAK AKTIF');

		$writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet,'Xlsx');

		$filename = 'Laporan Harian '.date('Y-m-d').'.xlsx';

		$writer->save('vendor/laporan_harian_cctv_it/'.$filename);
		force_download('vendor/laporan_harian_cctv_it/'.$filename,NULL);

		echo $cell;

	}

}

/* End of file random_check.php */
/* Location: ./application/controllers/pengawasan/random_check.php */