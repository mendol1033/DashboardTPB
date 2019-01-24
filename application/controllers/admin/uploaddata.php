<?php
if (!defined('BASEPATH')) exit ('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Uploaddata extends MY_Controller {



	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/uploaddata_model','dataupload',true);
		$this->load->model('dokumen/dokumen_model','dokumen',true);
		require_once APPPATH.'third_party/PHPExcel-1.8/Classes/PHPExcel.php';
		$this->excel = new PHPExcel();
	}

	public function index()
	{
		$this->data['main_content'] = 'administrator/upload_data/main_content';
		$this->data['JudulPanelBesar'] = 'Upload Data';
		$this->data['js'] = 'administrator/upload_data/js';
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Dashboard";
		$this->data['breadcrumb_item'] = array("Administrator","Upload Data");
		$this->load->view('administrator/upload_data/main_content',$this->data);
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Administrator","Upload Data");

		echo json_encode($data);
	}

	public function uploadDokumen(){
		// Cek Hak Akases Administrator
		if($this->login->CekAdminHakAkses($this->session->userdata('IdUser')) === TRUE ){
			// Cek Ada atau tidak file yang di upload
			if(!empty($_FILES["dataExcel"]["name"])){
				// proses upload file
				$dir = "assets/upload/excel/";
				$config["upload_path"] = $dir;
				$config["allowed_types"] = "xls|xlsx";
				$config["file_name"] = date("Y-m-d").'_'.rand(000000,999999);

				if (!is_dir($dir)) {
					mkdir("./assets/upload/excel/",0777,TRUE);
				}

				$this->load->library('upload', $config); 
				
				if(! $this->upload->do_upload('dataExcel')){
					echo $this->upload->display_errors();
				} else {
					$dataPost = array($_POST,$_FILES);
					$data = $this->upload->data();

					// Setelah Berhasil Upload, Proses File Excel di Server untuk di proses dengan PHPSpreadsheet
					$reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
					$reader->setReadDataOnly(true);
					$Spreadsheet = $reader->load($dir.$data['file_name']);
					$sheetCount = $Spreadsheet->getSheetCount();
					$sheetName = array("Header Dokumen", "Barang", "Barang Tarif", "Dokumen Pelengkap", "Pungutan Dokumen", "Bahan Baku", "Kemasan", "Kontainer");
					for ($i = 0; $i < $sheetCount; $i++) {
						$sheet[$sheetName[$i]] = $Spreadsheet->getSheetByName($sheetName[$i]);
						$sheetData[$i] = $sheet[$sheetName[$i]]->toArray(null,true,true,true);
						$highestRow[$i] = $sheet[$sheetName[$i]]->getHighestRow();
					}

					// Get Data Sheet 1
					if ($highestRow[0] > 1) {
						for ($i = 2; $i < $highestRow[0]; $i++) {
							$dataInput['header'][] = array(
								"NOMOR_AJU" => $sheetData[0][$i]["B"],
								"NOMOR_DAFTAR" => $sheetData[0][$i]["C"],
								"TANGGAL_DAFTAR" => $sheetData[0][$i]["D"],
								"STATUS_DOKUMEN" => $sheetData[0][$i]["E"],
								"KODE_DOKUMEN" => $sheetData[0][$i]["F"],
								"KODE_KANTOR" => $sheetData[0][$i]["G"],
								"KODE_KANTOR_BONGKAR" => $sheetData[0][$i]["H"],
								"NAMA_PEMASOK" => $sheetData[0][$i]["I"],
								"ALAMAT_PEMASOK" => $sheetData[0][$i]["J"],
								"KODE_NEGARA_PEMASOK" => $sheetData[0][$i]["K"],
								"NOMOR_IJIN_TPB" => $sheetData[0][$i]["L"],
								"TANGGAL_IJIN_TPB" => date('Y-m-d',strtotime($sheetData[0][$i]["M"])),
								"NPWP" => $sheetData[0][$i]["N"],
								"NAMA_PENGUSAHA" => $sheetData[0][$i]["O"],
								"ALAMAT_PENGUSAHA" => $sheetData[0][$i]["P"],
								"ID_PPJK" => $sheetData[0][$i]["Q"],
								"NAMA_PPJK" => $sheetData[0][$i]["R"],
								"ALAMAT_PPJK" => $sheetData[0][$i]["S"],
								"NPPPJK" => $sheetData[0][$i]["T"],
								"TANGGAL_NPPPJK" => date('Y-m-d',strtotime($sheetData[0][$i]["U"])),
								"NAMA_PENGANGKUT" => $sheetData[0][$i]["V"],
								"NOMOR_VOY_FLIGHT" => $sheetData[0][$i]["W"],
								"NOMOR_BC11" => $sheetData[0][$i]["X"],
								"TANGGAL_BC11" => date('Y-m-d',strtotime($sheetData[0][$i]["Y"])),
								"POS_BC11" => $sheetData[0][$i]["Z"],
								"KODE_TPS" => $sheetData[0][$i]["AA"],
								"KODE_VALUTA" => $sheetData[0][$i]["AB"],
								"KURS" => $sheetData[0][$i]["AC"],
								"FOB" => $sheetData[0][$i]["AD"],
								"CIF" => $sheetData[0][$i]["AE"],
								"CIF_RUPIAH" => $sheetData[0][$i]["AF"],
								"BRUTO" => $sheetData[0][$i]["AG"],
								"NETTO" => $sheetData[0][$i]["AH"],
								"JUMLAH_BARANG" => $sheetData[0][$i]["AI"],
								"KODE_TUJUAN_TPB" => $sheetData[0][$i]["AJ"],
								"JUMLAH_KONTAINER" => $sheetData[0][$i]["AK"],
								"JUMLAH_KEMASAN" => $sheetData[0][$i]["AL"],
								"ID_PENERIMA" => $sheetData[0][$i]["AM"],
								"NAMA_PENERIMA" => $sheetData[0][$i]["AN"],
								"ALAMAT_PENERIMA" => $sheetData[0][$i]["AO"],
								"NOMOR_API_PENERIMA" => $sheetData[0][$i]["AP"],
								"NOMOR_API_PEMILIK" => $sheetData[0][$i]["AQ"],
								"KODE_KANTOR_TUJUAN" => $sheetData[0][$i]["AR"],
								"NOMOR_IZIN_TPB_PENERIMA" => $sheetData[0][$i]["AS"],
								"ID_PENGIRIM" => $sheetData[0][$i]["AT"],
								"NAMA_PENGIRIM" => $sheetData[0][$i]["AU"],
								"ALAMAT_PENGIRIM" => $sheetData[0][$i]["AV"],
								"ID_IMPORTIR" => $sheetData[0][$i]["AW"],
								"NAMA_IMPORTIR" => $sheetData[0][$i]["AX"],
								"ALAMAT_IMPORTIR" => $sheetData[0][$i]["AY"],
								"NOMOR_API_IMPORTIR" => $sheetData[0][$i]["AZ"],
								"NIK" => $sheetData[0][$i]["BA"],
							);
						}
					}


		// Get Data From Sheet 2
					if($highestRow[1] > 1){
						for ($i=2; $i <= $highestRow[1] ; $i++) {
							$dataInput['barang'][] = array(
								"NOMOR_AJU" => $sheetData[1][$i]["B"],
								"HS_CODE" => $sheetData[1][$i]["C"],
								"SERI_BARANG" => $sheetData[1][$i]["D"],
								"NAMA_BARANG" => $sheetData[1][$i]["E"],
								"MERK" => $sheetData[1][$i]["F"],
								"TIPE" => $sheetData[1][$i]["G"],
								"KODE_BARANG" => $sheetData[1][$i]["H"],
								"JUMLAH_SATUAN" => $sheetData[1][$i]["I"],
								"KODE_SATUAN" => $sheetData[1][$i]["J"],
								"HARGA_SATUAN" => $sheetData[1][$i]["K"],
								"CIF" => $sheetData[1][$i]["L"],
								"CIF_RUPIAH" => $sheetData[1][$i]["M"],
								"JUMLAH_KEMASAN" => $sheetData[1][$i]["N"],
								"KODE_KEMASAN" => $sheetData[1][$i]["O"],
								"KODE_NEGARA_ASAL" => $sheetData[1][$i]["P"],
								"KODE_JENIS_NILAI" => $sheetData[1][$i]["Q"],
								"SKA" => $sheetData[1][$i]["R"]
							);
						}
					}
		// Get Data From Sheet 3
					if ($highestRow[2] > 1) {
						for ($i=2; $i <= $highestRow[2] ; $i++) { 
							$dataInput['barangTarif'][] = array(
								"NOMOR_AJU" => $sheetData[2][$i]["B"],
								"SERI_BARANG" => $sheetData[2][$i]["C"],
								"KODE_BARANG" => $sheetData[2][$i]["D"],
								"NAMA_BARANG" => $sheetData[2][$i]["E"],
								"JENIS_TARIF" => $sheetData[2][$i]["F"],
								"TARIF" => $sheetData[2][$i]["G"],
								"NILAI_BAYAR" => $sheetData[2][$i]["H"],
								"KODE_FASILITAS" => $sheetData[2][$i]["I"],
								"TARIF_FASILITAS" => $sheetData[2][$i]["J"],
								"NILAI_FASILITAS" => $sheetData[2][$i]["K"],
							);
						}
					}
		// Get Data From Sheet 4
					if ($highestRow[3] > 1) {
						for ($i=2; $i <= $highestRow[3] ; $i++) { 
							$dataInput['dokumenPelengkap'][] = array(
								"NOMOR_AJU" => $sheetData[3][$i]["B"],
								"JENIS_DOKUMEN" => $sheetData[3][$i]["C"],
								"NOMOR_DOKUMEN" => $sheetData[3][$i]["D"],
								"TANGGAL_DOKUMEN" => date('Y-m-d',strtotime($sheetData[3][$i]["E"])),
								"FLAG_TERIMA" => $sheetData[3][$i]["F"],
							);
						}
					}
		// Get Data From Sheet 5
					if ($highestRow[4] > 1) {
						for ($i=2; $i <= max(array_keys($sheetData[4])) ; $i++) { 
							$dataInput['pungutanDokumen'][] = array(
								"NOMOR_AJU" => $sheetData[4][$i]["B"],
								"JENIS_TARIF" => $sheetData[4][$i]["C"],
								"NILAI_PUNGUTAN" => $sheetData[4][$i]["D"],
								"KODE_FASILITAS" => $sheetData[4][$i]["E"],
							);
						}
					}
		// Get Data From Sheet 6
					if ($highestRow[5] > 1) {
						for ($i=2; $i <= $highestRow[5] ; $i++) { 
							$dataInput['bahanBaku'][] = array(
								"NOMOR_AJU" => $sheetData[5][$i]["B"],
								"SERI_BARANG" => $sheetData[5][$i]["C"],
								"KODE_BARANG" => $sheetData[5][$i]["D"],
								"HS_CODE" => $sheetData[5][$i]["E"],
								"JENIS_SATUAN" => $sheetData[5][$i]["F"],
								"JUMLAH_SATUAN" => $sheetData[5][$i]["G"],
								"CIF" => $sheetData[5][$i]["H"],
								"CIF_RUPIAH" => $sheetData[5][$i]["I"],
								"HARGA_PENYERAHAN" => $sheetData[5][$i]["J"],
								"JENIS_DOK_ASAL" => $sheetData[5][$i]["K"],
								"NOMOR_AJU_DOK_ASAL" => $sheetData[5][$i]["L"],
								"TANGGAL_DAFTAR_DOK_ASAL" => date('Y-m-d',strtotime($sheetData[5][$i]["M"])),
								"KODE_KANTOR" => $sheetData[5][$i]["N"],
							);
						}
					}
		// // Get Data From Sheet 7
					if ($highestRow[6] > 1) {
						for ($i=2; $i <= $highestRow[6] ; $i++) { 
							$dataInput['kemasan'][] = array(
								"NOMOR_AJU" => $sheetData[6][$i]["B"],
								"JUMLAH_KEMASAN" => $sheetData[6][$i]["C"],
								"KODE_JENIS_KEMASAN" => $sheetData[6][$i]["D"],
								"MERK_KEMASAN" => $sheetData[6][$i]["E"],
								"KETERANGAN" => $sheetData[6][$i]["F"],
								"NOMOR_POLISI" => $sheetData[6][$i]["G"],
								"NOMOR_SEGEL" => $sheetData[6][$i]["H"],
								"WAKTU_GATE_IN" =>  date('Y-m-d H:i:s',strtotime($sheetData[6][$i]["I"])),
								"NIP_GATE_IN" => $sheetData[6][$i]["J"],
								"WAKTU_GATE_OUT" =>  date('Y-m-d H:i:s',strtotime($sheetData[6][$i]["K"])),
								"NIP_GATE_OUT" => $sheetData[6][$i]["L"],
							);
						}
					}
		// Get Data From Sheet 8
					if ($highestRow[7] > 1) {
						for ($i=2; $i <= $highestRow[7] ; $i++) {
							$dataInput['kontainer'][] = array(
								"NOMOR_AJU" => $sheetData[7][$i]["B"],
								"NOMOR_KONTAINER" => $sheetData[7][$i]["C"],
								"KODE_UKURAN_KONTAINER" => $sheetData[7][$i]["D"],
								"KODE_TIPE_KONTAINER" => $sheetData[7][$i]["E"],
								"NOMOR_POLISI" => $sheetData[7][$i]["F"],
								"NOMOR_SEGEL" => $sheetData[7][$i]["G"],
								"WAKTU_GATE_IN" => date('Y-m-d H:i:s',strtotime($sheetData[7][$i]["H"])),
								"NIP_GATE_IN" => $sheetData[7][$i]["I"],
								"WAKTU_GATE_OUT" =>  date('Y-m-d H:i:s',strtotime($sheetData[7][$i]["J"])),
								"NIP_GATE_OUT" => $sheetData[7][$i]["K"],
							);
						}
					}
				}

				$status = $this->dataupload->addData($dataInput);
				if ($status === TRUE) {
					$pesan = "Berhasil Upload Data";
				} else {
					$pesan = "Gagal Upload Data";
				}

				echo json_encode(
					array(
						'pesan' => $pesan,
					)
				);
			}

		} else {
			$status = "Gagal Upload Data";
			$data = array($_POST,$_FILES);

			echo json_encode(
				array(
					'status' => $status,
				)
			);
		}
	}

	public function uploadNopen(){
		// Cek Hak Akases Administrator
		if($this->login->CekAdminHakAkses($this->session->userdata('IdUser')) === TRUE ){
			// Cek Ada atau tidak file yang di upload
			if(!empty($_FILES["dataNopen"]["name"])){
				// proses upload file
				$dir = "assets/upload/nopen/";
				$config["upload_path"] = $dir;
				$config["allowed_types"] = "xls|xlsx";
				$config["file_name"] = date("Y-m-d").'_'.rand(000000,999999);

				if (!is_dir($dir)) {
					mkdir("./assets/upload/nopen/",0777,TRUE);
				}

				$this->load->library('upload', $config); 

				if(! $this->upload->do_upload('dataNopen')){
					echo $this->upload->display_errors();
				} else {
					$dataPost = array($_POST,$_FILES);
					$data = $this->upload->data();

					// Setelah Berhasil Upload, Proses File Excel di Server untuk di proses dengan PHPSpreadsheet
					$reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
					$reader->setReadDataOnly(true);
					$Spreadsheet = $reader->load($dir.$data['file_name']);
					$sheetCount = $Spreadsheet->getSheetCount();

					for ($i = 0; $i < $sheetCount; $i++) {
						$sheet[$i] = $Spreadsheet->getSheet($i);
						$sheetData[$i] = $sheet[$i]->toArray(null,true,true,true);
						$highestRow[$i] = $sheet[$i]->getHighestRow();
					}

					if ($highestRow[0] > 1) {
						for ($i=2; $i <= $highestRow[0] ; $i++) {
							$dataInput['nopen'][] = array(
								"KODE" => $sheetData[0][$i]["A"],
								"NOMOR_DAFTAR" => $sheetData[0][$i]["B"],
								"TANGGAL_DAFTAR" => date('Y-m-d',strtotime($sheetData[0][$i]["C"])),
								"NOMOR_AJU" => $sheetData[0][$i]["D"],
								"NAMA_PERUSAHAAN" => $sheetData[0][$i]["E"],
								"NAMA_HANGGAR" => $sheetData[0][$i]["F"],
								"NPWP" => $sheetData[0][$i]["G"],
								"STATUS" => $sheetData[0][$i]["H"],
								"FLAG_SKA" => $sheetData[0][$i]["I"],
								"WAKTU_REKAM" => date('Y-m-d H:i:s',strtotime($sheetData[0][$i]["J"])),
								"ASAL_DATA" => $sheetData[0][$i]["K"],
								"JALUR" => $sheetData[0][$i]["L"],
								"KATEGORI_LAYANAN" => $sheetData[0][$i]["M"],
							);
						}
					}

					$status = $this->dataupload->addNopen($dataInput);
					if ($status === TRUE) {
						$pesan = "Berhasil Upload Data";
					} else {
						$pesan = "Gagal Upload Data";
					}

					echo json_encode(
						array(
							'pesan' => $pesan,
							'data' => $data,
							'row' => $highestRow,
							'excel' => $dataInput,
							'sheet' => $sheetData
						)
					);
				}				
			}

		} else {
			$status = "Gagal Upload Data";
			$data = array($_POST,$_FILES);

			echo json_encode(
				array(
					'status' => $status,
					'data' => $data,
				)
			);
		}
	}

}

/* End of file uploaddata.php */
/* Location: ./application/controllers/uploaddata.php */