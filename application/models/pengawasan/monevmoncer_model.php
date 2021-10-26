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
	var $column_order = array(null, 'NPWP', 'nama_perusahaan', null, 'tanggalLaporan', 'tanggalLaporan');
	var $column_search = array(c);
	var $order = array('tanggalLaporan' => 'desc');

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

	private function addHistory($action, $detail) {
		$this->monev->trans_begin();
		switch ($action) {
		case 'add':
			$data = array(
				'IdUser' => $this->session->userdata('NipUser'),
				'KdHistory' => 1,
				'DetailHistory' => $detail,
			);
			break;
		case 'update':
			$data = array(
				'IdUser' => $this->session->userdata('NipUser'),
				'KdHistory' => 2,
				'DetailHistory' => $detail,
			);
			break;
		case 'delete':
			$data = array(
				'IdUser' => $this->session->userdata('NipUser'),
				'KdHistory' => 3,
				'DetailHistory' => $detail,
			);
			break;

		default:
			$data = array(
				'IdUser' => $this->session->userdata('NipUser'),
				'KdHistory' => 99,
				'DetailHistory' => $detail,
			);
			break;
		}
		$this->monev->insert('monev_history', $data);
		if ($this->monev->trans_status() === FALSE) {
			$this->monev->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
	}

	public function getById() {
		$data1 = $this->monev->from('monev_moncer_detail')->where('id', $_GET['id'])->get()->row_array();
		$data2 = $this->monev->from('monev_moncer_isi')->where('idLaporan', $_GET['id'])->get()->result_array();

		$data = array(
			"laporan" => $data1,
			"isi" => $data2,
		);

		return $data;
	}

	public function add() {
		$this->monev->trans_begin();
		$data = array(
			"idPerusahaan" => $_POST['idPerusahaan'],
			"tanggalLaporan" => $_POST['tanggal'],
			"kesimpulan" => $_POST['kesimpulan'],
			"NipRekam" => $this->session->userdata('NipUser'),
		);

		$this->monev->insert('monev_moncer', $data);
		$insert_id = $this->monev->insert_id();

		$isi = $_POST;
		unset($isi['idPerusahaan']);
		unset($isi['alamat']);
		unset($isi['tanggal']);
		unset($isi['kesimpulan']);

		$isiLaporan = array();
		for ($i = 1; $i < (count($isi) + 1); $i++) {
			$isiLaporan[] = array(
				'idLaporan' => $insert_id,
				'item' => $i,
				'keterangan' => $isi['laporan' . $i],
			);
		}

		$this->monev->insert_batch("monev_moncer_isi", $isiLaporan);

		foreach ($isiLaporan as $key => $value) {
			switch ($value['item']) {
			case 1:
				$logbook = array(
					'idMonev' => $insert_id,
					'type' => 1,
					'idPerusahaan' => $_POST['idPerusahaan'],
					'tglLaporan' => $_POST['tanggal'],
					'kondisi' => 'M',
					'isiLaporan' => $value['keterangan'],
					'ptgsRekam' => $this->session->userdata('NipUser'),
				);
				$this->peloro->insert('logbook', $logbook);
				break;
			case 2:
				$logbook = array(
					'idMonev' => $insert_id,
					'type' => 2,
					'idPerusahaan' => $_POST['idPerusahaan'],
					'tglLaporan' => $_POST['tanggal'],
					'kondisi' => 'M',
					'isiLaporan' => $value['keterangan'],
					'ptgsRekam' => $this->session->userdata('NipUser'),
				);
				$this->peloro->insert('logbook', $logbook);
				break;
			case 3:
				$logbook = array(
					'idMonev' => $insert_id,
					'type' => 4,
					'idPerusahaan' => $_POST['idPerusahaan'],
					'tglLaporan' => $_POST['tanggal'],
					'kondisi' => 'M',
					'isiLaporan' => $value['keterangan'],
					'ptgsRekam' => $this->session->userdata('NipUser'),
				);
				$this->peloro->insert('logbook', $logbook);
				break;
			case 4:
				$logbook = array(
					'idMonev' => $insert_id,
					'type' => 3,
					'idPerusahaan' => $_POST['idPerusahaan'],
					'tglLaporan' => $_POST['tanggal'],
					'kondisi' => 'M',
					'isiLaporan' => $value['keterangan'],
					'ptgsRekam' => $this->session->userdata('NipUser'),
				);
				$this->peloro->insert('logbook', $logbook);
				break;
			default:

				break;
			}

		}

		if ($this->monev->trans_status() === FALSE) {
			$this->monev->trans_rollback();
			return FALSE;
		} else {
			$this->monev->trans_commit();
			if ($this->addHistory('add', "Menambahkan data laporan Monev Monitoring Room") === TRUE) {
				return TRUE;
			} else {
				return FALSE;
			}
		}
	}

	public function update() {
		$this->monev->trans_begin();
		$data = array(
			"idPerusahaan" => $_POST['idPerusahaan'],
			"tanggalLaporan" => $_POST['tanggal'],
			"kesimpulan" => $_POST['kesimpulan'],
			"NipUpdate" => $this->session->userdata('NipUser'),
		);

		$this->monev->where('id', $_POST['id']);
		$this->monev->update('monev_moncer', $data);

		$isi = $_POST;
		unset($isi['id']);
		unset($isi['idPerusahaan']);
		unset($isi['alamat']);
		unset($isi['tanggal']);
		unset($isi['kesimpulan']);
		$dataIsi = $this->monev->where('idLaporan', $_POST['id'])->get('monev_moncer_isi')->result_array();

		for ($i = 0; $i < count($isi); $i++) {
			$isiLaporan = array(
				'idLaporan' => $_POST['id'],
				'item' => $i + 1,
				'keterangan' => $isi['laporan' . ($i + 1)],
			);
			$this->monev->where('id', $dataIsi[$i]['id']);
			$this->monev->update('monev_moncer_isi', $isiLaporan);
		}
		$idMonev = $_POST['id'];
		for ($i = 1; $i < 5; $i++) {
			switch ($i) {
			case 3:
				$type = 4;
				break;
			case 4:
				$type = 3;
				break;

			default:
				$type = $i;
				break;
			}
			$logbook = array(
				'isiLaporan' => $_POST['laporan' . $i],
				'ptgsUpdate' => $this->session->userdata('NipUser'),
			);
			$this->peloro->where('idMonev', $idMonev);
			$this->peloro->where('type', $type);
			$this->peloro->update('logbook', $logbook);
		}

		if ($this->monev->trans_status() === FALSE) {
			$this->monev->trans_rollback();
			return FALSE;
		} else {
			$this->monev->trans_commit();
			if ($this->addHistory('update', "Merubah data laporan Monev Monitoring Room") === TRUE) {
				return TRUE;
			} else {
				return FALSE;
			}
		}
	}

	public function hapus() {
		$this->monev->trans_begin();
		$this->monev->where('id', $_GET['id']);
		$this->monev->delete('monev_moncer');

		$this->monev->where('idLaporan', $_GET['id']);
		$this->monev->delete('monev_moncer_isi');

		if ($this->monev->trans_status() === FALSE) {
			$this->monev->trans_rollback();
			return FALSE;
		} else {
			$this->monev->trans_commit();
			return TRUE;
		}
	}

}

/* End of file monevmoncer_model.php */
/* Location: ./application/models/pengawasan/monevmoncer_model.php */