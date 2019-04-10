<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hanggar_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}
	
	var $table = 'tb_petugas_hanggar_detail';
	var $column_order = array(null, 'Id', 'NamaPegawai', 'Pangkat', 'NamaJabatan');
	var	$column_search = array('NamaPegawai');
	var $order = array('id'=>'asc');

	private function GetListData(){
		$this->db->from($this->table);

		$i = 0;

		foreach($this->column_search as $item) //loop column
		{
			if($_POST['search']['value']) //if dataTable send POST for search
			{

				if($i === 0) //first loop
				{
					$this->db->group_start(); //open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				} 
				else 
				{
					$this->db->or_like($item, $_POST['search']['value']);
				}
				if(count($this->column_search) -1 == $i) //last loop
				$this->db->group_end(); //close bracket
			}
			$i++;
		}

		if(isset($_POST['order'])) //ordering
		{
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if(isset($this->order))
		{
			$order = $this->order;
			$this->db->order_by(key($order),$order[key($order)]);
		}

	}

	public function GetDataTable(){
		$this->GetListData();
		if($_POST['length'] != -1){
			$this->db->limit($_POST['length'], $_POST['start']);
		}

		if(!empty($_POST['id'])){
			$this->db->where('IdHanggar',$_POST['id']);
		}
		
		$query = $this->db->get();
		return $query->result();
	}

	public function count_filtered(){
		$this->GetListData();

		if(!empty($_POST['id'])){
			$this->db->where('IdHanggar',$_POST['id']);
		}

		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all(){
		$this->db->from($this->table);

		if(!empty($_POST['id'])){
			$this->db->where('IdHanggar',$_POST['id']);
		}

		return $this->db->count_all_results();
	}
	
}

/* End of file hanggar_model.php */
/* Location: ./application/models/hanggar/hanggar_model.php */