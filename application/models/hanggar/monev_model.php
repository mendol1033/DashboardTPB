<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monev_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		//Do your magic here
		$this->peloro = $this->load->database('peloro', TRUE);
		$this->sikabayan = $this->load->database('sikabayan', TRUE);
		$this->monev = $this->load->database('monev', TRUE);
		$this->Hanggar = $this->session->userdata('IdHanggar');
	}

	var $table = 'monev_hanggar_detail';
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

		if ($this->Hanggar !== 0) {
			$this->monev->where('IdHanggar', $this->Hanggar);
		}

		if (!empty($_GET['id'])) {
			$this->monev->where('IdPerusahaan', $_GET['id']);
		}

		if (!empty($_GET['tglAwal']) && !empty($_GET['tglAkhir'])) {
			$this->monev->where('Tanggal >=', $_GET['tglAwal']);
			$this->monev->where('Tanggal <=', $_GET['tglAkhir']);
		}

		$this->monev->where('flag', 0);
		$query = $this->monev->get();
		return $query->result();
	}

	public function count_filtered() {
		$this->GetListData();
		if ($this->Hanggar !== 0) {
			$this->monev->where('IdHanggar', $this->Hanggar);
		}
		$this->monev->where('flag', 0);
		$query = $this->monev->get();
		return $query->num_rows();
	}

	public function count_all() {
		$this->monev->from($this->table);
		if ($this->Hanggar !== 0) {
			$this->monev->where('IdHanggar', $this->Hanggar);
		}
		$this->monev->where('flag', 0);
		return $this->monev->count_all_results();
	}

	public function getTPB($search, $column) {
		$this->sikabayan->from('tpbdetail');
		$this->sikabayan->select($column);
		$this->sikabayan->like('nama_perusahaan', $search);
		$query = $this->sikabayan->get();

		return $query->result_array();
	}

	public function post() {
		$this->monev->trans_begin();
		$idPerusahaan = $_POST['idPerusahaan'];
		$tanggal = $_POST['tanggal'];
		$keterangan = $_POST['keteranganLain'];

		$laporan = array(
			'idPerusahaan' => $idPerusahaan,
			'tanggalLaporan' => $tanggal,
			'keterangan' => $keterangan,
			'NipPegawai' => $this->session->userdata('NipUser'),
		);

		$status1 = $this->monev->insert('monev_hanggar', $laporan);

		$isi = $_POST;
		unset($isi['idPerusahaan']);
		unset($isi['alamat']);
		unset($isi['tanggal']);
		unset($isi['keteranganLain']);
		$idLaporan = $this->monev->insert_id();

		$isiLaporan = array();
		for ($i = 1; $i < 20; $i++) {
			$isiLaporan[] = array(
				'idLaporan' => $idLaporan,
				'item' => $i,
				'kondisi' => $isi['checklist' . $i],
				'keterangan' => $isi['keterangan' . $i],
			);
		}

		$status2 = $this->monev->insert_batch('monev_hanggar_isi', $isiLaporan);

		$fileLaporan = array();
		for ($i = 1; $i < 20; $i++) {
			for ($a = 0; $a < count($_FILES['file' . $i]['name']); $a++) {
				if (!empty($_FILES['file' . $i]['name'][$a])) {
					$tmpFilePath = $_FILES['file' . $i]['tmp_name'][$a];
					if ($tmpFilePath != "") {
						switch ($_FILES['file' . $i]['type'][$a]) {
						case 'application/vnd.openxmlformats-officedocument.presentationml.presentation':
							$dir = "ppt";
							break;
						case 'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
							$dir = "doc";
							break;
						case 'application/pdf':
							$dir = "pdf";
							break;
						case 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
							$dir = "xls";
							break;
						case 'image/jpeg':
							$dir = "img";
							break;
						default:
							$dir = "other";
							break;
						}
						$newFilePath = "assets/upload/monev/" . $dir . "/" . $_FILES['file' . $i]['name'][$a];
						if (move_uploaded_file($tmpFilePath, $newFilePath)) {
							$fileLaporan[] = array(
								'idLaporan' => $idLaporan,
								'item' => $i,
								'namaFile' => $_FILES['file' . $i]['name'][$a],
								'typeFile' => $_FILES['file' . $i]['type'][$a],
								'lokasi' => $newFilePath,
							);
						}
					}
				}
			}
		}

		if (count($fileLaporan) > 0) {
			$status3 = $this->monev->insert_batch('monev_hanggar_file', $fileLaporan);
		} else {
			$status3 = 0;
		}

		if ($this->monev->trans_status() === FALSE) {
			$this->monev->trans_rollback();
			return FALSE;
		} else {
			$this->monev->trans_commit();
			return TRUE;
		}

	}

	public function update() {
		$this->monev->trans_begin();

		$idLaporan = $_POST['id'];
		$idPerusahaan = $_POST['idPerusahaan'];
		$tanggal = $_POST['tanggal'];
		$keterangan = $_POST['keteranganLain'];

		$laporan = array(
			'idPerusahaan' => $idPerusahaan,
			'tanggalLaporan' => $tanggal,
			'keterangan' => $keterangan,
			'NipPegawai' => $this->session->userdata('NipUser'),
		);

		$this->monev->where('id', $_POST['id']);
		$status1 = $this->monev->update('monev_hanggar', $laporan);

		$isi = $_POST;
		unset($isi['idPerusahaan']);
		unset($isi['alamat']);
		unset($isi['tanggal']);
		unset($isi['keteranganLain']);

		for ($i = 1; $i < 20; $i++) {
			$isiLaporan = array(
				'idLaporan' => $idLaporan,
				'item' => $i,
				'kondisi' => $isi['checklist' . $i],
				'keterangan' => $isi['keterangan' . $i],
			);

			$this->monev->where('id', $isi['idIsi' . $i]);
			$this->monev->update('monev_hanggar_isi', $isiLaporan);
		}

		$fileLaporan = array();
		for ($i = 1; $i < 20; $i++) {
			for ($a = 0; $a < count($_FILES['file' . $i]['name']); $a++) {
				if (!empty($_FILES['file' . $i]['name'][$a])) {
					$tmpFilePath = $_FILES['file' . $i]['tmp_name'][$a];
					if ($tmpFilePath != "") {
						switch ($_FILES['file' . $i]['type'][$a]) {
						case 'application/vnd.openxmlformats-officedocument.presentationml.presentation':
							$dir = "ppt";
							break;
						case 'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
							$dir = "doc";
							break;
						case 'application/pdf':
							$dir = "pdf";
							break;
						case 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
							$dir = "xls";
							break;
						case 'image/jpeg':
							$dir = "img";
							break;
						default:
							$dir = "other";
							break;
						}
						$this->monev->from('monev_hanggar_file');
						$this->monev->where('idLaporan', $idLaporan);
						$this->monev->where('namaFile', $_FILES['file' . $i]['name'][$a]);
						$oldFile = $this->monev->get();

						if ($oldFile->num_rows() != 1) {
							$newFilePath = "assets/upload/monev/" . $dir . "/" . $tanggalLaporan . "-" . $_FILES['file' . $i]['name'][$a];
							if (move_uploaded_file($tmpFilePath, $newFilePath)) {
								$fileLaporan[] = array(
									'idLaporan' => $idLaporan,
									'item' => $i,
									'namaFile' => $tanggalLaporan . "-" . $_FILES['file' . $i]['name'][$a],
									'typeFile' => $_FILES['file' . $i]['type'][$a],
									'lokasi' => $newFilePath,
								);
							}
						}
					}
				}
			}
		}

		if (count($fileLaporan) > 0) {
			$status3 = $this->monev->insert_batch('monev_hanggar_file', $fileLaporan);
		} else {
			$status3 = 0;
		}

		if ($this->monev->trans_status() === FALSE) {
			$this->monev->trans_rollback();
			return FALES;
		} else {
			$this->monev->trans_commit();
			return TRUE;
		}
	}

	public function validate($stat) {
		if ($stat != null) {
			$this->monev->trans_begin();
			$this->monev->set('flag', $stat);
			$this->monev->where('id', $_GET['id']);
			$this->monev->update('monev_hanggar');

			if ($this->monev->trans_status() === FALSE) {
				$this->monev->trans_rollback();
				return FALSE;
			} else {
				$this->monev->trans_commit();
				return TRUE;
			}
		}
	}

	public function getById() {
		$this->monev->from('monev_hanggar_detail');
		$this->monev->where('id', $_GET['id']);
		$laporan = $this->monev->get()->result_array();

		$this->monev->from('monev_hanggar_isi');
		$this->monev->where('idLaporan', $_GET['id']);
		$isiLaporan = $this->monev->get()->result_array();

		return array($laporan[0], $isiLaporan);
	}

}

/* End of file monev_model.php */
/* Location: ./application/models/hanggar/monev_model.php */