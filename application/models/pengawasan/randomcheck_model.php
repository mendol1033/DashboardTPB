<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Randomcheck_model extends CI_Model {

	private $peloro;

	public function __construct()
	{
		parent::__construct();
		$this->peloro = $this->load->database('peloro',TRUE);
		
	}

	var $table = "tb_cek_cctv_detail";
	var $column_order = array(null,'Id');
	var $column_search = array('IdPerusahaan','NmPerusahaan');
	var $order = array('Id'=>'asc');

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

		if (!empty($_GET['nama'])){
			$this->peloro->like('NmPerusahaan',$_GET['nama']);
		}

		$query = $this->peloro->get();
		return $query->result();
	}

	public function count_filtered(){
		$this->GetListData();

		if (!empty($_GET['nama'])){
			$this->peloro->like('NmPerusahaan',$_GET['nama']);
		}
		$query = $this->peloro->get();
		return $query->num_rows();
	}

	public function count_all(){
		$this->peloro->from($this->table);
		return $this->peloro->count_all_results();
	}

	public function getById(){
		$this->peloro->from($this->table);
		$this->peloro->where('Id',$_GET['id']);
		$query = $this->peloro->get();
		return $query->row();
	}

	public function getRandom(){
		// Set Limit
		$sql = 'SELECT CEIL(COUNT(IdPerusahaan)/5) AS LIM FROM tb_perusahaan WHERE Status = "Y"';
		$query = $this->peloro->query($sql)->result_array();
		$limit = $query[0]['LIM'];

		// Get Perusahaan By Random
		$this->peloro->from('tb_view_random');
		$this->peloro->limit($limit);
		$this->peloro->order_by('IdPerusahaan','RANDOM');
		$lastQuery = $this->peloro->get();

		return $lastQuery->result_array();
	}

	public function add($post){
		$this->peloro->trans_begin();
		$this->peloro->insert_batch('tb_cek_cctv',$post);

		if($this->peloro->trans_status() === FALSE){
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$this->peloro->trans_commit();
			return TRUE;
		}
	}

	public function getReportData(){
		$this->peloro->from('tb_cek_cctv_detail');
		$this->peloro->where('DATE(WktRekam)',DATE('Y-m-d'));
		$query = $this->peloro->get()->result_array();
		$a = $query;
		end($a);
		$last = key($a) + 1;
		$data = array();
		$no = 0;

		if(sizeof($query) > 0){
			for ($i = 0; $i < $last ; $i++) {
				if($query[$i]['StatusCCTV'] === "Y"){
					$StatusCCTV = "AKTIF";
				} else {
					$StatusCCTV = "TIDAK AKTIF";
				}

				if($query[$i]['StatusInventory'] === "Y"){
					$StatusIT = "AKTIF";
				} else {
					$StatusIT = "TIDAK AKTIF";
				}

				$no++;
				$data[] = array(
					$no, $query[$i]['NPWP'], $query[$i]['NmPerusahaan'], $query[$i]['IpCCTV'], $StatusCCTV, $query[$i]['IpIT'], $StatusIT, $query[$i]['TindakLanjut']
				);
			}
		}

		return $data;
	}

}

/* End of file randomcheck_model.php */
/* Location: ./application/models/pengawasan/randomcheck_model.php */