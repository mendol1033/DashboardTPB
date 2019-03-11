<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->dashboard = $this->load->database('tpb',true);
	}

	public function getOption(){
		$query = "SELECT DISTINCT YEAR(TANGGAL_DAFTAR) AS TAHUN FROM tpb_header ORDER BY TAHUN DESC";
		$tahun = $this->dashboard->query($query)->result_array();
		$year[0] = "TAHUN";

		foreach ($tahun as $key => $value) {
			foreach ($value as $key1 => $value1) {
				$year["'".$value1."'"] = $value1;
			}
		}

		$query = "SELECT DISTINCT KODE FROM tpb_nopen";
		$kode_dok = $this->dashboard->query($query)->result_array();
		$kodeDok[0] = "DOKUMEN";

		foreach ($kode_dok as $key => $value) {
			foreach ($value as $key1 => $value1) {
				$kodeDok[$value1] = "BC " . $value1;
			}
		}

		$query = "SELECT DISTINCT NAMA_HANGGAR FROM tpb_nopen ORDER BY NAMA_HANGGAR ASC";
		$tpb = $this->dashboard->query($query)->result_array();
		$hanggar[0] = "HANGGAR TPB";

		foreach ($tpb as $key => $value) {
			foreach ($value as $key1 => $value1) {
				$hanggar[$value1] = $value1;
			}
		}

		$data = array(
			'tahun' => $year,
			'kodeDok' => $kodeDok,
			'hanggar' => $hanggar,
		);
		return $data;
	}

	public function getAllDokumen(){

		// Get MonthName
		$query = 'SELECT MONTHNAME(TANGGAL_DAFTAR) AS BULAN FROM tpb_nopen GROUP BY MONTH(TANGGAL_DAFTAR)';
		$bulan = $this->dashboard->query($query)->result_array();

		if (count($bulan) > 0) {
			foreach ($bulan as $key => $value) {
				$dataBulan[] = $value['BULAN'];
			}
		} else {
			$dataBulan = array();
		}
		

		// Get Current Year Data
		$query1 = 'SELECT MONTHNAME(TANGGAL_DAFTAR) AS BULAN, COUNT(NOMOR_DAFTAR) AS ? FROM tpb_nopen WHERE YEAR(TANGGAL_DAFTAR) = ? AND STATUS != "PEMBATALAN" GROUP BY MONTH(TANGGAL_DAFTAR)';
		$year1 = $this->dashboard->query($query1,array(strval(date('Y')),date('Y')))->result_array();

		if (count($year1) > 0) {
			foreach ($year1 as $key => $value) {
				$dataSet3[] = array($value["BULAN"],(int)$value[strval(date('Y'))]);
			}
		} else {
			$dataSet3[] = array();
		}
		

		// // Get Last Year Data
		$year2 = $this->dashboard->query($query1,array(strval(date('Y')-1),date('Y')-1))->result_array();

		if (count($year2) > 0) {
			foreach ($year2 as $key => $value) {
				$dataSet2[] = array($value["BULAN"],(int)$value[strval(date('Y')-1)]);
			}
		} else {
			$dataSet2[] = array();
		}
		

		// // Get Last Two Year Data
		$year3 = $this->dashboard->query($query1,array(strval(date('Y')-2),date('Y')-2))->result_array();

		if (count($year3) > 0) {
			foreach ($year3 as $key => $value) {
				$dataSet1[] = array($value["BULAN"], (int)$value[strval(date('Y')-2)]);
			}	
		} else {
			$dataSet1[] = array();
		}
		
		if (count($dataSet1) < 13) {
			switch (count($dataSet1)) {
				case 9:
				array_unshift($dataSet1, array("January", null));
				array_unshift($dataSet1, array("February", null));
				array_unshift($dataSet1, array("March", null));
				break;

				case 10:
				array_unshift($dataSet1, array("January", null));
				array_unshift($dataSet1, array("February", null));
				break;
				case 11:
				array_unshift($dataSet1, array("January", null));
				break;

				default:
					// code...
				break;
			}
		}

		$data = array(
			'bulan' => $dataBulan,
			'data' => array(
				date("Y")-2 => $dataSet1,
				date("Y")-1 => $dataSet2,
				date("Y") => $dataSet3
			)
		);

		return $data;
	}

	public function getCurrentDokumen(){
		// GET MONTH NAME
		$query = 'SELECT MONTHNAME(TANGGAL_DAFTAR) AS BULAN FROM tpb_header GROUP BY MONTH(TANGGAL_DAFTAR)';
		$bulan = $this->dashboard->query($query)->result_array();

		if (count($bulan) > 0) {
			foreach ($bulan as $key => $value) {
				$dataBulan[] = $value['BULAN'];
			}
		} else {
			$dataBulan = array();
		}	

		$sql = 'SELECT MONTHNAME(TANGGAL_DAFTAR) AS BULAN, COUNT(NOMOR_DAFTAR) AS ? FROM tpb_header WHERE KODE_KANTOR_BONGKAR = ? AND YEAR(TANGGAL_DAFTAR) = YEAR(CURDATE()) AND STATUS_DOKUMEN != "PEMBATALAN" GROUP BY MONTH(TANGGAL_DAFTAR)';

		$query1 = $this->dashboard->query($sql,array("CIKARANG","051000"))->result_array();
		$query2 = $this->dashboard->query($sql,array("PRIOK","040300"))->result_array();
		$query3 = $this->dashboard->query($sql,array("SOETTA","050100"))->result_array();

		if (count($query1) > 0) {
			foreach ($query1 as $key => $value) {
				$cikarang[] = array($value["BULAN"], (int)$value['CIKARANG']);
			}	
		} else {
			$cikarang[] = array();
		}

		if (count($query2) > 0) {
			foreach ($query2 as $key => $value) {
				$priok[] = array($value["BULAN"], (int)$value['PRIOK']);
			}	
		} else {
			$priok[] = array();
		}

		if (count($query3) > 0) {
			foreach ($query3 as $key => $value) {
				$soetta[] = array($value["BULAN"], (int)$value['SOETTA']);
			}	
		} else {
			$soetta[] = array();
		}

		$data = array(
			'bulan' => $dataBulan,
			'data' => array(
				'CIKARANG' => $cikarang,
				'PRIOK' => $priok,
				'SOETTA' => $soetta
			)
		);

		return $data;
	}

	public function getNetto(){
		// GET MONTH NAME
		$query = 'SELECT MONTHNAME(TANGGAL_DAFTAR) AS BULAN FROM tpb_header GROUP BY MONTH(TANGGAL_DAFTAR)';
		$bulan = $this->dashboard->query($query)->result_array();

		if (count($bulan) > 0) {
			foreach ($bulan as $key => $value) {
				$dataBulan[] = $value['BULAN'];
			}
		} else {
			$dataBulan = array();
		}

		// Get Current Year Data
		$query1 = 'SELECT MONTHNAME(TANGGAL_DAFTAR) AS BULAN, SUM(NETTO)/1000 AS ? FROM tpb_header WHERE YEAR(TANGGAL_DAFTAR) = ? AND STATUS_DOKUMEN != "PEMBATALAN" GROUP BY MONTH(TANGGAL_DAFTAR)';
		$year1 = $this->dashboard->query($query1,array(strval(date('Y')),date('Y')))->result_array();

		if (count($year1) > 0) {
			foreach ($year1 as $key => $value) {
				$dataSet3[] = array($value["BULAN"],(int)$value[strval(date('Y'))]);
			}
		} else {
			$dataSet3[] = array();
		}
		

		// // Get Last Year Data
		$year2 = $this->dashboard->query($query1,array(strval(date('Y')-1),date('Y')-1))->result_array();

		if (count($year2) > 0) {
			foreach ($year2 as $key => $value) {
				$dataSet2[] = array($value["BULAN"],(int)$value[strval(date('Y')-1)]);
			}
		} else {
			$dataSet2[] = array();
		}

		// // Get Last Two Year Data
		$year3 = $this->dashboard->query($query1,array(strval(date('Y')-2),date('Y')-2))->result_array();

		if (count($year3) > 0) {
			foreach ($year3 as $key => $value) {
				$dataSet1[] = array($value["BULAN"], (int)$value[strval(date('Y')-2)]);
			}	
		} else {
			$dataSet1[] = array();
		}
		
		if (count($dataSet1) < 13) {
			switch (count($dataSet1)) {
				case 9:
				array_unshift($dataSet1, array("January", null));
				array_unshift($dataSet1, array("February", null));
				array_unshift($dataSet1, array("March", null));
				break;

				case 10:
				array_unshift($dataSet1, array("January", null));
				array_unshift($dataSet1, array("February", null));
				break;
				case 11:
				array_unshift($dataSet1, array("January", null));
				break;

				default:
					// code...
				break;
			}
		}

		$data = array(
			'bulan' => $dataBulan,
			'data' => array(
				date("Y")-2 => $dataSet1,
				date("Y")-1 => $dataSet2,
				date("Y") => $dataSet3
			)
		);

		return $data;
	}

}

/* End of file dashboard_model.php */
/* Location: ./application/models/dashboard/dashboard_model.php */