<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LoginDistributor extends CI_Controller {
	public function index(){
		if (isset($this->session->userid)) {
		redirect('Distributor/distributordashboard');
		} else {
			$this->load->view('logindistributor');
		}	
	}
	public function checklogin(){
		$data = array();
		$useremail = $this->input->post('user_email',TRUE);
		$userpassword = $this->input->post('user_password',TRUE);
		//$encryppass = password_hash($userpassword,PASSWORD_DEFAULT);
		$this->load->model('DistributorLoginModel');
		$user_details = $this->DistributorLoginModel->checkuserlogin($useremail);
		if(password_verify($userpassword,$user_details->user_password)){
			if ($user_details->user_status == 1 && $user_details->user_role == 2) {
				$session_data['userid'] 	= $user_details->user_id;
				$session_data['username']	= $user_details->username;
				$session_data['useremail']	= $user_details->user_email;
				$session_data['userrole'] 	= $user_details->user_role;
				$session_data['userstatus']	= $user_details->user_status;
				$this->session->set_userdata($session_data);
				redirect("Distributor");
				
			} else {
				$data['error_message'] = "Akun ini tidak tersedia. Silahkan masukan akun Distributor aktif !";
				$this->load->view('logindistributor',$data);
			}
		}else{
			redirect('LoginDistributor/login_error');
		}
	}
	public function login_error(){
		$data['error_message'] = "Incorrect Username Or Password...!";
			$this->load->view('logindistributor',$data);
	}
	public function distributorlogout(){
		$this->session->sess_destroy();
		$data['success_message'] = "Successfully Logout...!";
		$this->load->view('logindistributor',$data);	
	}
}
