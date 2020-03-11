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
	var $order = array('TglRekam' => 'desc');

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

	public function getAll() {
		switch ($_POST['type']) {
			case 'cctv':
			$tabel = 'tb_cctv_detail';
			break;

			case 'it':
			$tabel = 'tb_it_detail';
			break;

			default:
			$tabel = 'tb_eseal_detail';
			break;
		}

		$this->peloro->from($tabel);
		$this->peloro->where('Status_TPB', "Y");
		if (!empty($_POST['hanggar'])) {
			if ((int)$_POST['hanggar'] > 0) {
				$this->peloro->where('IdHanggar',$_POST['hanggar']);
			}
		}
		$sql = $this->peloro->get();

		return $sql->result_array();
	}

	public function getHanggar(){
		$this->db->from('tbhanggar');
		$this->db->select('id, grupHanggar');
		$query = $this->db->get()->result_array();

		return $query;
	}

	public function post($d, $type) {
		$this->peloro->trans_begin();
		switch ($type) {
			case 'cctv':
			$t = 'CCTV';
			break;

			case 'it':
			$t = 'IT INVENTORY';
			break;

			default:
			$t = 'E-SEAL';
			break;
		}
		$dataMaster = array(
			'Type' => $t,
			'Jumlah' => count($d),
			'NipRekam' => $this->session->userdata('NipUser'),
		);

		$this->peloro->insert('tb_master_cek_keaktifan', $dataMaster);

		$id = $this->peloro->insert_id();

		$dataIsi = array();
		for ($i = 0; $i < count($d); $i++) {
			$dataIsi[] = array(
				'idMaster' => $id,
				'IdPerusahaan' => $d[$i]['IdPerusahaan'],
				'NPWP' => $d[$i]['NPWP'],
				'NamaPerusahaan' => $d[$i]['NamaPerusahaan'],
				'Skep' => $d[$i]['Skep'],
				'AlamatAkses' => $d[$i]['IpAddress'],
				'Browser' => $d[$i]['Browser'],
				'Ip' => $d[$i]['Ip'],
				'Status' => $d[$i]['Status'],
				'Hasil' => $d[$i]['result'],
				'data_curl' => $d[$i]['data_curl'],
				'httpcode' => $d[$i]['httpcode']
			);
		}

		$this->peloro->insert_batch('tb_cek_keaktifan', $dataIsi);

		if ($this->peloro->trans_status() === FALSE) {
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
	}

}

/* End of file connectioncheck_model.php */
/* Location: ./application/models/pengawasan/connectioncheck_model.php */