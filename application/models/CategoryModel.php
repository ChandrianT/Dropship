<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CategoryModel extends CI_Model {
	public function add_category_model(){
		$data['category_name'] = $this->input->post('category_name',true);
		$data['category_status'] =1;
		$this->db->insert('tbl_category',$data);
	}
	public function get_all_category(){
		$data = $this->db->select('*')
			->from('tbl_category')
			->order_by('category_id','desc')
			->get()
			->result();
			return $data;
	}	
	public function delete_caegory_by_id($category_id){
		$this->db->where('category_id', $category_id);
		$this->db->delete('tbl_category');
	}
	public function edit_caegory_by_id($category_id){
		$data = $this->db
				->select('*')
				->from('tbl_category')
				->where('category_id', $category_id)
				->get()
				->row();
		return $data;
	}
	public function update_caegory_by_id($category_id){
		$data['category_name'] = $this->input->post('category_name');
		$this->db->where('category_id', $category_id);
		$this->db->update('tbl_category', $data); 
	}
}