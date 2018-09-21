<?php
if(!defined('BASEPATH'))exit('No direct script access allowed');

class Dokumen23_model extends CI_Model {

	private $tpb_db;

	public function __construct()
	{
		parent::__construct();
		$this->tpb_db = $this->load->database('tpb',true);
	}

	var $table = 'tpb_nopen';
	var $column_order = array(null,'NOMOR_AJU','NPWP','NAMA_PERUSAHAAN','SKEP','DOKUMEN','NOMOR_DAFTAR','TANGGAL_DAFTAR','STATUS');
	var $column_search = array('NOMOR_AJU','NPWP','NAMA_PERUSAHAAN','SKEP','DOKUMEN','NOMOR_DAFTAR','TANGGAL_DAFTAR','STATUS');
	var $order = array('NOMOR_DAFTAR'=>'asc');

	private function GetListData(){
		$this->tpb_db->from($this->table);

		$i = 0;

		foreach($this->column_search as $item) //loop column
		{
			if($_POST['search']['value']) //if dataTable send POST for search
			{

				if($i === 0) //first loop
				{
					$this->tpb_db->group_start(); //open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->tpb_db->like($item, $_POST['search']['value']);
				} 
				else 
				{
					$this->tpb_db->or_like($item, $_POST['search']['value']);
				}
				if(count($this->column_search) -1 == $i) //last loop
				$this->tpb_db->group_end(); //close bracket
			}
			$i++;
		}

		if(isset($_POST['order'])) //ordering
		{
			$this->tpb_db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if(isset($this->order))
		{
			$order = $this->order;
			$this->tpb_db->order_by(key($order),$order[key($order)]);
		}

	}

	public function GetDataTable(){
		$this->GetListData();
		if($_POST['length'] != -1){
			$this->tpb_db->limit($_POST['length'], $_POST['start']);
		}
		$this->tpb_db->where('DOKUMEN',23);

		if (!empty($_GET['id'])) {
			$this->tpb_db->where('NPWP',$_GET['id']);
		}

		if (empty($_GET['tahun'])){
			$this->tpb_db->where('YEAR(TANGGAL_DAFTAR)','2018');
		}

		if (!empty($_GET['tglAwal']) && !empty($_GET['tglAkhir'])) {
			$tglAkhir = $_GET['tglAkhir']." 23:59:59";
			$this->tpb_db->where('WktMulai >=',$_GET['tglAwal']);
			$this->tpb_db->where('WktSelesai <=',$_GET['tglAkhir']." 23:59:59");
		}
		$query = $this->tpb_db->get();
		return $query->result();
	}

	public function count_filtered(){
		$this->GetListData();
		$this->tpb_db->where('DOKUMEN',23);
		if (!empty($_GET['id'])) {
			$this->tpb_db->where('NPWP',$_GET['id']);
		}

		if (empty($_GET['tahun'])){
			$this->tpb_db->where('YEAR(TANGGAL_DAFTAR)','2018');
		}

		if (!empty($_GET['tglAwal']) && !empty($_GET['tglAkhir'])) {
			$tglAkhir = $_GET['tglAkhir']." 23:59:59";
			$this->tpb_db->where('WktMulai >=',$_GET['tglAwal']);
			$this->tpb_db->where('WktSelesai <=',$_GET['tglAkhir']." 23:59:59");
		}
		$query = $this->tpb_db->get();
		return $query->num_rows();
	}

	public function count_all(){
		$this->tpb_db->from($this->table);
		$this->tpb_db->where('DOKUMEN',23);
		if (empty($_GET['tahun'])){
			$this->tpb_db->where('YEAR(TANGGAL_DAFTAR)','2018');
		}
		return $this->tpb_db->count_all_results();
	}

	public function getDokPerBulan(){
		$sql = "SELECT MONTHNAME(TANGGAL_DAFTAR) AS BULAN, COUNT(NOMOR_DAFTAR) AS DOKUMEN FROM tpb_nopen WHERE DOKUMEN = 23 AND YEAR(TANGGAL_DAFTAR) = ? GROUP BY BULAN";

		if (empty($_GET['tahun'])){
			$query = $this->tpb_db->query($sql,2018);
		} else {
			$query = $this->tpb_db->query($sql,$_GET['tahun']);
		}

		return $query->result();
	}

}

/* End of file dokumen23_model.php */
/* Location: ./application/models/dokumen/dokumen23_model.php */