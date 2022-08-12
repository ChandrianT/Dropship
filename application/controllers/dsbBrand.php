<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* Category Controller
*/
class dsbBrand extends CI_Controller{
	
	function __construct(){
		parent::__construct();
		if(!isset($this->session->userid) && ($this->session->userstatus !=1)){
			redirect('LoginDistributor');
		}
		$data =array();
		$this->load->model('dsbBrandModel');
	}
	public function add_brand_form(){
		$data['main_content'] = $this->load->view('distributor/dsbadd_brand','',true);
		$this->load->view('distributor/distributorpanel',$data);
	}
	public function save_brand(){
		$this->form_validation->set_rules('brand_name','Brand Name','required|min_length[2]');
		if($this->form_validation->run()){
		$this->BrandModel->add_brand_model();
	$this->session->set_flashdata("flsh_msg","<font class='success'>Brand Added Successfully</font>");
           redirect('dsbbrand-list');
		}else{
			$this->add_brand_form();
		}
	}
	public function show_brand_list(){
		$data['all_brands']= $this->BrandModel->get_all_brand();
		$data['main_content'] = $this->load->view('distributor/dsbbrand_list',$data,true);
		$this->load->view('distributor/distributorpanel',$data);
	}

	public function delete_brand($brand_id){
		$this->BrandModel->delete_brand_by_id($brand_id);
		$this->session->set_flashdata("flsh_msg","<font class='success'>Brand Deleted Successfully</font>");
           redirect('dsbbrand-list');
	}
	
	public function edit_brand($brand_id){
		$data['brand_by_id'] = $this->BrandModel->edit_brand_by_id($brand_id);
		$data['main_content'] = $this->load->view('distributor/dsbedit_brand',$data,true);
		$this->load->view('distributor/distributorpanel',$data);
	}
	
	public function update_brand($brand_id){
		$this->form_validation->set_rules('brand_name','Brand Name','required|min_length[2]');
		if($this->form_validation->run()){
		$this->BrandModel->update_brand_by_id($brand_id);
		$this->session->set_flashdata('flsh_msg','Brand Updated Successfully',10);
		$this->show_brand_list();
         //  redirect('category-list');
		}else{
			$this->add_brand_form();
		}
	}
}