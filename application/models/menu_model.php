<?php
if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

class Menu_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->load->model('dokumen/dokumen_model', 'dokumen', true);
		$this->load->model('perusahaan/perusahaan_model', 'perusahaan', true);
	}

	private $selected_db;

	public function Menu($unit) {
		$jumlahDokumen = $this->dokumen->getJumlahDokumenTahunBerjalan();
		$Dashboard = array(
			'url' => '#',
			'icon' => 'fa fa-dashboard',
			'menu' => 'Dashboard',
			'subMenu' => array(
				'dashboardV1' => array(
					'url' => 'dashboard/summary',
					'menu' => 'Dashboard V1',
				),
				'dashboardV2' => array(
					'url' => 'dashboard/',
					'menu' => 'Dashboard V2',
				),
			),
		);

		$Dokumen = array(
			'url' => '#',
			'icon' => 'fa fa-file',
			'menu' => 'Dokumen',
			'subMenu' => array(
				'BC16' => array(
					'url' => 'dokumen/dokumen/index/16',
					'menu' => 'BC 1.6',
					'jumlah' => $jumlahDokumen['BC16'],
				),
				'BC23' => array(
					'url' => 'dokumen/dokumen23',
					'menu' => 'BC 2.3',
					'jumlah' => $jumlahDokumen['BC23'],
				),
				'BC25' => array(
					'url' => 'dokumen/dokumen25',
					'menu' => 'BC 2.5',
					'jumlah' => $jumlahDokumen['BC25'],
				),
				'BC261' => array(
					'url' => 'dokumen/dokumen261',
					'menu' => 'BC 2.6.1',
					'jumlah' => $jumlahDokumen['BC261'],
				),
				'BC262' => array(
					'url' => 'dokumen/dokumen262',
					'menu' => 'BC 2.6.2',
					'jumlah' => $jumlahDokumen['BC262'],
				),
				'BC27' => array(
					'url' => 'dokumen/dokumen27',
					'menu' => 'BC 2.7',
					'jumlah' => $jumlahDokumen['BC27'],
				),
				'BC28' => array(
					'url' => 'dokumen/dokumen28',
					'menu' => 'BC 2.8',
					'jumlah' => $jumlahDokumen['BC28'],
				),
				'BC40' => array(
					'url' => 'dokumen/dokumen40',
					'menu' => 'BC 4.0',
					'jumlah' => $jumlahDokumen['BC40'],
				),
				'BC41' => array(
					'url' => 'dokumen/dokumen41',
					'menu' => 'BC 4.1',
					'jumlah' => $jumlahDokumen['BC41'],
				),
			),
		);

		$totalPerusahaan = $this->perusahaan->countAllPerusahaan();
		$jumlahPerusahaan = $this->perusahaan->getJumlahTPB();
		$perusahaan = array(
			'url' => 'perusahaan',
			'icon' => 'fa fa-industry',
			'menu' => 'Stakeholder',
			'subMenu' => array(
				'ALL' => array(
					'url' => 'perusahaan/tpb',
					'menu' => 'Semua Perusahaan',
					'jumlah' => $totalPerusahaan,
				),
				'KB' => array(
					'url' => 'perusahaan/tpb/index/2',
					'menu' => 'Kawasan Berikat',
					'jumlah' => $jumlahPerusahaan['2'],
				),
				'GB' => array(
					'url' => 'perusahaan/tpb/index/1',
					'menu' => 'Gudang Berikat',
					'jumlah' => $jumlahPerusahaan['1'],
				),
				'TPPB' => array(
					'url' => 'perusahaan/tpb/index/6',
					'menu' => 'Pameran Berikat',
					'jumlah' => $jumlahPerusahaan['6'],
				),
				'TBB' => array(
					'url' => 'perusahaan/tpb/index/7',
					'menu' => 'Toko Bebas Bea',
					'jumlah' => $jumlahPerusahaan['7'],
				),
				'TLB' => array(
					'url' => 'perusahaan/tpb/index/8',
					'menu' => 'Tempat Lelang Berikat',
					'jumlah' => $jumlahPerusahaan['8'],
				),
				'KDUB' => array(
					'url' => 'perusahaan/tpb/index/9',
					'menu' => 'Kawasan Daur Ulang Berikat',
					'jumlah' => $jumlahPerusahaan['9'],
				),
				'PLB' => array(
					'url' => 'perusahaan/tpb/index/3',
					'menu' => 'Pusat Logistik Berikat',
					'jumlah' => $jumlahPerusahaan['3'],
				),
				'TPS' => array(
					'url' => 'perusahaan/tpb/index/4',
					'menu' => 'Tempat Penimbunan Sementara',
					'jumlah' => $jumlahPerusahaan['4'],
				),
				'CUKAI' => array(
					'url' => 'perusahaan/tpb/index/5',
					'menu' => 'Pengusaha Barang Kena Cukai',
					'jumlah' => $jumlahPerusahaan['5'],
				),
			),
		);

		$hanggar = array(
			'url' => '#',
			'icon' => 'fa fa-indent',
			'menu' => 'Hanggar',
			'subMenu' => array(),
		);

		switch ((int) $this->session->userdata('GrupMenu')) {
		case 1:
			$hanggar['subMenu'][] = array(
				'url' => 'hanggar/monevumum/admin',
				'menu' => 'Admin Monev Umum',
			);
			$hanggar['subMenu'][] = array(
				'url' => 'hanggar/monevumum/monitoring',
				'menu' => 'Monitoring Monev Umum',
			);
			break;
		case 6:
			$hanggar['subMenu'][] = array(
				'url' => 'hanggar/monevumum',
				'menu' => 'Monev Umum',
			);
			break;

		default:
			$hanggar['subMenu'][] = array(
				'url' => 'hanggar/monevumum',
				'menu' => 'Monev Umum',
			);
			break;
		}

		$hanggar['subMenu'][] = array(
			'url' => 'hanggar/monevumum/archive',
			'menu' => 'Arsip Laporan',
		);

		$pengawasan = array(
			'url' => '#',
			'icon' => 'fa fa-user-secret',
			'menu' => 'Pengawasan',
			'subMenu' => array(
				'tpb' => array(
					'url' => 'pengawasan/tpb',
					'menu' => 'Data Perusahaan',
				),
				'cctv' => array(
					'url' => 'pengawasan/cctv',
					'menu' => 'CCTV',
				),
				'it' => array(
					'url' => 'pengawasan/it',
					'menu' => 'IT Inventory',
				),
				'eSeal' => array(
					'url' => 'pengawasan/eseal',
					'menu' => 'E Seal',
				),
				'monev' => array(
					'url' => 'pengawasan/monevmoncer',
					'menu' => 'Monev Umum',
				),
				'random_check' => array(
					'url' => 'pengawasan/random_check',
					'menu' => 'Random Check CCTV dan IT',
				),

			),
		);

		$admin = array(
			'url' => '#',
			'icon' => 'fa fa-user-secret',
			'menu' => 'Administrator',
			'subMenu' => array(
				'Upload Data' => array(
					'url' => 'admin/uploaddata',
					'menu' => 'Upload Dokumen',
				),
				'Upload TPB' => array(
					'url' => 'admin/uploadtpb',
					'menu' => 'Input Data TPB Baru',
				),
			),
		);

		switch ($unit) {
		case 3:
			$data = array(
				'mainMenu' => array($Dashboard, $Dokumen, $perusahaan),
			);
			break;

		case 5:
			$data = array(
				'mainMenu' => array($Dashboard, $Dokumen, $perusahaan, $pengawasan),
			);
			break;

		case 6:
			$data = array(
				'mainMenu' => array($Dashboard, $Dokumen, $perusahaan, $hanggar),
			);
			break;

		case 10:
			$data = array(
				'mainMenu' => array($Dashboard, $Dokumen, $perusahaan),
			);
			break;

		case 12:
			$data = array(
				'mainMenu' => array($Dashboard, $Dokumen, $perusahaan, $hanggar),
			);
			break;

		default:
			$data = array(
				'mainMenu' => array($Dashboard, $Dokumen, $perusahaan, $hanggar, $pengawasan),
				'adminMenu' => array($admin),
			);
			break;
		}

		return $data;
	}

	public function getJenisDokumen() {
		$this->selected_db = $this->load->database('tpb', TRUE);
		$query = $this->selected_db->get('tb_jenis_dokumen');

		return $query->result_array();
	}

	public function getJenisDokumenByKode($filter) {
		$this->selected_db = $this->load->database('tpb', TRUE);
		$this->selected_db->where('Kd_Dok', $filter);
		$query = $this->selected_db->get('tb_jenis_dokumen');

		return $query->row();
	}
}

/* End of file menu_model.php */
/* Location: ./application/models/menu_model.php */