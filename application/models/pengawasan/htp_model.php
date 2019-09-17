<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Htp_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->peloro = $this->load->database('peloro', TRUE);
		$this->sikabayan_db = $this->load->database('sikabayan', TRUE);
	}

	var $table = "tb_htp";
	var $column_order = array('id', 'namaToko', 'pemilik', 'telepon', 'namaSurveyor', 'tanggalKunjungan');
	var $column_search = array('namaToko', 'pemilik', 'telepon', 'namaSurveyor', 'tanggalKunjungan');
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

	public function getPegawai() {
		$this->db->from('tbpegawai');
		$this->db->select('NamaPegawai');
		$this->db->like('NamaPegawai', $_GET['nama']);

		$query = $this->db->get();

		return $query->result_array();
	}

	public function getNip() {
		$this->db->from('tbpegawai');
		$this->db->select('NIPPegawai');
		$this->db->where('NamaPegawai', $_GET['nama']);

		$query = $this->db->get();

		return $query->row_array();
	}

	public function add() {
		$this->peloro->trans_begin();

		$data = array(
			'namaToko' => $_POST['nama'],
			'pemilik' => $_POST['pemilik'],
			'telepon' => $_POST['telepon'],
			'handphone' => $_POST['handphone'],
			'alamat' => $_POST['alamat'],
			'provinsi' => $_POST['Provinsi'],
			'kabupaten' => $_POST['Kabupaten'],
			'kecamatan' => $_POST['Kecamatan'],
			'kelurahan' => $_POST['Kelurahan'],
			'koordinat' => $_POST['koordinat'],
			'namaSurveyor' => $_POST['surveyor'],
			'nipSurveyor' => $_POST['nip'],
			'tanggalKunjungan' => $_POST['tanggal'],
			'NipRekam' => $this->session->userdata('NipUser'),
		);

		$this->peloro->insert('tb_htp', $data);

		if ($this->peloro->trans_status() === FALSE) {
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
	}

	public function getProvinsi($search) {
		$this->sikabayan_db->from('inf_lokasi');
		$this->sikabayan_db->where('lokasi_kabupatenkota', 00);
		$this->sikabayan_db->where('lokasi_kecamatan', 00);
		$this->sikabayan_db->where('lokasi_kelurahan', 0000);
		$this->sikabayan_db->like('lokasi_nama', $search);

		$query = $this->sikabayan_db->get();
		return $query->result_array();
	}

	public function getKabupaten($provinsi, $search) {
		$sql = "SELECT lokasi_propinsi FROM inf_lokasi WHERE lokasi_nama=? limit 1";
		$kodeProv = $this->sikabayan_db->query($sql, $provinsi)->result_array();

		$this->sikabayan_db->from('inf_lokasi');
		$this->sikabayan_db->where('lokasi_propinsi', $kodeProv[0]['lokasi_propinsi']);
		$this->sikabayan_db->where('lokasi_kabupatenkota !=', 00);
		$this->sikabayan_db->where('lokasi_kecamatan', 00);
		$this->sikabayan_db->where('lokasi_kelurahan', 0000);
		$this->sikabayan_db->like('lokasi_nama', $search);

		$query = $this->sikabayan_db->get();
		return $query->result_array();
		// return $kodeProv;
	}

	public function getKecamatan($kabupaten, $search) {
		$sql = "SELECT lokasi_propinsi, lokasi_kabupatenkota FROM inf_lokasi WHERE lokasi_nama=? limit 1";
		$kodeKab = $this->sikabayan_db->query($sql, $kabupaten)->result_array();

		$this->sikabayan_db->from('inf_lokasi');
		$this->sikabayan_db->where('lokasi_propinsi', $kodeKab[0]['lokasi_propinsi']);
		$this->sikabayan_db->where('lokasi_kabupatenkota', $kodeKab[0]['lokasi_kabupatenkota']);
		$this->sikabayan_db->where('lokasi_kecamatan !=', 00);
		$this->sikabayan_db->where('lokasi_kelurahan', 0000);
		$this->sikabayan_db->like('lokasi_nama', $search);

		$query = $this->sikabayan_db->get();
		return $query->result_array();
	}

	public function getKelurahan($kecamatan, $search) {
		$sql = "SELECT lokasi_propinsi, lokasi_kabupatenkota, lokasi_kecamatan FROM inf_lokasi WHERE lokasi_nama=? limit 1";
		$kodeKec = $this->sikabayan_db->query($sql, $kecamatan)->result_array();

		$this->sikabayan_db->from('inf_lokasi');
		$this->sikabayan_db->where('lokasi_propinsi', $kodeKec[0]['lokasi_propinsi']);
		$this->sikabayan_db->where('lokasi_kabupatenkota', $kodeKec[0]['lokasi_kabupatenkota']);
		$this->sikabayan_db->where('lokasi_kecamatan', $kodeKec[0]['lokasi_kecamatan']);
		$this->sikabayan_db->where('lokasi_kelurahan !=', 00);
		$this->sikabayan_db->like('lokasi_nama', $search);

		$query = $this->sikabayan_db->get();
		return $query->result_array();
	}

}

/* End of file htp_model.php */
/* Location: ./application/models/pengawasan/htp_model.php */