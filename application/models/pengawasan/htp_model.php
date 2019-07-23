<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Htp_model extends CI_Model {

	public function __construct() {
		parent::__construct();

	}

	public function getPegawai() {
		$this->db->from('tbpegawai');
		$this->db->select('NamaPegawai');
		$this->db->like('NamaPegawai', $_GET['nama']);

		$query = $this->db->get();

		return $query->result_array();
	}

	public function getNip() {
		$this->db->from('tbpegawai');
		$this->db->select('NIPPegawai');
		$this->db->where('NamaPegawai', $_GET['nama']);

		$query = $this->db->get();

		return $query->row_array();
	}

}

/* End of file htp_model.php */
/* Location: ./application/models/pengawasan/htp_model.php */