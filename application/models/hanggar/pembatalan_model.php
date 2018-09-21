<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pembatalan_model extends CI_Model {

	private $monev_db;
	private $second_db;
	private $Hanggar;

	public function __construct()
	{
		parent::__construct();
		$this->load->model('perusahaan/perusahaan_model','perusahaan',true);
		$this->monev_db = $this->load->database('monev',true);
		$this->Hanggar = $this->session->userdata('IdHanggar');
	}

	

	var $table = 'monev_pembatalan';
	var $column_order = array(null,'IdPerusahaan','JnsDok','NmrDok','TglDok','NoPembatalan','TglPembatalan', 'Alasan');
	var $column_search = array('IdPerusahaan','JnsDok','NmrDok','TglDok','NoPembatalan','TglPembatalan', 'Alasan');
	var $order = array('Id'=>'asc');

	private function GetListData(){
		$this->monev_db->from($this->table);

		$i = 0;

		foreach($this->column_search as $item) //loop column
		{
			if($_POST['search']['value']) //if dataTable send POST for search
			{

				if($i === 0) //first loop
				{
					$this->monev_db->group_start(); //open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->monev_db->like($item, $_POST['search']['value']);
				} 
				else 
				{
					$this->monev_db->or_like($item, $_POST['search']['value']);
				}
				if(count($this->column_search) -1 == $i) //last loop
				$this->monev_db->group_end(); //close bracket
			}
			$i++;
		}

		if(isset($_POST['order'])) //ordering
		{
			$this->monev_db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if(isset($this->order))
		{
			$order = $this->order;
			$this->monev_db->order_by(key($order),$order[key($order)]);
		}

	}

	public function GetDataTable(){
		$this->GetListData();
		if($_POST['length'] != -1){
			$this->monev_db->limit($_POST['length'], $_POST['start']);
		}

		if ($this->Hanggar !== 0) {
			$this->monev_db->where('IdHanggar',$this->Hanggar);
		}

		$query = $this->monev_db->get();
		return $query->result();
	}

	public function count_filtered(){
		$this->GetListData();
		if ($this->Hanggar !== 0) {
			$this->monev_db->where('IdHanggar',$this->Hanggar);
		}
		$query = $this->monev_db->get();
		return $query->num_rows();
	}

	public function count_all(){
		$this->monev_db->from($this->table);
		if ($this->Hanggar !== 0) {
			$this->monev_db->where('IdHanggar',$this->Hanggar);
		}
		return $this->monev_db->count_all_results();
	}

	public function getById($id){
		$this->monev_db->where('Id',$id);
		return $this->monev_db->get($this->table)->row();
	}

	public function add(){
		$this->monev_db->trans_begin();
		$dataPT = $this->perusahaan->getById($_POST['NamaPerusahaan']);

		$data = array(
			'IdPerusahaan' 	=> $_POST['NamaPerusahaan'],
			'IdHanggar'		=> $Hanggar,
			'JnsDok' 		=> $_POST['JnsDokumen'],
			'NmrDok' 		=> $_POST['NoDokumen'],
			'TglDok' 		=> $_POST['TglDokumen'],
			'NoPembatalan' 	=> $_POST['dokPembatalan'],
			'TglPembatalan' => $_POST['tglPembatalan'],
			'Alasan' 		=> $_POST['Alasan'],
			'PtgsRkm'		=> $_POST['NipUser']
		);

		$this->monev_db->insert($this->table,$data);

		if($this->monev_db->trans_status() === FALSE){
			$this->monev_db->trans_rollback();
			return FALSE;
		} else {
			$this->monev_db->trans_commit();
			return TRUE;
		}
	}

	public function update(){
		$this->monev_db->trans_begin();

		$data = array(
			'IdPerusahaan' 	=> $_POST['NamaPerusahaan'],
			'JnsDok' 		=> $_POST['JnsDokumen'],
			'NmrDok' 		=> $_POST['NoDokumen'],
			'TglDok' 		=> $_POST['TglDokumen'],
			'NoPembatalan' 	=> $_POST['dokPembatalan'],
			'TglPembatalan' => $_POST['tglPembatalan'],
			'Alasan' 		=> $_POST['Alasan'],
			'PtgsUpdate'	=> $_POST['NipUser']
		);

		$this->monev_db->where('Id',$_POST['id']);
		$this->monev_db->update($this->table,$data);

		if($this->monev_db->trans_status() === FALSE){
			$this->monev_db->trans_rollback();
			return FALSE;
		} else {
			$this->monev_db->trans_commit();
			return TRUE;
		}
	}

}

/* End of file pembatalan_model.php */
/* Location: ./application/models/hanggar/pembatalan_model.php */