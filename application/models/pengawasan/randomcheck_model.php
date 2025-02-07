<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Randomcheck_model extends CI_Model {

	private $peloro;

	public function __construct()
	{
		parent::__construct();
		$this->peloro = $this->load->database('peloro',TRUE);
		$this->load->model('log_model','app_log',TRUE);
	}

	var $table = "tb_cek_cctv_detail";
	var $column_order = array(null,'Id');
	var $column_search = array('IdPerusahaan','NmPerusahaan');
	var $order = array('Id'=>'desc');

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
		$sql = 'SELECT * FROM tb_cek_cctv_detail WHERE DATE(WktRekam)=CURDATE()';
		$query = $this->peloro->query($sql);
		if ($query->num_rows() != 0) {
			$lastQuery = $query->result_array();
			$proses = 1;
		} else {
			// Set Limit
			$sql = 'SELECT CEIL(COUNT(IdPerusahaan)/5) AS LIM FROM tb_perusahaan WHERE Status = "Y"';
			$query = $this->peloro->query($sql)->result_array();
			$limit = $query[0]['LIM'];

			// Get Perusahaan By Random
			$this->peloro->from('tb_view_random');
			$this->peloro->limit($limit);
			$this->peloro->order_by('IdPerusahaan','RANDOM');
			$lastQuery = $this->peloro->get()->result_array();
			$proses = 2;
		}

		$data = array('data' => $lastQuery,'proses' => $proses);
		return $data;
	}

	public function add($post,$proses){
		$dataPost = $post;
		$this->peloro->trans_begin();
		// Add Data Cek Random
		if($proses == "update"){
			$this->peloro->update_batch('tb_cek_cctv',$post,'Id');
		} else {
			$this->peloro->insert_batch('tb_cek_cctv',$post);
		}
		
		foreach ($dataPost as $value) {
			$dataCCTV = array(
				'Status' => $value['StatusCCTV'],
				'PtgsUpdate' => $value['PtgsRekam']
			);

			$dataIT = array(
				'Status' => $value['StatusInventory'],
				'PtgsUpdate' => $value['PtgsRekam']
			);

			// Update Table CCTV
			$this->peloro->where('Id',$value['IdCCTV']);
			$this->peloro->update('tb_cctv',$dataCCTV);

			// Update Table IT Inventory
			$this->peloro->where('Id',$value['IdInventory']);
			$this->peloro->update('tb_it',$dataIT);
		}

		if($this->peloro->trans_status() === FALSE){
			$this->peloro->trans_rollback();
			return FALSE;
		} else {
			$IdUser = $this->session->userdata('IdUser');
			$operation = "Tambah";
			$app = "Random Check CCTV dan IT Inventory";
			$status = $this->app_log->addHistory($IdUser,$operation,$app);
			if ($status === TRUE) {
				$this->peloro->trans_commit();
				return TRUE;	
			} else {
				$this->peloro->trans_rollback();
				return FALSE;
			}
			
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

	public function getGraphData($id,$app){
		if ($app = "cctv"){
			$sql = 'SELECT MONTHNAME(WktRekam) AS BULAN, YEAR(WktRekam) AS TAHUN, SUM(IF(StatusCCTV = "Y",1,0)) AS AKTIF, SUM(IF(StatusCCTV = "N", 1, 0)) AS TIDAK_AKTIF FROM tb_cek_cctv WHERE IdPerusahaan = ? GROUP BY MONTH(WktRekam) ORDER BY TAHUN ASC, MONTH(WktRekam) ASC';
		} else {
			$sql = 'SELECT MONTHNAME(WktRekam) AS BULAN, YEAR(WktRekam) AS TAHUN, SUM(IF(StatusInventory = "Y",1,0)) AS AKTIF, SUM(IF(StatusInventory = "N", 1, 0)) AS TIDAK_AKTIF FROM tb_cek_cctv WHERE IdPerusahaan = ? GROUP BY MONTH(WktRekam) ORDER BY TAHUN ASC, MONTH(WktRekam) ASC';
		}
		

		$query = $this->peloro->query($sql,$id);

		return $query->result_array();
	}

}

/* End of file randomcheck_model.php */
/* Location: ./application/models/pengawasan/randomcheck_model.php */