<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="<?php echo base_url();?>">Dashboard</a></li>
				  <li class="active">Pembayaran</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description"></td>
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
								<h4><a href=""><?php echo $items['name']?></a></h4>
							</td>
							<td class="cart_price">
								<p>Rp. <?php echo $items['price']?></p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<form action="<?php echo base_url()?>update-cart-qty-payment" method="post">
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
			
			<div class="row">
				<div class="col-sm-6">
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
								if($cart_total>0 && $cart_total<49){
									$shiping = 0;
								}elseif($cart_total>50 && $cart_total<98){
									$shiping = 2;
								}elseif($cart_total>99 && $cart_total<198){
									$shiping = 5;
								}elseif($cart_total>199){
									$shiping = 10;
								}elseif($cart_total==0){
									$shiping = 0;
								}
							?>
							<li>Shipping Cost <span>Rp. <?php echo $shiping?></span></li>
							<?php $g_total = $cart_total+$tax+$shiping;?>
							<li>Total <span>Rp. <?php echo $g_total;?></span></li>
						</ul>
							<form action="<?php echo base_url()?>update-cart-qty-payment" method="post" >	
							
							</form>	
					</div>
				</div>
				<div class="col-sm-6">
					<form action="<?php echo base_url()?>place-order" method="post" >
						<div class="payment-options">
							<div class="order-message">
								<p class="alert alert-warning">Pesanan Pengiriman</p>
								<?php echo $this->session->flashdata("flash_msg")?>
								<textarea name="payment_message"  placeholder="Catatan tentang pesanan kamu untuk toko" rows="10"></textarea>
							</div>	
							<span>
								<label><input type="radio"  name="payment_gateway" value="cash_on_delivery"> Konfirmasi</label>
							</span>
							<!-- <span>
								<label><input type="radio"  name="payment_gateway" value="paypal_payment"> Paypal</label>
							</span> -->
							<span>
								<input type="submit" name="btn" class="btn btn-primary" value="Pesan">
							</span>
						</div>
					</form>
				</div>

			</div>
		</div>
	</section><!--/#do_action-->
	