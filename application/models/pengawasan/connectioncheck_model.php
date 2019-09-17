<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Connectioncheck_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->peloro = $this->load->database('peloro', true);
	}

	var $table = "vw_master_cek_keaktifan";
	var $column_order = array(null, 'TglRekam', 'Jumlah', 'JumlahAktif', 'JumlahTidakAktif');
	var $column_search = array('TglRekam', 'Jumlah', 'JumlahAktif', 'JumlahTidakAktif');
	var $order = array('TglRekam' => 'asc');

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

	var $table2 = "vw_cek_keaktifan_dt";
	var $column_order2 = array(null, 'NPWP', 'NmPerusahaan', 'NoSkepAkhir', 'IpAdress', 'Browser', 'Ip', 'StatusCCTV', 'Hasil');
	var $column_search2 = array('NPWP', 'NmPerusahaan', 'NoSkepAkhir', 'IpAdress', 'Ip', 'StatusCCTV', 'Hasil');
	var $order2 = array('id' => 'asc');

	private function GetListData2() {
		$this->peloro->from($this->table2);

		$i = 0;

		foreach ($this->column_search2 as $item) //loop column
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
				if (count($this->column_search2) - 1 == $i) //last loop
				{
					$this->peloro->group_end();
				}
				//close bracket
			}
			$i++;
		}

		if (isset($_POST['order'])) //ordering
		{
			$this->peloro->order_by($this->column_order2[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if (isset($this->order2)) {
			$order = $this->order2;
			$this->peloro->order_by(key($order), $order[key($order)]);
		}

	}

	public function GetDataTable2() {
		$this->GetListData2();
		if ($_POST['length'] != -1) {
			$this->peloro->limit($_POST['length'], $_POST['start']);
		}

		$this->peloro->where('idMaster', $_POST['id']);

		$query = $this->peloro->get();
		return $query->result();
	}

	public function count_filtered2() {
		$this->GetListData2();
		$this->peloro->where('idMaster', $_POST['id']);
		$query = $this->peloro->get();
		return $query->num_rows();
	}

	public function count_all2() {
		$this->peloro->from($this->table2);
		$this->peloro->where('idMaster', $_POST['id']);
		return $this->peloro->count_all_results();
	}

	public function getPerusahaanTidakAktif() {
		$this->peloro->from('vw_cek_keaktifan_dt');
		$this->peloro->where('idMaster', $_POST['id']);
		$this->peloro->where('Hasil', 1);
		$this->peloro->limit('5');
		$data = $this->peloro->get()->result_array();

		return $data;
	}

}

/* End of file connectioncheck_model.php */
/* Location: ./application/models/pengawasan/connectioncheck_model.php */