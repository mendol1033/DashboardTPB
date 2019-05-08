<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->dashboard = $this->load->database('tpb',true);
		$this->monev = $this->load->database('monev',true);
	}

	public function getOption(){
		$query = "SELECT DISTINCT YEAR(TANGGAL_DAFTAR) AS TAHUN FROM tpb_header_detail ORDER BY TAHUN DESC";
		$tahun = $this->dashboard->query($query)->result_array();
		$year = array();

		foreach ($tahun as $key => $value) {
			foreach ($value as $key1 => $value1) {
				$year["'".$value1."'"] = $value1;
			}
		}

		$query = "SELECT DISTINCT KODE_DOKUMEN FROM tpb_header_detail ORDER BY KODE_DOKUMEN ASC";
		$kode_dok = $this->dashboard->query($query)->result_array();
		$kodeDok = array();

		foreach ($kode_dok as $key => $value) {
			foreach ($value as $key1 => $value1) {
				$kodeDok[$value1] = "BC " . $value1;
			}
		}

		$query = "SELECT DISTINCT NAMA_HANGGAR FROM tpb_header_detail ORDER BY NAMA_HANGGAR ASC";
		$tpb = $this->dashboard->query($query)->result_array();
		$hanggar[0] = "PILIH HANGGAR TPB";

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
		$query = 'SELECT MONTHNAME(TANGGAL_DAFTAR) AS BULAN FROM tpb_header_detail GROUP BY MONTH(TANGGAL_DAFTAR)';
		$bulan = $this->dashboard->query($query)->result_array();

		if (count($bulan) > 0) {
			foreach ($bulan as $key => $value) {
				$dataBulan[] = $value['BULAN'];
			}
		} else {
			$dataBulan = array();
		}
		

		// Get Current Year Data
		$this->dashboard->from('tpb_header_detail');
		$this->dashboard->select('MONTHNAME(TANGGAL_DAFTAR) AS BULAN, COUNT(NOMOR_DAFTAR) AS "'.$_POST['tahun'].'"');
		$this->dashboard->where("DATE_FORMAT(TANGGAL_DAFTAR,'%Y')",(int)$_POST['tahun']);
		$this->dashboard->where("KODE_DOKUMEN", $_POST['dok']);
		$this->dashboard->where("STATUS_DOKUMEN !=", "PEMBATALAN");
		if ($_POST['hanggar'] !== "0") {
			$this->dashboard->where("NAMA_HANGGAR", $_POST['hanggar']);
		}
		$this->dashboard->group_by("DATE_FORMAT(TANGGAL_DAFTAR,'%m')");
		$year1 = $this->dashboard->get()->result_array();

		if (count($year1) > 0) {
			foreach ($year1 as $key => $value) {
				$dataSet3[] = array($value["BULAN"],(int)$value[$_POST['tahun']]);
			}
		} else {
			$dataSet3[] = null;
		}

		if (count($dataSet3) > 0) {
			if ($dataSet3[0][0] !== "January") {
				switch ($dataSet3[0][0]) {
					case "April":
					array_unshift($dataSet3, array("January", null));
					array_unshift($dataSet3, array("February", null));
					array_unshift($dataSet3, array("March", null));
					break;

					case "Maret":
					array_unshift($dataSet3, array("January", null));
					array_unshift($dataSet3, array("February", null));
					break;
					case "February":
					array_unshift($dataSet3, array("January", null));
					break;

					default:
					// code...
					break;
				}
			}
		}
		
		if ((int)$_POST['tahun'] > 2017) {
			// // Get Last Year Data
			$this->dashboard->from('tpb_header_detail');
			$this->dashboard->select('MONTHNAME(TANGGAL_DAFTAR) AS BULAN, COUNT(NOMOR_DAFTAR) AS "'. ((int)$_POST['tahun'] - 1) .'"');
			$this->dashboard->where("DATE_FORMAT(TANGGAL_DAFTAR,'%Y')",(int)$_POST['tahun']-1);
			$this->dashboard->where("KODE_DOKUMEN", $_POST['dok']);
			$this->dashboard->where("STATUS_DOKUMEN !=", "PEMBATALAN");
			if ($_POST['hanggar'] !== "0") {
				$this->dashboard->where("NAMA_HANGGAR", $_POST['hanggar']);
			}
			$this->dashboard->group_by("DATE_FORMAT(TANGGAL_DAFTAR,'%m')");
			$year2 = $this->dashboard->get()->result_array();

			if (count($year2) > 0) {
				foreach ($year2 as $key => $value) {
					$dataSet2[] = array($value["BULAN"],(int)$value[((int)$_POST['tahun']-1)]);
				}
			} else {
				$dataSet2[] = null;
			}
			if (count($dataSet2) > 0) {
				if ($dataSet2[0][0] !== "January") {
					switch ($dataSet2[0][0]) {
						case "April":
						array_unshift($dataSet2, array("January", null));
						array_unshift($dataSet2, array("February", null));
						array_unshift($dataSet2, array("March", null));
						break;

						case "Maret":
						array_unshift($dataSet2, array("January", null));
						array_unshift($dataSet2, array("February", null));
						break;
						case "February":
						array_unshift($dataSet2, array("January", null));
						break;

						default:
					// code...
						break;
					}
				}
			}
		} else {
			$dataSet2[] = array();
		}
		
		
		if ((int)$_POST['tahun'] > 2018) {
			// // Get Last Two Year Data
			$this->dashboard->from('tpb_header_detail');
			$this->dashboard->select('MONTHNAME(TANGGAL_DAFTAR) AS BULAN, COUNT(NOMOR_DAFTAR) AS "'. ((int)$_POST['tahun'] - 2) .'"');
			$this->dashboard->where("DATE_FORMAT(TANGGAL_DAFTAR,'%Y')",(int)$_POST['tahun']-2);
			$this->dashboard->where("KODE_DOKUMEN", $_POST['dok']);
			$this->dashboard->where("STATUS_DOKUMEN !=", "PEMBATALAN");
			if ($_POST['hanggar'] !== "0") {
				$this->dashboard->where("NAMA_HANGGAR", $_POST['hanggar']);
			}
			$this->dashboard->group_by("DATE_FORMAT(TANGGAL_DAFTAR,'%m')");
			$year3 = $this->dashboard->get()->result_array();

			if (count($year3) > 0) {
				foreach ($year3 as $key => $value) {
					$dataSet1[] = array($value["BULAN"],(int)$value[((int)$_POST['tahun']-2)]);
				}	
			} else {
				$dataSet1[] = null;
			}
			if (count($dataSet1) > 0) {
				if ($dataSet1[0][0] !== "January") {
					switch ($dataSet1[0][0]) {
						case "April":
						array_unshift($dataSet1, array("January", null));
						array_unshift($dataSet1, array("February", null));
						array_unshift($dataSet1, array("March", null));
						break;

						case "Maret":
						array_unshift($dataSet1, array("January", null));
						array_unshift($dataSet1, array("February", null));
						break;
						case "February":
						array_unshift($dataSet1, array("January", null));
						break;

						default:
					// code...
						break;
					}
				}
			}
		} else {
			$dataSet1[] = array();
		}
		

		$data = array(
			'bulan' => $dataBulan,
			'data' => array(
				(int)$_POST['tahun']-2 => $dataSet1,
				(int)$_POST['tahun']-1 => $dataSet2,
				(int)$_POST['tahun'] => $dataSet3
			)
		);

		return $data;
	}

	public function getCurrentDokumen(){
		// GET MONTH NAME
		$data = array();
		$query = 'SELECT MONTHNAME(TANGGAL_DAFTAR) AS BULAN FROM tpb_header_detail GROUP BY MONTH(TANGGAL_DAFTAR)';
		$bulan = $this->dashboard->query($query)->result_array();

		if (count($bulan) > 0) {
			foreach ($bulan as $key => $value) {
				$dataBulan[] = $value['BULAN'];
			}
		} else {
			$dataBulan = null;
		}

		$data['bulan'] = $dataBulan;

		$sqlKode = 'SELECT KODE_KANTOR_BONGKAR, URAIAN_KANTOR_BONGKAR FROM tpb_header_detail WHERE KODE_DOKUMEN = ? AND YEAR(TANGGAL_DAFTAR) = ? GROUP BY KODE_KANTOR_BONGKAR ORDER BY KODE_KANTOR_BONGKAR DESC';
		$kodeBongkar = $this->dashboard->query($sqlKode, array($_POST['dok'], $_POST['tahun']))->result_array();

		$data['kode_kantor'] = $kodeBongkar;

		if ($_POST['hanggar'] == 0) {
			$sql = 'SELECT a.BLN, a.BULAN, b.JUMLAH FROM 
			(SELECT MONTH(TANGGAL_DAFTAR) AS BLN, MONTHNAME(TANGGAL_DAFTAR) AS BULAN FROM tpb_header_detail 
			WHERE KODE_DOKUMEN = ? AND YEAR(TANGGAL_DAFTAR) = ? GROUP BY MONTHNAME(TANGGAL_DAFTAR) ORDER BY BLN ASC) a
			LEFT JOIN (SELECT MONTH(TANGGAL_DAFTAR) AS BLN, MONTHNAME(TANGGAL_DAFTAR) AS BULAN, COUNT(STATUS_DOKUMEN) AS JUMLAH FROM tpb_header_detail
			WHERE KODE_DOKUMEN = ? AND YEAR(TANGGAL_DAFTAR) = ? AND KODE_KANTOR_BONGKAR = ? GROUP BY MONTHNAME(TANGGAL_DAFTAR) ORDER BY BLN ASC) b
			ON a.BLN = b.BLN';
		} else {
			$sql = 'SELECT a.BLN, a.BULAN, b.JUMLAH FROM 
			(SELECT MONTH(TANGGAL_DAFTAR) AS BLN, MONTHNAME(TANGGAL_DAFTAR) AS BULAN FROM tpb_header_detail 
			WHERE KODE_DOKUMEN = ? AND YEAR(TANGGAL_DAFTAR) = ? GROUP BY MONTHNAME(TANGGAL_DAFTAR) ORDER BY BLN ASC) a
			LEFT JOIN (SELECT MONTH(TANGGAL_DAFTAR) AS BLN, MONTHNAME(TANGGAL_DAFTAR) AS BULAN, COUNT(STATUS_DOKUMEN) AS JUMLAH FROM tpb_header_detail
			WHERE KODE_DOKUMEN = ? AND YEAR(TANGGAL_DAFTAR) = ? AND KODE_KANTOR_BONGKAR = ? AND NAMA_HANGGAR = ? GROUP BY MONTHNAME(TANGGAL_DAFTAR) ORDER BY BLN ASC) b
			ON a.BLN = b.BLN';
		}

		$query = array();
		
		for ($i=0; $i < count($kodeBongkar) ; $i++) { 
			$query[$i] = $this->dashboard->query($sql,array($_POST['dok'],$_POST['tahun'],$_POST['dok'],$_POST['tahun'],$kodeBongkar[$i]["KODE_KANTOR_BONGKAR"]))->result_array();

			if (count($query[$i]) > 0) {
				foreach ($query[$i] as $key => $value) {
					$data['data'][$kodeBongkar[$i]["URAIAN_KANTOR_BONGKAR"]][] = array($value["BULAN"], (int)$value['JUMLAH']);
				}	
			} else {
				$cikarang[] = null;
			}
		}

		return $data;
	}

	public function getNetto(){
		// GET MONTH NAME
		$query = 'SELECT MONTHNAME(TANGGAL_DAFTAR) AS BULAN FROM tpb_header_detail GROUP BY MONTH(TANGGAL_DAFTAR)';
		$bulan = $this->dashboard->query($query)->result_array();

		if (count($bulan) > 0) {
			foreach ($bulan as $key => $value) {
				$dataBulan[] = $value['BULAN'];
			}
		} else {
			$dataBulan = array();
		}

		// Get Current Year Data
		$this->dashboard->from('tpb_header_detail');
		$this->dashboard->select('MONTHNAME(TANGGAL_DAFTAR) AS BULAN, SUM(NETTO)/1000 AS "'. $_POST['tahun'].'"');
		$this->dashboard->where("KODE_DOKUMEN", $_POST['dok']);
		$this->dashboard->where("DATE_FORMAT(TANGGAL_DAFTAR,'%Y')",(int)$_POST['tahun']);
		$this->dashboard->where("STATUS_DOKUMEN !=", "PEMBATALAN");
		if ($_POST['hanggar'] !== "0") {
			$this->dashboard->where("NAMA_HANGGAR", $_POST['hanggar']);
		}
		$this->dashboard->group_by("DATE_FORMAT(TANGGAL_DAFTAR,'%m')");
		$year1 = $this->dashboard->get()->result_array();

		if (count($year1) > 0) {
			foreach ($year1 as $key => $value) {
				$dataSet3[] = array($value["BULAN"],(int)$_POST['tahun']);
			}
		} else {
			$dataSet3[] = array();
		}
		

		// // Get Last Year Data
		$this->dashboard->from('tpb_header_detail');
		$this->dashboard->select('MONTHNAME(TANGGAL_DAFTAR) AS BULAN, SUM(NETTO)/1000 AS "'. ((int)$_POST['tahun'] -1).'"');
		$this->dashboard->where("KODE_DOKUMEN", $_POST['dok']);
		$this->dashboard->where("DATE_FORMAT(TANGGAL_DAFTAR,'%Y')",(int)$_POST['tahun']-1 );
		$this->dashboard->where("STATUS_DOKUMEN !=", "PEMBATALAN");
		if ($_POST['hanggar'] !== "0") {
			$this->dashboard->where("NAMA_HANGGAR", $_POST['hanggar']);
		}
		$this->dashboard->group_by("DATE_FORMAT(TANGGAL_DAFTAR,'%m')");
		$year2 = $this->dashboard->get()->result_array();

		if (count($year2) > 0) {
			foreach ($year2 as $key => $value) {
				$dataSet2[] = array($value["BULAN"],(int)$_POST['tahun']-1);
			}
		} else {
			$dataSet2[] = array();
		}

		// // Get Last Two Year Data
		$this->dashboard->from('tpb_header_detail');
		$this->dashboard->select('MONTHNAME(TANGGAL_DAFTAR) AS BULAN, SUM(NETTO)/1000 AS "'. ((int)$_POST['tahun'] -2).'"');
		$this->dashboard->where("KODE_DOKUMEN", $_POST['dok']);
		$this->dashboard->where("DATE_FORMAT(TANGGAL_DAFTAR,'%Y')",(int)$_POST['tahun']-2);
		$this->dashboard->where("STATUS_DOKUMEN !=", "PEMBATALAN");
		if ($_POST['hanggar'] !== "0") {
			$this->dashboard->where("NAMA_HANGGAR", $_POST['hanggar']);
		}
		$this->dashboard->group_by("DATE_FORMAT(TANGGAL_DAFTAR,'%m')");
		$year3 = $this->dashboard->get()->result_array();

		if (count($year3) > 0) {
			foreach ($year3 as $key => $value) {
				$dataSet1[] = array($value["BULAN"], (int)$_POST['tahun']-2);
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

	public function getAllDokStatus(){
		if (!empty($_POST)) {
			$sql = 'SELECT DOKUMEN_STATUS AS STATUS FROM tpb_header_detail WHERE KODE_DOKUMEN = ? GROUP BY DOKUMEN_STATUS';
			$stat = $this->dashboard->query($sql,array($_POST['dok']))->result_array();
			$status = array();
			foreach ($stat as $key => $value) {
				$status[$value['STATUS']] = 0;
			}
			$this->dashboard->from('tpb_header_detail');
			$this->dashboard->select("DOKUMEN_STATUS AS STATUS, COUNT(DOKUMEN_STATUS) AS JUMLAH");
			$this->dashboard->where("KODE_DOKUMEN", $_POST['dok']);
			$this->dashboard->where("DATE_FORMAT(TANGGAL_DAFTAR,'%Y')",(int)$_POST['tahun']);
			if ($_POST['hanggar'] !== "0") {
				$this->dashboard->where("NAMA_HANGGAR", $_POST['hanggar']);
			}
			$this->dashboard->group_by('DOKUMEN_STATUS');
			$data = $this->dashboard->get();
			$x = $data->result_array();
			$d = array();
			foreach ($x as $key => $value) {
				$status[$value['STATUS']] = (int)$value['JUMLAH'];
			}

			return $status;
		}
	}

	public function getDokOutstanding(){
		if (!empty($_POST)) {
			$sql = 'SELECT DOKUMEN_STATUS AS STATUS FROM tpb_header_detail WHERE DOKUMEN_STATUS != "PEMBATALAN" AND DOKUMEN_STATUS != "SPPD" AND DOKUMEN_STATUS != "REJECT" GROUP BY DOKUMEN_STATUS';
			$stat = $this->dashboard->query($sql)->result_array();
			$status = array();
			$total = array();
			foreach ($stat as $key => $value) {
				$status[$value['STATUS']] = array();
			}

			$sql = 'SELECT YEAR(TANGGAL_DAFTAR) AS TAHUN FROM tpb_header_detail WHERE KODE_DOKUMEN = ? GROUP BY YEAR(TANGGAL_DAFTAR)';
			$tahun = $this->dashboard->query($sql, $_POST['dok'])->result_array();

			$data = array();
			foreach ($tahun as $key => $value) {
				$total[$value['TAHUN']] = 0;
				$this->dashboard->from('tpb_header_detail');
				$this->dashboard->select('DOKUMEN_STATUS AS STATUS, COUNT(DOKUMEN_STATUS) AS "'. $value['TAHUN'].'"');
				$this->dashboard->where("KODE_DOKUMEN", $_POST['dok']);
				$this->dashboard->where("DOKUMEN_STATUS != ", "PEMBATALAN");
				$this->dashboard->where("DOKUMEN_STATUS != ", "SPPD");
				$this->dashboard->where("DOKUMEN_STATUS != ", "REJECT");
				$this->dashboard->where("DATE_FORMAT(TANGGAL_DAFTAR,'%Y')", (int)$value['TAHUN']);
				if ($_POST['hanggar'] !== "0") {
					$this->dashboard->where("NAMA_HANGGAR", $_POST['hanggar']);
				}
				$this->dashboard->group_by('DOKUMEN_STATUS');

				$q = $this->dashboard->get()->result_array();
				foreach ($q as $kunci => $nilai) {
					$status[$nilai['STATUS']][$value['TAHUN']] = $nilai[$value['TAHUN']];
					$total[$value['TAHUN']] = $total[$value['TAHUN']] + (int)$nilai[$value['TAHUN']];
				}
			}
			$status['TOTAL']	= $total;		

			$return = array('status' => $status, 'tahun' => $tahun);

			return $return;
		}
	}

	public function getJumlahStatus(){
		if (!empty($_POST)) {
			$this->dashboard->from('tpb_header_detail');
			$this->dashboard->select('DOKUMEN_STATUS AS STATUS, COUNT(DOKUMEN_STATUS) AS JUMLAH');
			$this->dashboard->where("KODE_DOKUMEN", $_POST['dok']);
			$this->dashboard->where("DOKUMEN_STATUS", "SPPD");
			if ($_POST['hanggar'] !== "0") {
				$this->dashboard->where("NAMA_HANGGAR", $_POST['hanggar']);
			}
			$this->dashboard->group_by('DOKUMEN_STATUS');

			$sppd = $this->dashboard->get()->row_array();

			return $sppd;
		}
	}

	public function getStatusMonevHanggar(){
		if (!empty($_POST)) {
			$this->monev->from('monev_hanggar_detail');
			$this->monev->select('status, COUNT(status) AS jumlah');
			$this->monev->where('flag !=', 99);
			$this->monev->where("DATE_FORMAT(tanggalLaporan,'%Y')", (int)$_POST['tahun']);
			$this->monev->where("DATE_FORMAT(tanggalLaporan,'%m')", (int)$_POST['bulan']);
			$this->monev->group_by('status');
			$query = $this->monev->get();

			return $query->result_array();
		}
		
	}

	public function getMonevPerTPB(){
		if (!empty($_POST)) {
			$sql = "SELECT a.id_perusahaan, a.nama_perusahaan, a.alamat, b.id FROM `sikabayan_app`.`tpbdetail` a LEFT JOIN `monevtpb`.`monev_hanggar_detail` b ON a.id_perusahaan = b.idPerusahaan AND MONTH(b.tanggalLaporan) = ? AND YEAR(b.tanggalLaporan) = ? WHERE a.TPB = ?";

			$query = $this->monev->query($sql,array($_POST['bulan'],$_POST['tahun'],$_POST['hanggar']));
			$data = $query->result_array();
			return $data;
		}
	}

	public function test(){

	}

}

/* End of file dashboard_model.php */
/* Location: ./application/models/dashboard/dashboard_model.php */