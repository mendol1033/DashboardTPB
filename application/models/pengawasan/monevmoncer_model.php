<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monevmoncer_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		//Do your magic here
		$this->peloro = $this->load->database('peloro', TRUE);
		$this->sikabayan = $this->load->database('sikabayan', TRUE);
		$this->monev = $this->load->database('monev', TRUE);
		$this->Hanggar = $this->session->userdata('IdHanggar');
	}

	var $table = 'monev_moncer_detail';
	var $column_order = array(null, 'idPerusahaan', 'nama_perusahaan', 'tanggal');
	var $column_search = array('idPerusahaan', 'nama_perusahaan', 'tanggal');
	var $order = array('id' => 'asc');

	private function GetListData() {
		$this->monev->from($this->table);

		$i = 0;

		foreach ($this->column_search as $item) //loop column
		{
			if ($_POST['search']['value']) //if dataTable send POST for search
			{

				if ($i === 0) //first loop
				{
					$this->monev->group_start(); //open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->monev->like($item, $_POST['search']['value']);
				} else {
					$this->monev->or_like($item, $_POST['search']['value']);
				}
				if (count($this->column_search) - 1 == $i) //last loop
				{
					$this->monev->group_end();
				}
				//close bracket
			}
			$i++;
		}

		if (isset($_POST['order'])) //ordering
		{
			$this->monev->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if (isset($this->order)) {
			$order = $this->order;
			$this->monev->order_by(key($order), $order[key($order)]);
		}

	}

	public function GetDataTable() {
		$this->GetListData();
		if ($_POST['length'] != -1) {
			$this->monev->limit($_POST['length'], $_POST['start']);
		}

		if (!empty($_GET['id'])) {
			$this->monev->where('IdPerusahaan', $_GET['id']);
		}

		if (!empty($_GET['tglAwal']) && !empty($_GET['tglAkhir'])) {
			$this->monev->where('Tanggal >=', $_GET['tglAwal']);
			$this->monev->where('Tanggal <=', $_GET['tglAkhir']);
		}

		switch ($_POST['type']) {
		case "pelaksana":
			$this->monev->where('status', 0);
			break;
		case "seksi":
			$this->monev->where('status', 1);
			break;
		case "browse":
			$this->monev->where('status', 1);
			break;
		default:

			break;
		}

		$query = $this->monev->get();
		return $query->result();
	}

	public function count_filtered() {
		$this->GetListData();

		switch ($_POST['type']) {
		case "pelaksana":
			$this->monev->where('status', 0);
			break;
		case "seksi":
			$this->monev->where('status', 1);
			break;
		case "browse":
			$this->monev->where('status', 1);
			break;
		default:

			break;
		}
		$query = $this->monev->get();
		return $query->num_rows();
	}

	public function count_all() {
		$this->monev->from($this->table);

		switch ($_POST['type']) {
		case "pelaksana":
			$this->monev->where('status', 0);
			break;
		case "seksi":
			$this->monev->where('status', 1);
			break;
		case "browse":
			$this->monev->where('status !=', 0);
			break;
		default:

			break;
		}
		return $this->monev->count_all_results();
	}

}

/* End of file monevmoncer_model.php */
/* Location: ./application/models/pengawasan/monevmoncer_model.php */