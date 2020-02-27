<?php
if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

class Cctv_model extends CI_Model {

	private $peloro;
	private $Hanggar;

	public function __construct() {
		parent::__construct();
		$this->peloro = $this->load->database('peloro', true);
		$this->Hanggar = $this->session->userdata('IdHanggar');
	}

	var $table = "tb_cctv_detail";
	var $column_order = array(null, 'NPWP', 'NmPerusahaan', 'Browser', null,'Status');
	var $column_search = array('NPWP', 'NmPerusahaan', 'Browser','Status');
	var $order = array('NmPerusahaan' => 'asc');

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

		if ($this->Hanggar !== 0) {
			$this->peloro->where('IdHanggar', $this->Hanggar);
		}

		$this->peloro->where('Status_TPB', 'Y');

		if (!empty($_GET['nama'])) {
			$this->peloro->like('NmPerusahaan', $_GET['nama']);
		}

		$query = $this->peloro->get();
		return $query->result();
	}

	public function count_filtered() {
		$this->GetListData();
		if ($this->Hanggar !== 0) {
			$this->peloro->where('IdHanggar', $this->Hanggar);
		}

		$this->peloro->where('Status_TPB', 'Y');

		if (!empty($_GET['nama'])) {
			$this->peloro->like('NmPerusahaan', $_GET['nama']);
		}
		$query = $this->peloro->get();
		return $query->num_rows();
	}

	public function count_all() {
		$this->peloro->from($this->table);
		if ($this->Hanggar !== 0) {
			$this->peloro->where('IdHanggar', $this->Hanggar);
		}
		$this->peloro->where('Status_TPB', 'Y');
		return $this->peloro->count_all_results();
	}

	public function getById() {
		$this->peloro->from($this->table);
		$this->peloro->where('Id', $_GET['id']);
		$query = $this->peloro->get();
		return $query->row();
	}

	public function getByIdTpb() {
		$this->peloro->from($this->table);
		$this->peloro->where('idTpbSikabayan', $_GET['id']);
		$query = $this->peloro->get();
		return $query->row();
	}

	public function getTpbNonCctv($search, $column) {
		$this->peloro->from('tb_non_cctv');
		$this->peloro->select($column);
		$this->peloro->like('NmPerusahaan', $search);
		$query = $this->peloro->get();

		return $query->result_array();
	}

	public function getTpbCctvById($search, $column) {
		$this->peloro->from('tb_cctv_detail');
		$this->peloro->select($column);
		$this->peloro->where('Id', $search);
		$query = $this->peloro->get();

		return $query->result_array();
	}

	public function getByName($search, $column) {
		$this->peloro->from($this->table);
		$this->peloro->select($column);
		$this->peloro->like('NmPerusahaan', $search);

		$query = $this->peloro->get();
		return $query->result_array();
	}

	public function add() {
		$this->peloro->trans_begin();

		$data = array(
			'IdPerusahaan' => $_POST['NamaPerusahaan'],
			'IpAddress' => $_POST['IpAddress'],
			'Username' => $_POST['Username'],
			'Password' => $_POST['Password'],
			'Browser' => $_POST['Browser'],
			'CctvType' => $_POST['cctvType'],
			'Playback' => $_POST['Playback'],
			'Status' => $_POST['Status'],
			'Keterangan' => $_POST['Keterangan'],
			'PtgsRekam' => $_POST['NipUser'],
		);

		$this->peloro->insert('tb_cctv', $data);

		if ($this->peloro->trans_status() === FALSE) {
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
	}

	public function update() {
		$this->peloro->trans_begin();

		$data = array(
			'IdPerusahaan' => $_POST['NamaPerusahaan'],
			'IpAddress' => $_POST['IpAddress'],
			'Username' => $_POST['Username'],
			'Password' => $_POST['Password'],
			'Browser' => $_POST['Browser'],
			'CctvType' => $_POST['cctvType'],
			'Playback' => $_POST['Playback'],
			'Status' => $_POST['Status'],
			'Keterangan' => $_POST['Keterangan'],
			'PtgsUpdate' => $_POST['NipUser'],
		);

		$this->peloro->where('id', $_POST['id']);
		$this->peloro->update('tb_cctv', $data);

		if ($this->peloro->trans_status() === FALSE) {
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
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
		$sql = $this->peloro->get();

		return $sql->result_array();
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

/* End of file cctv_model.php */
/* Location: ./application/models/pengawasan/cctv_model.php */