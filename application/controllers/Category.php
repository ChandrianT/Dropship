<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* Category Controller
*/
class Category extends CI_Controller{
	
	function __construct(){
		parent::__construct();
		if(!isset($this->session->userid) && ($this->session->userstatus !=1)){
			redirect('Login');
		}
		$data =array();
		$this->load->model('CategoryModel');
	}
	public function add_category_form(){
		$data['main_content'] = $this->load->view('back/add_category','',true);
		$this->load->view('back/adminpanel',$data);
	}
	public function save_category(){
		$this->form_validation->set_rules('category_name','Category Name','required|min_length[2]');
		if($this->form_validation->run()){
		$this->CategoryModel->add_category_model();
		$this->session->set_flashdata("flsh_msg","<font class='success'>Category Added Successfully</font>");
           redirect('category-list');
		}else{
			$this->add_category_form();
		}
	}
	public function show_category_list(){
		$data['all_cats']= $this->CategoryModel->get_all_category();
		$data['main_content'] = $this->load->view('back/category_list',$data,true);
		$this->load->view('back/adminpanel',$data);
	}

	public function delete_category($category_id){
		$this->CategoryModel->delete_caegory_by_id($category_id);
		$this->session->set_flashdata("flsh_msg","<font class='success'>Category Deleted Successfully</font>");
           redirect('category-list');
	}

	public function edit_category($category_id){
		$data['cat_by_id'] = $this->CategoryModel->edit_caegory_by_id($category_id);
		$data['main_content'] = $this->load->view('back/edit_category',$data,true);
		$this->load->view('back/adminpanel',$data);
	}

	public function update_category($category_id){
		$this->form_validation->set_rules('category_name','Category Name','required|min_length[2]');
		if($this->form_validation->run()){
		$this->CategoryModel->update_caegory_by_id($category_id);
		$this->session->set_flashdata('flsh_msg','Category Updated Successfully',10);
		$this->show_category_list();
         //  redirect('category-list');
		}else{
			$this->add_category_form();
		}
	}
}