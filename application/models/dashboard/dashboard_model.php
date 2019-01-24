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

		$query = "SELECT DISTINCT KODE_DOKUMEN FROM tpb_header";
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

}

/* End of file dashboard_model.php */
/* Location: ./application/models/dashboard/dashboard_model.php */