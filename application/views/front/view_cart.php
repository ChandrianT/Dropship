
<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="<?php echo base_url();?>">Dashboard</a></li>
				  <li class="active">Keranjang Belanja</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description"></td>
							<td>Nama</td>
							<td class="price">Harga</td>
							<td class="quantity">Jumlah</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<?php $cart_content = $this->cart->contents();
						?>
						<?php foreach ($cart_content as $items){ ?>
						<tr>
							<td class="cart_product">
								<a href=""><img  width="100" src="<?php echo $items['options']['pro_image']?>" alt=""></a>
							</td>
							<td class="cart_description">
							<td>
								<h4><?php echo $items['name']?></a></h4>
							</td>
							</td>
							<td class="cart_price">
								<p>Rp. <?php echo $items['price']?></p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<form action="<?php echo base_url()?>update-cart-qty" method="post">
										<a class="cart_quantity_up" href=""> + </a>
										<input class="cart_quantity_input" type="text" name="qty" value="<?php echo $items['qty']?>" autocomplete="off" size="2">
										<a class="cart_quantity_down" href=""> - </a>
										<input  type="hidden" name="rowid" value="<?php echo $items['rowid']?>">

										<input  type="submit"  value="Update"/>

									<form>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">Rp. <?php echo $items['subtotal']?></p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href="<?php echo base_url()?>delete-to-cart/<?php echo $items['rowid']?>"><i class="fa fa-times"></i></a>
							</td>
						</tr>
						<?php } ?>

					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
			
				<div class="col-sm-13">
					<div class="total_area">
						<ul>
							<?php 
								$cart_total = $this->cart->total();
							?>
							<li>Total Belanja <span>Rp. <?php echo $cart_total;?></span></li>
							<?php
								$tax = ($cart_total*2)/100;
							?>
							<li>Pajak 2% <span>Rp. <?php echo $tax?></span></li>
							<!-- Shipping Cost Dependend Quantity, price, buyer distance etc -->
							<?php
								$shiping = "0";
								if($cart_total>0 && $cart_total<49000){
									$shiping = 0;
								}elseif($cart_total>50000 && $cart_total<98000){
									$shiping = 2000;
								}elseif($cart_total>99000 && $cart_total<198000){
									$shiping = 5000;
								}elseif($cart_total>199000){
									$shiping = 10000;
								}elseif($cart_total<0){
									$shiping = 0;
								}
							?>
							<li>Biaya Pengiriman<span>Rp. <?php echo $shiping?></span></li>
							<?php $g_total = $cart_total+$tax+$shiping;?>
							<li>Total <span>
								<?php
									$gdata = array();
									$gdata['g_total'] = $g_total;
									$this->session->set_userdata($gdata);
							 		echo "Rp. $g_total";
							 	?>
							 </span></li>
						</ul>	
							<?php $customer_id = $this->session->userdata('cus_id');?>
							<?php $shipping_id = $this->session->userdata('shipping_id');?>
							<?php if($this->cart->total_items()!=Null && $customer_id!=NULL && $shipping_id!=NULL){?>
							<a class="btn btn-default check_out" href="<?php echo base_url()?>payment">Check Out</a>
							<?php } elseif($customer_id!=NULL && $this->cart->total_items()!=Null){?>
							<a class="btn btn-default check_out" href="<?php echo base_url()?>billing">Check Out</a>
							<?php }elseif($this->cart->total_items()!=Null){ ?>
							<a class="btn btn-default check_out" href="<?php echo base_url()?>checkout">Check Out</a>
							<?php } ?>
							</form>	
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->