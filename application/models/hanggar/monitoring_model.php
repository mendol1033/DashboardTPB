<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monitoring_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->peloro = $this->load->database('peloro', TRUE);
		$this->sikabayan = $this->load->database('sikabayan', TRUE);
		$this->monev = $this->load->database('monev', TRUE);
		$this->Hanggar = $this->session->userdata('IdHanggar');
	}

	var $table = 'tpbdetail';
	var $column_order = array(null,'NPWP','nama_perusahaan','alamat');
	var $column_search = array('NPWP','nama_perusahaan','alamat');
	var $order = array('id_perusahaan'=>'asc');

	private function GetListData(){
		$this->sikabayan->from($this->table);

		$i = 0;

		foreach($this->column_search as $item) //loop column
		{
			if($_POST['search']['value']) //if dataTable send POST for search
			{

				if($i === 0) //first loop
				{
					$this->sikabayan->group_start(); //open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->sikabayan->like($item, $_POST['search']['value']);
				} 
				else 
				{
					$this->sikabayan->or_like($item, $_POST['search']['value']);
				}
				if(count($this->column_search) -1 == $i) //last loop
				$this->sikabayan->group_end(); //close bracket
			}
			$i++;
		}

		if(isset($_POST['order'])) //ordering
		{
			$this->sikabayan->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if(isset($this->order))
		{
			$order = $this->order;
			$this->sikabayan->order_by(key($order),$order[key($order)]);
		}

	}

	public function GetDataTable(){
		$this->GetListData();
		if($_POST['length'] != -1){
			$this->sikabayan->limit($_POST['length'], $_POST['start']);
		}

		if ($this->Hanggar !== 0) {
			$this->sikabayan->where('IdHanggar',$this->Hanggar);
		}

		$this->sikabayan->where('status',"Y");

		$z = $this->sudahLaporan();
		if (count($z) > 0) {
			$this->sikabayan->where_not_in('id_perusahaan',$z);
		}
		
		$query = $this->sikabayan->get();
		return $query->result();
	}

	public function count_filtered(){
		$this->GetListData();
		if ($this->Hanggar !== 0) {
			$this->sikabayan->where('IdHanggar',$this->Hanggar);
		}

		$z = $this->sudahLaporan();
		$this->sikabayan->where('status',"Y");
		if (count($z) > 0) {
			$this->sikabayan->where_not_in('id_perusahaan',$z);
		}

		$query = $this->sikabayan->get();
		return $query->num_rows();
	}

	public function count_all(){
		$this->sikabayan->from($this->table);
		if ($this->Hanggar !== 0) {
			$this->sikabayan->where('IdHanggar',$this->Hanggar);
		}

		$z = $this->sudahLaporan();
		$this->sikabayan->where('status',"Y");
		if (count($z) > 0) {
			$this->sikabayan->where_not_in('id_perusahaan',$z);
		}

		return $this->sikabayan->count_all_results();
	}

	private function sudahLaporan(){
		$bulan = (int)$_POST['bulan'];
		$tahun = (int)$_POST['tahun'];
		$this->monev->from('monev_hanggar');
		$this->monev->select('idPerusahaan');
		$this->monev->where('flag !=',0);
		$this->monev->where('flag !=',99);
		$this->monev->where("DATE_FORMAT(tanggalLaporan,'%m')",(int)$bulan);
		$this->monev->where("DATE_FORMAT(tanggalLaporan,'%Y')",(int)$tahun);
		$this->monev->distinct();
		$x = $this->monev->get();

		if ($x->num_rows() > 0) {
			$y = $x->result_array();

			foreach ($y as $key => $value) {
				$z[] = $value['idPerusahaan'];
			}
		} else {
			$z = array();
		}

		return $z;
	}

}

/* End of file monitoring_model.php */
/* Location: ./application/models/hanggar/monitoring_model.php */