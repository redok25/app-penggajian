<?php 

class LaporanAbsensi extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		if($this->session->userdata('hak_akses') !='1')
		{
			$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
					  <strong>Silahkan Login Terlebih dahulu!</strong>
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					  <span aria-hidden="true">&times;</span>
					  </button>
					</div>');
				redirect('welcome');
		}
	}
	
	public function index()
	{
		$data['title'] = "Laporan Absensi";
		$this->load->view('templates_admin/header',$data);
		$this->load->view('templates_admin/sidebar');
		$this->load->view('admin/LaporanAbsensi');
		$this->load->view('templates_admin/footer');
	}
	public function cetakLaporanAbsensi()
	{
		$data['title'] = "Cetak Laporan Absensi";
		$bulan=$this->input->post('bulan');
		$tahun=$this->input->post('tahun');
		$bulantahun=$bulan.$tahun;
		$data['lap_kehadiran'] = $this->db->query("SELECT * FROM data_kehadiran WHERE bulan='$bulantahun' ORDER BY nama_pegawai ASC")->result();
		$this->load->view('templates_admin/header',$data);
		$this->load->view('admin/cetakLaporanAbsensi');
		
	}
}

 ?>