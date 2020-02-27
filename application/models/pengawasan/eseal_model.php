<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Eseal_model extends CI_Model {

	private $peloro;
	private $Hanggar;

	public function __construct()
	{
		parent::__construct();
		$this->peloro = $this->load->database('peloro',true);
		$this->Hanggar = $this->session->userdata('IdHanggar');
	}

	var $table = "tb_eseal_detail";
	var $column_order = array(null,'IdPerusahaan','NPWP','NmPerusahaan','AlamatPabrik');
	var $column_search = array('IdPerusahaan','NPWP','NmPerusahaan','AlamatPabrik');
	var $order = array('NmPerusahaan'=>'asc');

	private function GetListData(){
		$this->peloro->from($this->table);

		$i = 0;

		foreach($this->column_search as $item) //loop column
		{
			if($_POST['search']['value']) //if dataTable send POST for search
			{

				if($i === 0) //first loop
				{
					$this->peloro->group_start(); //open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->peloro->like($item, $_POST['search']['value']);
				} 
				else 
				{
					$this->peloro->or_like($item, $_POST['search']['value']);
				}
				if(count($this->column_search) -1 == $i) //last loop
				$this->peloro->group_end(); //close bracket
			}
			$i++;
		}

		if(isset($_POST['order'])) //ordering
		{
			$this->peloro->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if(isset($this->order))
		{
			$order = $this->order;
			$this->peloro->order_by(key($order),$order[key($order)]);
		}

	}

	public function GetDataTable(){
		$this->GetListData();
		if($_POST['length'] != -1){
			$this->peloro->limit($_POST['length'], $_POST['start']);
		}

		if ($this->Hanggar !== 0) {
			$this->peloro->where('IdHanggar',$this->Hanggar);
		}

		$this->peloro->where('Status_TPB','Y');

		if (!empty($_GET['nama'])){
			$this->peloro->like('NmPerusahaan',$_GET['nama']);
		}

		$query = $this->peloro->get();
		return $query->result();
	}

	public function count_filtered(){
		$this->GetListData();
		if ($this->Hanggar !== 0) {
			$this->peloro->where('IdHanggar',$this->Hanggar);
		}

		$this->peloro->where('Status_TPB','Y');

		if (!empty($_GET['nama'])){
			$this->peloro->like('NmPerusahaan',$_GET['nama']);
		}
		$query = $this->peloro->get();
		return $query->num_rows();
	}

	public function count_all(){
		$this->peloro->from($this->table);
		if ($this->Hanggar !== 0) {
			$this->peloro->where('IdHanggar',$this->Hanggar);
		}
		$this->peloro->where('Status_TPB','Y');
		return $this->peloro->count_all_results();
	}

	public function getById(){
		$this->peloro->from($this->table);
		$this->peloro->where('Id',$_GET['id']);
		$query = $this->peloro->get();
		return $query->row();
	}

	public function getByIdTpb() {
		$this->peloro->from($this->table);
		$this->peloro->where('IdTpbSikabayan', $_GET['id']);
		$query = $this->peloro->get();
		return $query->row();
	}

	public function getTpbNonIT($search,$column){
		$this->peloro->from('tb_non_eseal');
		$this->peloro->select($column);
		$this->peloro->where('Fasilitas','PLB');
		$this->peloro->like('NmPerusahaan',$search);
		$query = $this->peloro->get();

		return $query->result_array();
	}

	public function add(){
		$this->peloro->trans_begin();

		$data = array(
			'IdPerusahaan' => $_POST['NamaPerusahaan'],
			'IpAddress' => $_POST['IpAddress'],
			'Username' => $_POST['Username'],
			'Password' => $_POST['Password'],
			'Browser' => $_POST['Browser'],
			'Realtime' => $_POST['Realtime'],
			'Status' => $_POST['Status'],
			'Keterangan' => $_POST['Keterangan'],
			'PtgsRekam' => $_POST['NipUser']
		);

		$this->peloro->insert('tb_eseal',$data);

		if($this->peloro->trans_status() === FALSE){
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
	}

	public function update(){
		$this->peloro->trans_begin();

		$data = array(
			'IdPerusahaan' => $_POST['NamaPerusahaan'],
			'IpAddress' => $_POST['IpAddress'],
			'Username' => $_POST['Username'],
			'Password' => $_POST['Password'],
			'Browser' => $_POST['Browser'],
			'Realtime' => $_POST['Realtime'],
			'Status' => $_POST['Status'],
			'Keterangan' => $_POST['Keterangan'],
			'PtgsUpdate' => $_POST['NipUser']
		);

		$this->peloro->where('id',$_POST['id']);
		$this->peloro->update('tb_eseal',$data);

		if($this->peloro->trans_status() === FALSE){
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
	}

}

/* End of file eseal_model.php */
/* Location: ./application/models/pengawasan/eseal_model.php */