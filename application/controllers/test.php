<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Test extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('download');
		$this->load->model('pengawasan/randomcheck_model','random',TRUE);
	}

	public function index()
	{
		$spreadsheet = new Spreadsheet();
		$sheet = $spreadsheet->getActiveSheet();
		$sheet->setCellValue('A1', 'Hello World !');

		$writer = new Xlsx($spreadsheet);

		$filename = 'another-name-of-the-generated-file.xlsx';

        $writer->save('vendor/template/'.$filename); // will create and save the file in the root of the project
    }

    public function download(){
    	$spreadsheet = new Spreadsheet();
    	$sheet = $spreadsheet->getActiveSheet();
    	$sheet->setCellValue('A1', 'Hello World !');

    	$writer = new Xlsx($spreadsheet);

    	$filename = 'name-of-the-generated-file';

    	header('Content-Type: application/vnd.ms-excel');
    	header('Content-Disposition: attachment;filename="'. $filename .'.xlsx"'); 
    	header('Cache-Control: max-age=0');

        $writer->save('php://output'); // download file 
    }

    public function coba(){
    	$spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load("another-name-of-the-generated-file.xlsx");

    	$worksheet = $spreadsheet->getActiveSheet();

    	$worksheet->getCell('A2')->setValue('Fithoriqil Azziz');
    	$worksheet->getCell('A3')->setValue('Enggar Fatima Damayanti');

    	$writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet,'Xlsx');

    	$writer->save('coba.xlsx');
    	force_download('coba.xlsx',NULL);
    }

    public function test(){
    	$data = $this->random->getReportData();

    	echo json_encode($data);
    }

}

/* End of file test.php */
/* Location: ./application/controllers/test.php */