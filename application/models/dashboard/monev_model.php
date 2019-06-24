<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monev_model extends CI_Model {

	public function __construct(){
		parent::__construct();
		$this->monev = $this->load->database('monev',true);
		$this->sikabayan = $this->load->database('sikabayan',true);
	}

	private function sudahLaporan($tahun,$bulan){
		$this->monev->from('monev_hanggar');
		$this->monev->select('idPerusahaan');
		$this->monev->where('flag <',99);
		$this->monev->where("DATE_FORMAT(tanggalLaporan,'%m')",(int)$bulan);
		$this->monev->where("DATE_FORMAT(tanggalLaporan,'%Y')",(int)$tahun);
		$this->monev->distinct();
		$x = $this->monev->get();

		if ($x->num_rows() > 0) {
			$y = $x->result_array();

			foreach ($y as $key => $value) {
				$z[] = $value['idPerusahaan'];
			}
		} else {
			$z = array();
		}

		return $z;
	}

	public function getBarChart(){
		$this->monev->select('status AS STATUS, COUNT("id") AS JUMLAH');
		$this->monev->where("DATE_FORMAT(tanggalLaporan,'%Y')",(int)$_POST['tahun']);
		$this->monev->where("DATE_FORMAT(tanggalLaporan,'%m')",(int)$_POST['bulan']);
		$this->monev->group_by("flag");
		$statusMonev = $this->monev->get('monev_hanggar_detail')->result_array();

		$submitMonev = $this->sudahLaporan($_POST['tahun'], $_POST['bulan']);

		$this->sikabayan->select("COUNT('id_perusahaan') AS BELUM");
		$this->sikabayan->where('status', 'Y');
		$this->sikabayan->where('id_tpb != 3');
		$this->sikabayan->where('id_tpb != 4');
		if (count($submitMonev) > 0) {
			$this->sikabayan->where_not_in('id_perusahaan',$submitMonev);
		}
		$belumMonev = $this->sikabayan->get('tpbdetail')->result_array();

		$data = array();

		foreach ($statusMonev as $key => $value) {
			$data[strtoupper($value['STATUS'])] = array((int)$value['JUMLAH']);
		}

		$data["BELUM"] = array((int)$belumMonev[0]['BELUM']);

		return array($data);

	}

	public function getTable(){
		$sql = 'SELECT a.TPB, COUNT(a.id_perusahaan) AS "JUMLAH TPB", b.KONSEP, c.`VALIDASI HANGGAR` FROM tpbdetail a LEFT JOIN (SELECT TPB, COUNT(idPerusahaan) AS "KONSEP" FROM monev_hanggar_detail WHERE YEAR(tanggalLaporan) = ? AND MONTH(tanggalLaporan) = ? AND flag = 0 GROUP BY TPB) b ON a.TPB = b.TPB LEFT JOIN (SELECT TPB, COUNT(idPerusahaan) AS "VALIDASI HANGGAR" FROM monev_hanggar_detail WHERE YEAR(tanggalLaporan) = ? AND MONTH(tanggalLaporan) = ? AND flag = 1 GROUP BY TPB) c ON a.TPB = c.TPB WHERE a.TPB IS NOT NULL AND id_tpb != 4 AND id_tpb != 3 GROUP BY a.TPB';
		$query = $this->monev->query($sql,array($_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan']));

		return $query->result_array();
	}

	public function getPieChart(){
		$sql = 'SELECT kode_ref, nama_ref,
		(SELECT COUNT(ITEM_1) FROM monev_hanggar_report b WHERE b.ITEM_1 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_1,
		(SELECT COUNT(ITEM_2) FROM monev_hanggar_report b WHERE b.ITEM_2 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_2,
		(SELECT COUNT(ITEM_3) FROM monev_hanggar_report b WHERE b.ITEM_3 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_3,
		(SELECT COUNT(ITEM_4) FROM monev_hanggar_report b WHERE b.ITEM_4 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_4,
		(SELECT COUNT(ITEM_5) FROM monev_hanggar_report b WHERE b.ITEM_5 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_5,
		(SELECT COUNT(ITEM_6) FROM monev_hanggar_report b WHERE b.ITEM_6 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_6,
		(SELECT COUNT(ITEM_7) FROM monev_hanggar_report b WHERE b.ITEM_7 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_7,
		(SELECT COUNT(ITEM_8) FROM monev_hanggar_report b WHERE b.ITEM_8 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_8,
		(SELECT COUNT(ITEM_9) FROM monev_hanggar_report b WHERE b.ITEM_9 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_9,
		(SELECT COUNT(ITEM_10) FROM monev_hanggar_report b WHERE b.ITEM_10 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_10,
		(SELECT COUNT(ITEM_11) FROM monev_hanggar_report b WHERE b.ITEM_11 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_11,
		(SELECT COUNT(ITEM_12) FROM monev_hanggar_report b WHERE b.ITEM_12 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_12,
		(SELECT COUNT(ITEM_13) FROM monev_hanggar_report b WHERE b.ITEM_13 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_13,
		(SELECT COUNT(ITEM_14) FROM monev_hanggar_report b WHERE b.ITEM_14 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_14,
		(SELECT COUNT(ITEM_15) FROM monev_hanggar_report b WHERE b.ITEM_15 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_15,
		(SELECT COUNT(ITEM_16) FROM monev_hanggar_report b WHERE b.ITEM_16 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_16,
		(SELECT COUNT(ITEM_17) FROM monev_hanggar_report b WHERE b.ITEM_17 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_17,
		(SELECT COUNT(ITEM_18) FROM monev_hanggar_report b WHERE b.ITEM_18 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_18,
		(SELECT COUNT(ITEM_19) FROM monev_hanggar_report b WHERE b.ITEM_19 = a.kode_ref AND YEAR(b.TANGGAL_LAPORAN) = ? AND MONTH(b.TANGGAL_LAPORAN) = ? AND b.flag != 99) AS ITEM_19
		FROM monev_referensi a WHERE referensi = "hasil"';

		$query = $this->monev->query($sql,array($_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan'],$_GET['tahun'],$_GET['bulan']));

		return $query->result_array();
	}

	public function getCountAllTPB(){
		$sql = "SELECT COUNT('id_perusahaan') AS JUMLAH FROM tpbdetail WHERE status = 'Y' AND id_tpb != 4 AND id_tpb != 3";
		$query = $this->sikabayan->query($sql);

		return $query->row_array();
	}	

}

/* End of file monev_model.php */
/* Location: ./application/models/dashboard/monev_model.php */