<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DistributorLoginModel extends CI_Model {
	public function checkuserlogin($useremail){
		$user_details = $this->db->select('*')
							->from('tbl_user')
							->where('user_email',$useremail)
							->get()
							->row();
		return 	$user_details;
	}
	public function DistributorRegisterModel(){
		$data['username'] = $this->input->post('username',true);
		$data['user_email'] = $this->input->post('user_email',true);
		//$user_password = $this->input->post('user_password',true);
		//$encryp_password = password_hash('user_password',PASSWORD_DEFAULT);
		//$data['user_password'] = $encryp_password;
		$data['user_password'] = password_hash($this->input->post('user_password',true),PASSWORD_DEFAULT);
		$data['user_role'] = $this->input->post('2',true);
		$data['user_role'] = '2';
		$data['user_status'] = '1';
		$this->db->insert('tbl_user',$data);
	}
}