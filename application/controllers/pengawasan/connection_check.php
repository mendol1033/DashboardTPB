<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Connection_check extends MY_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('pengawasan/cctv_model', 'cctv', TRUE);
		$this->load->model('pengawasan/it_model', 'inventory', TRUE);
		$this->load->model('pengawasan/tpb_model', 'tpb', TRUE);
		$this->load->model('pengawasan/connectioncheck_model', 'check', TRUE);
	}

	public function index() {
		$hanggar = $this->check->getHanggar();
		$this->data['js'] = 'pengawasan/koneksi/js';
		$this->data['modal'] = "pengawasan/koneksi/Modal";
		$this->data['hanggar'] = $hanggar;
		$this->load->view('pengawasan/koneksi/main_content', $this->data);
	}

	public function page_info() {
		$data['breadcrumb_item'] = array("Pengawasan", "Connection Check");

		echo json_encode($data);
	}

	public function ajax_list() {
		//start datatable
		$list = $this->check->GetDataTable();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {
			$date = date_create($ListData->TglRekam);

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->Type;
			$row[] = date_format($date, "Y-m-d");
			$row[] = $ListData->Jumlah;
			$row[] = $ListData->JumlahAktif;
			$row[] = $ListData->JumlahTidakAktif;
			$row[] = '<div class="btn-group"><button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ACTION<span class="caret"></span></button><ul class="dropdown-menu"><li><a href="javascript:void({})" onclick="kirim(' . $ListData->id . ')">Kirim Notifikasi</a></li></ul></div>';
			$row[] = $ListData->id;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->check->count_all(),
			"recordsFiltered" => $this->check->count_filtered(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function ajax_list_isi() {
		//start datatable
		$list = $this->check->GetDataTable2();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $ListData) {

			if ($ListData->StatusAkses == "Y") {
				$status = "AKTIF";
			} else {
				$status = "TIDAK AKTIF";
			}

			if ($ListData->Hasil == 0) {
				$hasil = "AKTIF";
			} else {
				$hasil = "TIDAK AKTIF";
			}

			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $ListData->NPWP;
			$row[] = strtoupper($ListData->NmPerusahaan);
			$row[] = $ListData->NoSkepAkhir;
			$row[] = $ListData->AlamatAkses;
			$row[] = $ListData->Browser;
			$row[] = $ListData->Ip;
			$row[] = $status;
			$row[] = $hasil;
			$row[] = '<div class="btn-group"><button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ACTION<span class="caret"></span></button><ul class="dropdown-menu"><li><a href="javascript:void({})" onclick="edit(' . $ListData->id . ')">Edit User</a></li><li><a href="javascript:void({})" onclick="getGraph(' . $ListData->id . ')">Cek History</a></li></ul></div>';
			$row[] = $ListData->id;

			$data[] = $row;
		}

		$output = array(
			"draw" => $_POST['draw'],
			"recordsTotal" => $this->check->count_all2(),
			"recordsFiltered" => $this->check->count_filtered2(),
			"data" => $data,
		);

		echo json_encode($output);
	}

	public function ip_test() {
		if ($_POST['hanggar'] == null) {
			echo json_encode("Pilih Hanggar");
		} else {
			
			$data = $this->check->getAll();
			$hasil = array();
			for ($i = 0; $i < count($data); $i++) {

				if (substr($data[$i]['IpAddress'], 0,4) == "http") {
					$url = $data[$i]['IpAddress'];
				} else {
					$url = "http://" . $data[$i]['IpAddress'];
				}

				$ch = curl_init($url);
				curl_setopt($ch, CURLOPT_TIMEOUT, 5);
				curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
				$datach = curl_exec($ch);
				$httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
				curl_close($ch);
				if ($httpcode >= 200 && $httpcode < 300) {
					$ret_val = 0;
					$hasil[$i]['Ip'] = $url;
				} else {
					$ip = preg_split("/[ :| \/]/", $data[$i]['IpAddress']);
					exec('ping -c 1' . $ip[0], $output, $ret_val);
					$hasil[$i]['Ip'] = $ip[0];
				}

				$hasil[$i]['IdPerusahaan'] = $data[$i]['IdPerusahaan'];
				$hasil[$i]['NPWP'] = $data[$i]['NPWP'];
				$hasil[$i]['NamaPerusahaan'] = $data[$i]['NmPerusahaan'];
				$hasil[$i]['Skep'] = $data[$i]['NoSkepAkhir'];
				$hasil[$i]['Browser'] = $data[$i]['Browser'];
				$hasil[$i]['IpAddress'] = $data[$i]['IpAddress'];
				$hasil[$i]['Status'] = $data[$i]['Status'];
			// $hasil[$i]['output'] = $output;
				$hasil[$i]['result'] = $ret_val;
				$hasil[$i]['data_curl'] = $datach;
				$hasil[$i]['httpcode'] = $httpcode;
			}

			$status = $this->check->post($hasil, $_POST['type']);

			if ($status === TRUE) {
				echo json_encode('DATA BERHASIL DISMIPAN');
			} else {
				echo json_encode('DATA GAGAL DISIMPAN');
			}
		}

	}

	public function kirimNotifikasi() {
		$data = $this->check->getPerusahaanTidakAktif();
		date_default_timezone_set("Asia/Jakarta");
		$t = time();
		$time = date("H", $t);
		$m = array();

		foreach ($data as $key => $value) {
			if ((int) $time >= 5 && (int) $time < 10) {
				$message = "Selamat Pagi";
			} elseif ((int) $time >= 10 && (int) $time < 15) {
				$message = "Selamat Siang";
			} elseif ((int) $time >= 15 && (int) $time < 19) {
				$message = "Selamat Sore";
			} else {
				$message = "Selamat Malam";
			}
			// Send Message
			$my_apikey = "1Z7VFNUETGBWX2Y52FC7";
			$destination = "6285857784237";
			$message .= " Exim PT. " . $value['NmPerusahaan'];
			$message .= " Diberitahukan Bahwa CCTV " . $value['Detail Referensi'];
			$message .= " Dengan Alamat " . $value['IpAddress'];
			$message .= " Yang Dibuka Dengan Aplikasi " . $value['Browser'];
			$message .= " Saat Ini Tidak Dapat Diakses, Dimohon Kerjasamanya Untuk Update Status CCTV Tersebut Ke Nomor Ini";
			$message .= " Atau Nomor Petugas P2 Yang anda Kenal.";
			$message .= " Demikian Info Ini Disampaikan, dan Mohon Segera Ditindaklanjuti. Terima Kasih";
			$api_url = "http://panel.rapiwha.com/send_message.php";
			$api_url .= "?apikey=" . urlencode($my_apikey);
			$api_url .= "&number=" . urlencode($destination);
			$api_url .= "&text=" . urlencode($message);
			$my_result_object = json_decode(file_get_contents($api_url, false));
			// echo "<br>Result: " . $my_result_object->success;
			// echo "<br>Description: " . $my_result_object->description;
			// echo "<br>Code: " . $my_result_object->result_code;
			$m[] = $my_result_object;
		}

		echo json_encode($m);
	}

}

/* End of file connection_check.php */
/* Location: ./application/controllers/pengawasan/connection_check.php */