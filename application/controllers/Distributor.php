<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Distributor extends CI_Controller {
	public function __construct(){
		parent::__construct();
		if(!isset($this->session->userid) && ($this->session->userstatus !=1)){
			redirect('LoginDistributor');
		}
		$this->load->model('DistributorLoginModel');
	}
	public function index(){
		$this->distributordashboard();
	}
	public function distributordashboard(){
		$data = array();
		$data['main_content'] = $this->load->view('distributor/distributor_main','',TRUE);
		$this->load->view('distributor/distributorpanel',$data);
	}
	public function distributorregisterform(){
		$data = array();
		$data['main_content'] = $this->load->view('distributor/register_distributor','',TRUE);
		$this->load->view('distributor/distributorpanel',$data);
	}
	public function makedistributor(){
		$this->form_validation->set_rules('username','User Name','required|max_length[255]');
		$this->form_validation->set_rules('user_email','Email','required|is_unique[tbl_user.user_email]');
		$this->form_validation->set_rules('user_password','Password','required|min_length[6]');
		$this->form_validation->set_rules('confirm_password','Confirm Password','required|matches[user_password]');
		$this->form_validation->set_rules('user_role','User Rules','required');
		if($this->form_validation->run()){
			$this->DistributorLoginModel->DistributorRegisterModel();
			$data['success_message'] = "User Successfully Added";
			$data['main_content'] = $this->load->view('distributor/register_distributor',$data,TRUE);
			$this->load->view('distributor/distributorpanel',$data);
		}else{
			$this->registerform();
		}

	}
	public function urltest(){
		
	}
}
