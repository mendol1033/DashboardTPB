<?php
if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

class Tpb_model extends CI_Model {

	private $peloro;
	private $Hanggar;

	public function __construct() {
		parent::__construct();
		$this->peloro = $this->load->database('peloro', true);
		$this->Hanggar = $this->session->userdata('IdHanggar');
	}

	var $table = "tb_perusahaan";
	var $column_order = array(null, 'IdPerusahaan', 'NPWP', 'NmPerusahaan', 'AlamatPabrik');
	var $column_search = array('IdPerusahaan', 'NPWP', 'NmPerusahaan', 'AlamatPabrik');
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
		return $this->peloro->count_all_results();
	}

	public function getReferensi($kode) {
		$this->peloro->from("tb_referensi");
		$this->peloro->where("KdReferensi", $kode);
		$query = $this->peloro->get();

		return $query->result_array();
	}

	public function getById() {
		$this->peloro->from($this->table);
		$this->peloro->where('IdPerusahaan', $_GET['id']);
		$query = $this->peloro->get();
		return $query->row();
	}

	public function add() {

		$this->peloro->trans_begin();
		$data = array(
			'NPWP' => $_POST['NPWP'],
			'NmPerusahaan' => $_POST['NamaPerusahaan'],
			'Fasilitas' => $_POST['Fasilitas'],
			'Jenis' => $_POST['Jenis'],
			'AlamatPabrik' => $_POST['AlamatPabrik'],
			'AlamatKantor' => $_POST['AlamatKantor'],
			'ProfilResiko' => $_POST['ProfilResiko'],
			'NoSkepPendirian' => $_POST['NoSkepPendirian'],
			'TglSkepPendirian' => $_POST['TglSkepPendirian'],
			'NoSkepAkhir' => $_POST['NoSkepAkhir'],
			'TglSkepAkhir' => $_POST['TglSkepAkhir'],
			'TglJatuhTempo' => $_POST['TglJatuhTempo'],
			'KategoriUsaha' => $_POST['KategoriUsaha'],
			'NamaPenanggungJawab' => $_POST['NamaPenanggungJawab'],
			'WNPenanggungJawab' => $_POST['WNPenanggungJawab'],
			'Status' => $_POST['Status'],
			'Lokasi' => $_POST['Lokasi'],
			'Luas' => $_POST['Luas'],
			'PtgsRekam' => $this->session->userdata('NipUser'),
			// 'idSikabayan' => $_POST['idSikabayan'],
		);

		$this->peloro->insert('tb_perusahaan', $data);
		if ($this->peloro->trans_status() === FALSE) {
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
	}

	public function addSikabayan($id) {

		$this->peloro->trans_begin();
		$data = array(
			'NPWP' => $_POST['NPWP'],
			'NmPerusahaan' => $_POST['namatpb'],
			'Fasilitas' => null,
			'Jenis' => null,
			'AlamatPabrik' => $_POST['alamat'],
			'AlamatKantor' => $_POST['alamat'],
			'ProfilResiko' => null,
			'NoSkepPendirian' => $_POST['izin'],
			'TglSkepPendirian' => null,
			'NoSkepAkhir' => $_POST['izin'],
			'TglSkepAkhir' => null,
			'TglJatuhTempo' => null,
			'KategoriUsaha' => null,
			'NamaPenanggungJawab' => null,
			'WNPenanggungJawab' => null,
			'Status' => $_POST['status'],
			'Lokasi' => null,
			'Luas' => null,
			'PtgsRekam' => $this->session->userdata('NipUser'),
			'idSikabayan' => $id,
		);

		$this->peloro->insert('tb_perusahaan', $data);
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
			'NPWP' => $_POST['NPWP'],
			'NmPerusahaan' => $_POST['NamaPerusahaan'],
			'Fasilitas' => $_POST['Fasilitas'],
			'Jenis' => $_POST['Jenis'],
			'AlamatPabrik' => $_POST['AlamatPabrik'],
			'AlamatKantor' => $_POST['AlamatKantor'],
			'ProfilResiko' => $_POST['ProfilResiko'],
			'NoSkepPendirian' => $_POST['NoSkepPendirian'],
			'TglSkepPendirian' => $_POST['TglSkepPendirian'],
			'NoSkepAkhir' => $_POST['NoSkepAkhir'],
			'TglSkepAkhir' => $_POST['TglSkepAkhir'],
			'TglJatuhTempo' => $_POST['TglJatuhTempo'],
			'KategoriUsaha' => $_POST['KategoriUsaha'],
			'NamaPenanggungJawab' => $_POST['NamaPenanggungJawab'],
			'WNPenanggungJawab' => $_POST['WNPenanggungJawab'],
			'Status' => $_POST['Status'],
			'Lokasi' => $_POST['Lokasi'],
			'Luas' => $_POST['Luas'],
			'PtgsUpdate' => $this->session->userdata('NipUser'),
			// 'idSikabayan' => $_POST['idSikabayan'],
		);

		$this->peloro->where('IdPerusahaan', $_POST['id']);
		$this->peloro->update('tb_perusahaan', $data);

		if ($this->peloro->trans_status() === FALSE) {
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
	}

}

/* End of file perusahaan_model.php */
/* Location: ./application/models/pengawasan/perusahaan_model.php */