<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Subkon_model extends CI_Model {

	private $sikabayan_db;
	private $Hanggar;
	private $oa;

	public function __construct() {
		parent::__construct();
		$this->sikabayan_db = $this->load->database('sikabayan', true);
		$this->oa = $this->load->database('oa', true);
		$this->Hanggar = $this->session->userdata('IdHanggar');
		
	}

	var $table = "header_keluar";
	var $column_order = array(null, 'agd', 'tglagenda', 'nmr', 'isi', 'IDSurat','thn');
	var $column_search = array('agd', 'tglagenda', 'nmr', 'isi', 'Nomor');
	var $order = array('keluar' => 'desc');

	private function GetListData() {
		$this->oa->from($this->table);

		$i = 0;

		foreach ($this->column_search as $item) //loop column
		{
			if ($_POST['search']['value']) //if dataTable send POST for search
			{

				if ($i === 0) //first loop
				{
					$this->oa->group_start(); //open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->oa->like($item, $_POST['search']['value']);
				} else {
					$this->oa->or_like($item, $_POST['search']['value']);
				}
				if (count($this->column_search) - 1 == $i) //last loop
				{
					$this->oa->group_end();
				}
				//close bracket
			}
			$i++;
		}

		if (isset($_POST['order'])) //ordering
		{
			$this->oa->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if (isset($this->order)) {
			$order = $this->order;
			$this->oa->order_by(key($order), $order[key($order)]);
		}

	}

	public function GetDataTable() {
		$this->GetListData();
		if ($_POST['length'] != -1) {
			$this->oa->limit($_POST['length'], $_POST['start']);
		}

		$this->oa->where('UsahaNpwp',$_SESSION['NPWP']);
		$this->oa->like('agd',$_POST['agenda']);

		$query = $this->oa->get();
		return $query->result();
	}

	public function count_filtered() {
		$this->GetListData();

		$this->oa->where('UsahaNpwp',$_SESSION['NPWP']);
		$this->oa->like('agd',$_POST['agenda']);

		$query = $this->oa->get();
		return $query->num_rows();
	}

	public function count_all() {
		$this->oa->from($this->table);

		$this->oa->where('UsahaNpwp',$_SESSION['NPWP']);
		$this->oa->like('agd',$_POST['agenda']);

		return $this->oa->count_all_results();
	}

	public function getDataSubkontrak(){
		$this->oa->from('tblsurathdr');
		$this->oa->where('IDSurat',$_GET['idSurat']);
		$dataHeader = $this->oa->get()->row_array();

		$this->oa->from('tblsuratpenerima');
		$this->oa->where('IDSurat',$_GET['idSurat']);
		$dataPenerima = $this->oa->get()->row_array();

		$this->oa->from('tblsuratdetilbarang');
		$this->oa->where('IDSurat',$_GET['idSurat']);
		$dataBarang = $this->oa->get()->result_array();

		$this->oa->from('tblsuratbarangjadi');
		$this->oa->where('IDSurat',$_GET['idSurat']);
		$dataJadi = $this->oa->get()->result_array();

		$this->oa->from('tblsuratbarangsisa');
		$this->oa->where('IDSurat',$_GET['idSurat']);
		$dataSisa = $this->oa->get()->result_array();

		$date = strtotime($dataHeader['Tanggal']);

		$this->oa->from('i_kel');
		$this->oa->where('nmr',$dataHeader['Nomor']);
		$this->oa->where('thn',date('Y',$date));
		$dataSurat = $this->oa->get()->row_array();

		$data = array(
			'surat' => $dataSurat,
			'header' => $dataHeader,
			'penerima' => $dataPenerima,
			'barang' => $dataBarang,
			'jadi' => $dataJadi,
			'sisa' => $dataSisa
		);
		
		return $data;
	}

}

/* End of file subkon_model.php */
/* Location: ./application/models/perusahaan/subkon_model.php */