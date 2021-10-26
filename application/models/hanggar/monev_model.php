<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monev_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		//Do your magic here
		$this->db = $this->load->database('default', TRUE);
		$this->peloro = $this->load->database('peloro', TRUE);
		$this->sikabayan = $this->load->database('sikabayan', TRUE);
		$this->monev = $this->load->database('monev', TRUE);
		$this->Hanggar = $this->session->userdata('IdHanggar');
	}

	public $table;
	public $column_order;
	public $column_search;
	public $order = array('id' => 'asc');

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

	public function GetDataTable($ajax, $tabel, $urutan_kolom, $cari_kolom, $id = NULL) {
		$hanggar = $this->db->from('tb_petugas_hanggar')->select('IdHanggar')->where('IdPegawai', $_SESSION['IdPegawai'])->get()->result_array();
		foreach ($hanggar as $key=>$value) {
			$in[] = $value['IdHanggar'];
		}
		$this->table = $tabel;
		$this->column_order = $urutan_kolom;
		$this->column_search = $cari_kolom;

		$this->GetListData();
		if ($_POST['length'] != -1) {
			$this->monev->limit($_POST['length'], $_POST['start']);
		}
		if ($ajax == "laporan") {
			if ($this->session->userdata('idSeksiPKC') != NULL) {
				$this->monev->where('idJabatan', $this->session->userdata('idSeksiPKC'));
			}

			if (isset($_POST['type'])) {
				switch ($_POST['type']) {
				case "hanggar":
					$this->monev->where('flag', 0);
					break;
				case "seksi":
					$this->monev->where('flag', 1);

					break;
				case "arsip":
					$this->monev->where('flag', 1);
					break;
				default:
					$this->monev->where('flag !=', 99);
					$this->monev->where('flag !=', 1);
					$this->monev->where('flag !=', 2);
					break;
				}
			}

			if ($this->Hanggar !== 0) {
				$this->monev->where_in('IdHanggar', $in);
			}
		}

		if ($id != NULL) {
			$this->monev->where('idLaporan', $id);
		}

		if (!empty($_POST['bulan'])) {
			$this->monev->where("DATE_FORMAT(tanggalLaporan,'%m')", (int) $_POST['bulan']);
			$this->monev->where("DATE_FORMAT(tanggalLaporan,'%Y')", (int) $_POST['tahun']);
		}

		$query = $this->monev->get();
		return $query->result();
	}

	public function count_filtered($ajax, $id = NULL) {
		$this->GetListData();
		if ($ajax == "laporan") {
			if ($this->Hanggar !== 0) {
				$this->monev->where('IdHanggar', $this->Hanggar);
			}

			if ($this->session->userdata('idSeksiPKC') != NULL) {
				$this->monev->where('idJabatan', $this->session->userdata('idSeksiPKC'));
			}

			if (isset($_POST['type'])) {
				switch ($_POST['type']) {
				case "hanggar":
					$this->monev->where('flag', 0);
					break;
				case "seksi":
					$this->monev->where('flag', 1);
					break;
				case "arsip":
					$this->monev->where('flag', 1);
					break;
				default:
					$this->monev->where('flag !=', 99);
					$this->monev->where('flag !=', 1);
					$this->monev->where('flag !=', 2);
					break;
				}
			}
		}

		if ($id != NULL) {
			$this->monev->where('idLaporan', $id);
		}

		if (!empty($_POST['bulan'])) {
			$this->monev->where("DATE_FORMAT(tanggalLaporan,'%m')", (int) $_POST['bulan']);
			$this->monev->where("DATE_FORMAT(tanggalLaporan,'%Y')", (int) $_POST['tahun']);
		}

		$query = $this->monev->get();
		return $query->num_rows();
	}

	public function count_all($ajax, $id = NULL) {
		$this->monev->from($this->table);
		if ($ajax == "laporan") {
			if ($this->Hanggar !== 0) {
				$this->monev->where('IdHanggar', $this->Hanggar);
			}

			if ($this->session->userdata('idSeksiPKC') != NULL) {
				$this->monev->where('idJabatan', $this->session->userdata('idSeksiPKC'));
			}

			if (isset($_POST['type'])) {
				switch ($_POST['type']) {
				case "hanggar":
					$this->monev->where('flag', 0);
					break;
				case "seksi":
					$this->monev->where('flag', 1);
					break;
				case "arsip":
					$this->monev->where('flag', 1);
					break;
				default:
					$this->monev->where('flag !=', 99);
					$this->monev->where('flag !=', 1);
					$this->monev->where('flag !=', 2);
					break;
				}
			}
		}

		if ($id != NULL) {
			$this->monev->where('idLaporan', $id);
		}

		if (!empty($_POST['bulan'])) {
			$this->monev->where("DATE_FORMAT(tanggalLaporan,'%m')", (int) $_POST['bulan']);
			$this->monev->where("DATE_FORMAT(tanggalLaporan,'%Y')", (int) $_POST['tahun']);
		}

		return $this->monev->count_all_results();
	}

	public function getTPB($search, $column) {
		$hanggar = $this->db->from('tb_petugas_hanggar')->select('IdHanggar')->where('IdPegawai', $_SESSION['IdPegawai'])->get()->result_array();
		foreach ($hanggar as $key=>$value) {
			$in[] = $value['IdHanggar'];
		}
		$this->sikabayan->from('tpbdetail');
		$this->sikabayan->select($column);
		$this->sikabayan->like('nama_perusahaan', $search);
		if ($this->session->userdata('IdHanggar') !== 0) {
			$this->sikabayan->where_in('IdHanggar', $in);
		}
		$this->sikabayan->where('status', "Y");
		$query = $this->sikabayan->get();

		return $query->result_array();
	}

	public function post() {
		$bulan = date('m', strtotime($_POST['tanggal']));
		$tahun = date('Y', strtotime($_POST['tanggal']));
		$this->monev->from('monev_hanggar');
		$this->monev->where("DATE_FORMAT(tanggalLaporan,'%m')", (int) $bulan);
		$this->monev->where("DATE_FORMAT(tanggalLaporan,'%Y')", (int) $tahun);
		$this->monev->where('idPerusahaan', $_POST['idPerusahaan']);

		$cekLaporan = $this->monev->get();
		if ($cekLaporan->num_rows() === 0) {
			$this->monev->trans_begin();
			$idPerusahaan = $_POST['idPerusahaan'];
			$tanggal = $_POST['tanggal'];
			$flagMandiri = $_POST['FlagMandiri'];
			$keterangan = $_POST['keteranganLain'];

			$laporan = array(
				'idHanggar' => $this->session->userdata('IdHanggar'),
				'idPerusahaan' => $idPerusahaan,
				'tanggalLaporan' => $tanggal,
				'keterangan' => $keterangan,
				'flagMandiri' => $flagMandiri,
				'NipPegawai' => $this->session->userdata('NipUser'),
			);

			$status1 = $this->monev->insert('monev_hanggar', $laporan);

			$isi = $_POST;
			unset($isi['idPerusahaan']);
			unset($isi['alamat']);
			unset($isi['tanggal']);
			unset($isi['FlagMandiri']);
			unset($isi['keteranganLain']);
			$idLaporan = $this->monev->insert_id();

			switch ($flagMandiri) {
				case 'Y':
					$maxFIeld = 25;
					break;
				
				default:
					$maxFIeld = 20;
					break;
			}

			$isiLaporan = array();
			for ($i = 1; $i < $maxFIeld; $i++) {
				if (isset($isi['checklist' . $i]) === FALSE) {
					$isi['checklist' . $i] = NULL;
				}

				$isiLaporan[] = array(
					'idLaporan' => $idLaporan,
					'item' => $i,
					'kondisi' => $isi['checklist' . $i],
					'keterangan' => $isi['keterangan' . $i],
				);
			}

			$status2 = $this->monev->insert_batch('monev_hanggar_isi', $isiLaporan);

			$fileLaporan = array();
			for ($i = 1; $i < $maxFIeld; $i++) {
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
							case 'image/jpg':
								$dir = "img";
								break;
							case 'image/png':
								$dir = "img";
								break;
							case 'image/bmp':
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
		} else {
			return "Laporan Sudah Pernah Dibuat";
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
			if (isset($isi['checklist' . $i]) === FALSE) {
				$isi['checklist' . $i] = NULL;
			}

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
						case 'image/jpg':
							$dir = "img";
							break;
						case 'image/png':
							$dir = "img";
							break;
						case 'image/bmp':
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

	public function getFileById() {
		$this->monev->from('monev_hanggar_file');
		$this->monev->where('id', $_GET['id']);

		$query = $this->monev->get();

		if ($query->num_rows() === 1) {
			$data = $query->result_array();
		}

		return $data[0];
	}

	public function hapusFile() {
		$this->monev->from('monev_hanggar_file');
		$this->monev->where('id', $_GET['id']);

		$query = $this->monev->get();

		if ($query->num_rows() === 1) {
			$data = $query->result_array();
			if (file_exists($data[0]['lokasi'])) {
				if (!unlink($data[0]['lokasi'])) {
					$pesan = "gagal hapus file";
				} else {
					$pesan = "file telah dihapus";
					$this->monev->where('id', $_GET['id']);
					$this->monev->delete('monev_hanggar_file');
				}
			} else {
				$pesan = "file tidak ditemukan";
			}
		} else {
			$pesan = "data file tidak ditemukan";
		}

		return $pesan;
	}

	public function test() {
		$bulan = date('m', strtotime($_GET['tanggal']));
		$tahun = date('Y', strtotime($_GET['tanggal']));
		$this->monev->from('monev_hanggar');
		$this->monev->select('idPerusahaan');
		$this->monev->where("DATE_FORMAT(tanggalLaporan,'%m')", (int) $bulan);
		$this->monev->where("DATE_FORMAT(tanggalLaporan,'%Y')", (int) $tahun);
		$this->monev->distinct();
		$x = $this->monev->get();

		$y = $x->result_array();

		foreach ($y as $key => $value) {
			$z[] = $value['idPerusahaan'];
		}

		$this->sikabayan->from('tpbdetail');
		$this->sikabayan->where('status', "Y");
		$this->sikabayan->where_not_in('id_perusahaan', $z);

		$data = $this->sikabayan->get();

		return $data->result_array();
	}

	public function deleteDraft() {
		$this->monev->from('monev_hanggar');
		$this->monev->where('id', $_GET['id']);

		$laporan = $this->monev->get();

		if ($laporan->num_rows() === 1) {
			$this->monev->trans_begin();

			$this->monev->where('id', $_GET['id']);
			$this->monev->delete('monev_hanggar');

			$this->monev->where('idLaporan', $_GET['id']);
			$this->monev->delete('monev_hanggar_isi');

			$this->monev->from('monev_hanggar_file');
			$this->monev->where('idLaporan', $_GET['id']);

			$lampiran = $this->monev->get();

			if ($lampiran->num_rows() > 0) {
				$data = $lampiran->result_array();

				foreach ($data as $key => $value) {
					unlink($value['lokasi']);
					$this->monev->where('id', $value['id']);
					$this->monev->delete('monev_hanggar_file');
				}
			}

			if ($this->monev->trans_status() === FALSE) {
				$this->monev->trans_rollback();
				return FALSE;
			} else {
				$this->monev->trans_commit();
				return TRUE;
			}
		} else {
			return "Laporan Tidak Ditemukan";
		}
	}
}

/* End of file monev_model.php */
/* Location: ./application/models/hanggar/monev_model.php */