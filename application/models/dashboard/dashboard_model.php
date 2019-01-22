<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->dashboard = $this->load->database('tpb',true);
	}

	public function getOption($param){
		switch ($param) {
			case "namaPerusahaan":
				$query = "";
				break;
			case "tpb":
				$query = "";
				break;
			
			default:
				$query = "";
				break;
		}

		$data = $this->dashboard->query($query);

		return $data->result_array();
	}

}

/* End of file dashboard_model.php */
/* Location: ./application/models/dashboard/dashboard_model.php */