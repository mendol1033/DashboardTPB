<?php
if(!defined('BASEPATH'))exit('No direct script access allowed');

class Menu_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('dokumen/dokumen_model','dokumen',true);
		$this->load->model('perusahaan/perusahaan_model','perusahaan',true);
	}

	private $selected_db;

	public function Menu($unit){
		$jumlahDokumen = $this->dokumen->getJumlahDokumenTahunBerjalan();
		$Dashboard = array(
			'url' => 'dashboard/summary',
			'icon' => 'fa fa-dashboard',
			'menu' => 'Dashboard'
		);

		$Dokumen = array(
			'url' => '#',
			'icon' => 'fa fa-file',
			'menu' => 'Dokumen',
			'subMenu' => array(
				'BC16' => array(
					'url' => 'dokumen/dokumen16',
					'menu' => 'BC 1.6',
					'jumlah' => $jumlahDokumen['BC16'],
				),
				'BC23' => array(
					'url' => 'dokumen/dokumen23',
					'menu' => 'BC 2.3',
					'jumlah' => $jumlahDokumen['BC23']
				),
				'BC25' => array(
					'url' => 'dokumen/dokumen25',
					'menu' => 'BC 2.5',
					'jumlah' => $jumlahDokumen['BC25']
				),
				'BC261' => array(
					'url' => 'dokumen/dokumen261',
					'menu' => 'BC 2.6.1',
					'jumlah' => $jumlahDokumen['BC261']
				),
				'BC262' => array(
					'url' => 'dokumen/dokumen262',
					'menu' => 'BC 2.6.2',
					'jumlah' => $jumlahDokumen['BC262']
				),
				'BC27' => array(
					'url' => 'dokumen/dokumen27',
					'menu' => 'BC 2.7',
					'jumlah' => $jumlahDokumen['BC27']
				),
				'BC28' => array(
					'url' => 'dokumen/dokumen28',
					'menu' => 'BC 2.8',
					'jumlah' => $jumlahDokumen['BC28']
				),
				'BC40' => array(
					'url' => 'dokumen/dokumen40',
					'menu' => 'BC 4.0',
					'jumlah' => $jumlahDokumen['BC40']
				),
				'BC41' => array(
					'url' => 'dokumen/dokumen41',
					'menu' => 'BC 4.1',
					'jumlah' => $jumlahDokumen['BC41']
				),
			)
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
				'GB' => array(
					'url' => '#',
					'menu' => 'Gudang Berikat',
					'jumlah' => $jumlahPerusahaan['1'],
				),
				'KB' => array(
					'url' => '#',
					'menu' => 'Kawasan Berikat',
					'jumlah' => $jumlahPerusahaan['2'],
				),
				'TPPB' => array(
					'url' => '#',
					'menu' => 'Pameran Berikat',
					'jumlah' => $jumlahPerusahaan['6'],
				),
				'TBB' => array(
					'url' => '#',
					'menu' => 'Toko Bebas Bea',
					'jumlah' => $jumlahPerusahaan['7'],
				),
				'TLB' => array(
					'url' => '#',
					'menu' => 'Tempat Lelang Berikat',
					'jumlah' => $jumlahPerusahaan['8'],
				),
				'KDUB' => array(
					'url' => '#',
					'menu' => 'Kawasan Daur Ulang Berikat',
					'jumlah' => $jumlahPerusahaan['9'],
				),
				'PLB' => array(
					'url' => '#',
					'menu' => 'Pusat Logistik Berikat',
					'jumlah' => $jumlahPerusahaan['3'],
				),
			),
		);

		$hanggar = array(
			'url' => '#',
			'icon' => 'fa fa-indent',
			'menu' => 'Hanggar',
			'subMenu' => array(
				'laporan' => array(
					'url' => 'hanggar/laporan',
					'menu' => 'Laporan Monev'
				),
				'monveCCTVIT' => array(
					'url' => 'hanggar/monevcctvit',
					'menu' => 'Monev CCTV & IT INVENTORY',
					'modal' => 'FormCCTVIT'
				),
				'monevCEISA' => array(
					'url' => 'hanggar/monevceisa',
					'menu' => 'Monev CEISA',
					'modal' => 'FormCeisa'
				),
				'monevDokMasuk' => array(
					'url' => 'hanggar/monevdokmasuk',
					'menu' => 'Monev Dokumen Masuk',
					'modal' => 'FormDokMasuk'
				),
				'monevDokKeluar' => array(
					'url' => 'hanggar/monevdokkeluar',
					'menu' => 'Monev Dokumen Keluar',
					'modal' => 'FormDokKeluar'
				),
				'monevPembatalan' => array(
					'url' => 'hanggar/pembatalan',
					'menu' => 'Monev Pembatalan',
					'modal' => 'FormPembatalan'
				),
			),
		);

		$pengawasan = array(
			'url' => '#',
			'icon' => 'fa fa-user-secret',
			'menu' => 'Pengawasan',
			'subMenu' => array(
				'tpb' => array(
					'url' => 'pengawasan/tpb',
					'menu' => 'Data Perusahaan'
				),
				'cctv' => array(
					'url' => 'pengawasan/cctv',
					'menu' => 'CCTV',
				),
				'it' => array(
					'url' => 'pengawasan/it',
					'menu' => 'IT Inventory'
				),
				'eSeal' => array(
					'url' => 'pengawasan/eseal',
					'menu' => 'E Seal'
				),
				'random_check' => array(
					'url' => 'pengawasan/random_check',
					'menu' => 'Random Check CCTV dan IT'
				)

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
					'menu' => 'Input Data TPB Baru'
				),
			),
		);

		switch ($unit) {
			case 3:
			$data = array(
				'mainMenu' => array( $Dashboard, $Dokumen, $perusahaan)
			);
			break;
			
			case 5:
			$data = array(
				'mainMenu' => array( $Dashboard, $Dokumen, $perusahaan, $pengawasan)
			);
			break;

			case 6:
			$data = array(
				'mainMenu' => array( $Dashboard, $Dokumen, $perusahaan)
			);
			break;

			case 10:
			$data = array(
				'mainMenu' => array( $Dashboard, $Dokumen, $perusahaan)
			);
			break;

			case 12:
			$data = array(
				'mainMenu' => array( $Dashboard, $Dokumen, $perusahaan, $hanggar)
			);
			break;

			default:
			$data = array(
				'mainMenu' => array( $Dashboard, $Dokumen, $perusahaan, $hanggar, $pengawasan),
				'adminMenu' => array($admin),
			);
			break;
		}
		

		return $data;
	}

	public function getJenisDokumen(){
		$this->selected_db = $this->load->database('tpb', TRUE);
		$query = $this->selected_db->get('tb_jenis_dokumen');

		return $query->result_array();
	}

	public function getJenisDokumenByKode($filter){
		$this->selected_db = $this->load->database('tpb', TRUE);
		$this->selected_db->where('Kd_Dok',$filter);
		$query = $this->selected_db->get('tb_jenis_dokumen');

		return $query->row();
	}
}

/* End of file menu_model.php */
/* Location: ./application/models/menu_model.php */