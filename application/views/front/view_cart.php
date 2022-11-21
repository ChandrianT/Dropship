
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
							<td class="image">Gambar</td>
							<td class="description"></td>
							<td></td>
							<td>Nama</td>
							<td class="price">Harga</td>
							<td class="quantity">Jumlah</td>
							<td class="total">Total</td>
							<td>Batal</td>
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
							<td>
							</td>
							<td class="cart_description">
							<td>
								<h4><?php echo $items['name']?></a></h4>
							</td>
							</td>
							<td class="cart_price">
								<p>Rp. <?php $items_number = number_format($items['price'],0,',','.'); echo $items_number?></p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
								<form action="<?php echo base_url()?>update-cart-qty" method="post">
									
									<input class="cart_quantity_input" type="text" name="qty" value="<?php echo $items['qty']?>" autocomplete="off" size="4">
									<br><br>
									<input  type="hidden" name="rowid" value="<?php echo $items['rowid']?>">
									<input  type="submit" value="Update"/>
								
								<form>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">Rp. <?php $items_number = number_format($items['subtotal'],0,',','.'); echo $items_number?></p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href="<?php echo base_url()?>delete-to-cart-payment/<?php echo $items['rowid']?>"><i class="fa fa-times"></i></a>
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
							<li>Total Belanja <span>Rp. <?php $cart_total_number = number_format($cart_total,0,',','.'); echo $cart_total_number?></span></li>
							<?php
								$tax = ($cart_total*0.02);
							?>
							<li>Pajak 2% <span>Rp. <?php $tax_number = number_format($tax,0,',','.'); echo $tax_number?></span></li>
							<!-- Shipping Cost Dependend Quantity, price, buyer distance etc -->
							<?php
								if($cart_total>0 && $cart_total<50000){
									$shiping = 3000;
								}elseif($cart_total>50000 && $cart_total<98000){
									$shiping = 5000;
								}elseif($cart_total>99000 && $cart_total<198000){
									$shiping = 8000;
								}elseif($cart_total>199000){
									$shiping = 10000;
								}elseif($cart_total==0){
									$shiping = 0;
								}
							?>
							<li>Biaya Pengiriman <span>Rp. <?php $shiping_number = number_format($shiping,0,',','.'); echo $shiping_number?></span></li>
							<?php $g_total = $cart_total+$tax+$shiping;?>
							<li>Total Pembayaran<span>
								<?php
									$gdata = array();
									$gdata['g_total'] = $g_total;
									$this->session->set_userdata($gdata);
									$g_total_number = number_format($g_total,0,',','.');
							 		echo "Rp. $g_total_number";
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