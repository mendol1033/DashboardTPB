<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	public function index()
	{
		$this->data['JudulPanelBesar'] = 'Monitoring dan Evaluasi Hanggar Pabean dan Cukai';
		$this->data['js'] = 'hanggar/laporan/js';
		$this->data['modal'] = "hanggar/laporan/Modal";
		$this->data['css'] = null;
		$this->data['breadcrumb'] = "Dashboard";
		$this->data['breadcrumb_item'] = array("Hanggar","Laporan");

		// Dropdown list Jenis Dokumen
		$jnsDokumen = $this->menu->getJenisDokumen();
		$jnsDok[] = "Semua Dokumen";
		foreach ($jnsDokumen as $key => $value) {
			$jnsDok[$value['Kd_Dok']] = $value['Nm_Dok'];
		}
		$kendala = array(
			'' => '-- Pilih Kendala Permasalahan Ceisa --',
			'1' => 'Kendala Internal Perusahaan',
			'2' => 'Kendala Server CEISA (IKC)',
			'3' => 'Kendala Akses VPN (Pusintek)'
		);

		$options = array('jnsDok' => $jnsDok,'kendala' => $kendala);
		$this->data['options'] = $options;

		$this->load->view('hanggar/laporan/main_content',$this->data);
	}

	public function page_info(){
		$data['breadcrumb_item'] = array("Hanggar","Laporan");

		echo json_encode($data);
	}

}

/* End of file laporan.php */
/* Location: ./application/controllers/hanggar/laporan.php */