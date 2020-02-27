<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Uploadprofile extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/uploaddata_model','dataupload',true);
		$this->load->model('dokumen/dokumen_model','dokumen',true);
	}

	public function index()
	{
		$this->data['main_content'] = 'administrator/upload_profile/main_content';
		$this->data['JudulPanelBesar'] = 'Upload Data';
		$this->data['js'] = 'administrator/upload_profile/js';
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Dashboard";
		$this->data['breadcrumb_item'] = array("Administrator","Upload Data Profile");
		$this->load->view('administrator/upload_profile/main_content',$this->data);
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Administrator","Upload Data Profile");

		echo json_encode($data);
	}

	public function upload(){
		if(!empty($_FILES["data"]["name"])){
			$dir = "assets/upload/excel/";
			$config["upload_path"] = $dir;
			$config["allowed_types"] = "json|txt";
			$config["file_name"] = basename($_FILES["data"]["name"]);

			if (!is_dir($dir)) {
				mkdir("./assets/upload/excel/",0777,TRUE);
			}

			$this->load->library('upload', $config); 

			if(! $this->upload->do_upload('data')){
					echo $this->upload->display_errors();
				} else {
					$dataPost = array($_POST,$_FILES);
					$data = $this->upload->data();

					echo json_encode(
						array(
							'pesan' => $pesan,
							'data' => $data,
						)
					);
				}

			
			$jsondata = file_get_contents($dir.basename($_FILES["data"]["name"]));
			$data = json_decode($jsondata,true);
		}

		echo json_encode($data);
	}

}

/* End of file uploadprofile.php */
/* Location: ./application/controllers/admin/uploadprofile.php */
