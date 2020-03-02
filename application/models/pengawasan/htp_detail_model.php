<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Htp_detail_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->peloro = $this->load->database('peloro', TRUE);
		$this->sikabayan_db = $this->load->database('sikabayan', TRUE);
	}

	var $table = "tb_htp_rokok";
	var $column_order = array(null, 'merk', 'namaPabrik', 'lokasiPabrik', 'hargaJual', 'tahunPita', 'tarif', 'hje', 'jenisHT', 'isi', 'jmlhKemasan', 'keterangan');
	var $column_search = array('merk', 'namaPabrik', 'lokasiPabrik', 'hargaJual', 'tahunPita', 'tarif', 'hje', 'jenisHT', 'isi', 'jmlhKemasan', 'keterangan');
	var $order = array('id' => 'asc');

	private function GetListData() {
		$this->peloro->from($this->table);

		$i = 0;

		foreach ($this->column_search as $item) //loop column
		{
			if ($_POST['search']['value']) //if dataTable send POST for search
			{

				if ($i === 0) //first loop
				{
					$this->peloro->group_start(); //open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->peloro->like($item, $_POST['search']['value']);
				} else {
					$this->peloro->or_like($item, $_POST['search']['value']);
				}
				if (count($this->column_search) - 1 == $i) //last loop
				{
					$this->peloro->group_end();
				}
				//close bracket
			}
			$i++;
		}

		if (isset($_POST['order'])) //ordering
		{
			$this->peloro->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if (isset($this->order)) {
			$order = $this->order;
			$this->peloro->order_by(key($order), $order[key($order)]);
		}

	}

	public function GetDataTable() {
		$this->GetListData();
		if ($_POST['length'] != -1) {
			$this->peloro->limit($_POST['length'], $_POST['start']);
		}
		$query = $this->peloro->get();
		return $query->result();
	}

	public function count_filtered() {
		$this->GetListData();
		$query = $this->peloro->get();
		return $query->num_rows();
	}

	public function count_all() {
		$this->peloro->from($this->table);
		return $this->peloro->count_all_results();
	}

}

/* End of file htp_detail_model.php */
/* Location: ./application/models/pengawasan/htp_detail_model.php */