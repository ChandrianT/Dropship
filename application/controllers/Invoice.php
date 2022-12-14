<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* Category Controller
*/
class Invoice extends CI_Controller{
	
	function __construct(){
		parent::__construct();
		if(!isset($this->session->userid) && ($this->session->userstatus !=1)){
			redirect('Login');
		}
		$data =array();
		$this->load->model('InvoiceModel');
	}

	public function add_order_form(){
		$data['main_content'] = $this->load->view('back/add_category','',true);
		$this->load->view('back/adminpanel',$data);
	}
	public function manage_order(){
		$data['all_order'] = $this->InvoiceModel->get_all_order();
		$data['main_content'] = $this->load->view('back/order_list',$data,true);
		$this->load->view('back/adminpanel',$data);
	}
	public function view_order($order_id){
		$data['order_info'] = $this->InvoiceModel->get_order_info_by_id($order_id);
		$order_info = $this->InvoiceModel->get_order_info_by_id($order_id);
		$customer_id = $order_info->cus_id;
		$shipping_id = $order_info->shipping_id;
		$data['cus_info'] = $this->InvoiceModel->get_customer_info_by_id($customer_id);
		$data['ship_info'] = $this->InvoiceModel->get_shipping_info_by_id($shipping_id);
		$data['order_details_info'] = $this->InvoiceModel->get_all_order_details_by_id($order_id);
		$data['main_content'] = $this->load->view('back/order_details',$data,true);
		$this->load->view('back/adminpanel',$data);
	}
	public function delete_order($order_id){
		$order_info = $this->InvoiceModel->get_order_info_by_id($order_id);
		$order_id = $order_info->order_id;
		$shipping_id = $order_info->shipping_id;
		$payment_id = $order_info->payment_id;
		$this->InvoiceModel->delete_order_info_by_id($order_id,$shipping_id,$payment_id);
		$this->session->set_flashdata("flsh_msg","<font class='success'>Order Deleted Successfully</font>");
		redirect('manage-order');
	}
	public function edit_order($order_id){
		$data['order_by_id'] = $this->InvoiceModel->edit_order_by_id($order_id);
		$data['main_content'] = $this->load->view('back/edit_order',$data,true);
		$this->load->view('back/adminpanel',$data);
		
	}
	public function update_order($order_id){
		$this->form_validation->set_rules('order_status','order status','required|min_length[2]');
		if($this->form_validation->run()){
		$this->InvoiceModel->update_order_by_id($order_id);
		$this->session->set_flashdata('flsh_msg','Order Updated Successfully',10);
		$this->manage_order();
         //  redirect('category-list');
		}else{
			redirect('manage-order');
		}
	}
}