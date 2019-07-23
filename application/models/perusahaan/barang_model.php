<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Barang_model extends CI_Model {

	private $sikabayan_db;
	private $Hanggar;

	public function __construct() {
		parent::__construct();
		$this->sikabayan_db = $this->load->database('sikabayan', true);
		$this->Hanggar = $this->session->userdata('IdHanggar');
	}

	var $table = "tb_produk";
	var $column_order = array(null, 'nama_produk', 'merk', 'has_code', 'foto');
	var $column_search = array('nama_produk', 'merk', 'has_code');
	var $order = array('id_produk' => 'asc');

	private function GetListData() {
		$this->sikabayan_db->from($this->table);

		$i = 0;

		foreach ($this->column_search as $item) //loop column
		{
			if ($_POST['search']['value']) //if dataTable send POST for search
			{

				if ($i === 0) //first loop
				{
					$this->sikabayan_db->group_start(); //open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->sikabayan_db->like($item, $_POST['search']['value']);
				} else {
					$this->sikabayan_db->or_like($item, $_POST['search']['value']);
				}
				if (count($this->column_search) - 1 == $i) //last loop
				{
					$this->sikabayan_db->group_end();
				}
				//close bracket
			}
			$i++;
		}

		if (isset($_POST['order'])) //ordering
		{
			$this->sikabayan_db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if (isset($this->order)) {
			$order = $this->order;
			$this->sikabayan_db->order_by(key($order), $order[key($order)]);
		}

	}

	public function GetDataTable($id) {
		$this->GetListData();
		if ($_POST['length'] != -1) {
			$this->sikabayan_db->limit($_POST['length'], $_POST['start']);
		}
		$this->sikabayan_db->where('id_perusahaan', $id);
		$query = $this->sikabayan_db->get();
		return $query->result();
	}

	public function count_filtered($id) {
		$this->GetListData();
		$this->sikabayan_db->where('id_perusahaan', $id);
		$query = $this->sikabayan_db->get();
		return $query->num_rows();
	}

	public function count_all($id) {
		$this->sikabayan_db->from($this->table);
		$this->sikabayan_db->where('id_perusahaan', $id);
		return $this->sikabayan_db->count_all_results();
	}
}

/* End of file barang_model.php */
/* Location: ./application/models/perusahaan/barang_model.php */