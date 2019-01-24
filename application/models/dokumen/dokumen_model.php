<?php
if(!defined('BASEPATH'))exit('No direct script access allowed');

class Dokumen_model extends CI_Model {

	private $tpb_db;

	public function __construct()
	{
		parent::__construct();
		$this->tpb_db = $this->load->database('tpb',true);
	}

	public function getJumlahDokumenTahunBerjalan(){
		$this->tpb_db->from('tpb_nopen');
		$this->tpb_db->select('KODE, COUNT(KODE) AS JUMLAH_DOKUMEN', FALSE);
		$this->tpb_db->where('YEAR(TANGGAL_DAFTAR)',date('Y'));
		$this->tpb_db->group_by('KODE');
		$query = $this->tpb_db->get();
		
		if ($query->num_rows() > 0) {
			$data = $query->result();

			$result = array(
				'BC16' => 0,
				'BC23' => 0,
				'BC25' => 0,
				'BC261' => 0,
				'BC262' => 0,
				'BC27' => 0,
				'BC28' => 0,
				'BC40' => 0,
				'BC41' => 0,
			);

			foreach ($data as $value) {
				$result["BC".$value->KODE] = $value->JUMLAH_DOKUMEN;
			} 
		} else {
			$result = array(
				'BC16' => 0,
				'BC23' => 0,
				'BC25' => 0,
				'BC261' => 0,
				'BC262' => 0,
				'BC27' => 0,
				'BC28' => 0,
				'BC40' => 0,
				'BC41' => 0,
			);
		}

		return $result;
	}

	public function getByAju($aju){
		$this->tpb_db->from('tpb_header');
		$this->tpb_db->where('NOMOR_AJU',$aju);
		return $this->tpb_db->get()->row();
	}

}

/* End of file dokumen_model.php */
/* Location: ./application/models/dokumen/dokumen_model.php */