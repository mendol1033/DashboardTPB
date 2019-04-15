<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logbook_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		//Do your magic here
		$this->peloro = $this->load->database('peloro', TRUE);
		$this->sikabayan = $this->load->database('sikabayan', TRUE);
		$this->monev = $this->load->database('monev', TRUE);
		$this->Hanggar = $this->session->userdata('IdHanggar');
	}

	var $table = 'logbook_detail';
	var $column_order = array(null, 'NPWP', 'nama_perusahaan', 'tanggal');
	var $column_search = array('NPWP', 'nama_perusahaan', 'tanggal');
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

		if ($_POST['perusahaan'] != NULL) {
			$this->peloro->where('idPerusahaan', $_POST['perusahaan']);
		}

		if ($_POST['tglAwal'] != NULL && $_POST['tglAkhir'] != NULL) {
			$this->peloro->where('tglLaporan >=', $_POST['tglAwal']);
			$this->peloro->where('tglLaporan <=', $_POST['tglAkhir']);
		}

		if ($_POST['jnsLogbook'] != NULL) {
			$this->peloro->where('type',$_POST['jnsLogbook']);
		}

		$query = $this->peloro->get();
		return $query->result();
	}

	public function count_filtered() {
		$this->GetListData();

		if ($_POST['perusahaan'] != NULL) {
			$this->peloro->where('idPerusahaan', $_POST['perusahaan']);
		}

		if ($_POST['tglAwal'] != NULL && $_POST['tglAkhir'] != NULL) {
			$this->peloro->where('tglLaporan >=', $_POST['tglAwal']);
			$this->peloro->where('tglLaporan <=', $_POST['tglAkhir']);
		}

		if ($_POST['jnsLogbook'] != NULL) {
			$this->peloro->where('type',$_POST['jnsLogbook']);
		}

		$query = $this->peloro->get();
		return $query->num_rows();
	}

	public function count_all() {
		$this->peloro->from($this->table);

		return $this->peloro->count_all_results();
	}

	public function getById(){
		$this->peloro->from("logbook_detail");
		$this->peloro->where('id',$_GET['id']);

		$logbook = $this->peloro->get()->row_array();

		$this->peloro->from('logbook_pic');
		$this->peloro->where('idLogbook', $_GET['id']);

		$pic = $this->peloro->get()->result_array();

		return array($logbook, $pic);
	}

	private function addHistory($action,$detail) {
		$this->peloro->trans_begin();
		switch ($action) {
			case 'add':
			$data = array(
				'IdUser' => $this->session->userdata('NipUser'),
				'KdHistory' => 1,
				'DetailHistory' => $detail
			);
			break;
			case 'update':
			$data = array(
				'IdUser' => $this->session->userdata('NipUser'),
				'KdHistory' => 2,
				'DetailHistory' => $detail
			);
			break;
			case 'delete':
			$data = array(
				'IdUser' => $this->session->userdata('NipUser'),
				'KdHistory' => 3,
				'DetailHistory' => $detail
			);
			break;
			
			default:
			$data = array(
				'IdUser' => $this->session->userdata('NipUser'),
				'KdHistory' => 99,
				'DetailHistory' => $detail
			);
			break;
		}
		$this->peloro->insert('tb_history',$data);
		if ($this->peloro->trans_status() === FALSE) {
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
	}

	public function add(){
		$this->peloro->trans_begin();

		$data = array(
			'type' => $_POST['Logbook'],
			'idPerusahaan' => $_POST['idPerusahaan'],
			'tglLaporan' => $_POST['tglLaporan'],
			'kondisi' => $_POST['kondisi'],
			'isiLaporan' => $_POST['isiLaporan'],
			'ptgsRekam' => $this->session->userdata('NipUser')
		);

		$this->peloro->insert('logbook',$data);
		$idLogbook = $this->peloro->insert_id();

		foreach ($_FILES['upload']['error'] as $key => $value) {
			$error = 0 + $value;
		}
		if ($error == 0) {
			$fileLaporan = array();
			for ($a = 0; $a < count($_FILES['upload']['name']); $a++) {
				if (!empty($_FILES['upload']['name'][$a])) {
					$tmpFilePath = $_FILES['upload']['tmp_name'][$a];
					if ($tmpFilePath != "") {
						if (is_dir("assets/upload/logbook") === FALSE) {
							mkdir("assets/upload/logbook",0777);
						}
						$newFilePath = "assets/upload/logbook/" . $_FILES['upload']['name'][$a];
						if (move_uploaded_file($tmpFilePath, $newFilePath)) {
							$fileLaporan[] = array(
								'idLogbook' => $idLogbook,
								'namaFile' => $_FILES['upload']['name'][$a],
								'typeFile' => $_FILES['upload']['type'][$a],
								'lokasiFile' => $newFilePath,
							);
						}
					}
				}
			}

			$this->peloro->insert_batch('logbook_pic',$fileLaporan);
		}
		

		if ($this->peloro->trans_status() === FALSE) {
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			switch ($_POST['Logbook']) {
				case '1':
				$detail = "Menambahkan data logbook CCTV";
				break;
				case '2':
				$detail = "Menambahkan data logbook IT INVENTORY";
				break;
				case '3':
				$detail = "Menambahkan data logbook E-SEAL";
				break;
				
				default:
				$detail = "Gagal menambah data logbook";
				break;
			}
			if ($this->addHistory('add',$detail) === TRUE){
				return TRUE;
			} else {
				return FALSE;
			}
			
		}
	}

	public function update(){
		$this->peloro->trans_begin();

		$data = array(
			'type' => $_POST['Logbook'],
			'idPerusahaan' => $_POST['idPerusahaan'],
			'tglLaporan' => $_POST['tglLaporan'],
			'kondisi' => $_POST['kondisi'],
			'isiLaporan' => $_POST['isiLaporan'],
			'ptgsRekam' => $this->session->userdata('NipUser')
		);

		$this->peloro->where('id',$_POST['id']);
		$this->peloro->update('logbook',$data);
		$idLogbook = $_POST['id'];

		foreach ($_FILES['upload']['error'] as $key => $value) {
			$error = 0 + $value;
		}
		if ($error == 0) {
			$fileLaporan = array();
			for ($a = 0; $a < count($_FILES['upload']['name']); $a++) {
				if (!empty($_FILES['upload']['name'][$a])) {
					$tmpFilePath = $_FILES['upload']['tmp_name'][$a];
					if ($tmpFilePath != "") {
						if (is_dir("assets/upload/logbook") === FALSE) {
							mkdir("assets/upload/logbook",0777);
						}
						$newFilePath = "assets/upload/logbook/" . $_FILES['upload']['name'][$a];
						if (move_uploaded_file($tmpFilePath, $newFilePath)) {
							$fileLaporan[] = array(
								'idLogbook' => $idLogbook,
								'namaFile' => $_FILES['upload']['name'][$a],
								'typeFile' => $_FILES['upload']['type'][$a],
								'lokasiFile' => $newFilePath,
							);
						}
					}
				}
			}
			
			$this->peloro->insert_batch('logbook_pic',$fileLaporan);
		}

		if ($this->peloro->trans_status() === FALSE) {
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			switch ($_POST['Logbook']) {
				case '1':
				$detail = "Ubah data logbook CCTV";
				break;
				case '2':
				$detail = "Ubah data logbook IT INVENTORY";
				break;
				case '3':
				$detail = "Ubah data logbook E-SEAL";
				break;
				
				default:
				$detail = "Gagal Ubah data logbook";
				break;
			}
			if ($this->addHistory('update',$detail) === TRUE){
				return TRUE;
			} else {
				return FALSE;
			}
			
		}
	}

	public function deletepic(){
		$this->peloro->from('logbook_pic');
		$this->peloro->where('id', $_GET['id']);

		$data = $this->peloro->get();

		if ($data->num_rows() === 1) {
			$pic = $data->row_array();
			if (unlink($pic['lokasiFile'])) {
				$this->peloro->trans_begin();
				$this->peloro->where('id', $_GET['id']);
				$this->peloro->delete('logbook_pic');

				if ($this->peloro->trans_status() === FALSE) {
					$this->peloro->trans_rollback();
					return FALSE;
				} else {
					$this->peloro->trans_commit();
					if ($this->addHistory('delete','Menghapus Foto Logbook') === TRUE) {
						$this->peloro->from('logbook_pic');
						$this->peloro->where('idLogbook',$pic['idLogbook']);
						$sisaPic = $this->peloro->get();
						if ($sisaPic->num_rows() > 0) {
							return array("status" => TRUE, "data" => $sisaPic->result_array());
						} else {
							return array("status" => FALSE);
						}
					} else {
						return array("status" => FALSE);
					}
				}
			}
		}
	}

}

/* End of file logbook_model.php */
/* Location: ./application/models/pengawasan/logbook_model.php */