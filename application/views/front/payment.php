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
							<td class="image">Gambar</td>
							<td></td>
							<td></td>
							<td class="description">Nama</td>
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
			
			<div class="row">
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
							<?php 
								$cart_total = $this->cart->total();
							?>
							<li>Total Belanja <span>Rp. <?php $cart_total_number = number_format($cart_total,0,',','.'); echo $cart_total_number?></span></li>
							<?php
								$tax = ($cart_total*2)/11000;
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
							<li>Total Pembayaran<span>Rp. <?php $g_total_number = number_format($g_total,0,',','.'); echo $g_total_number?></span></li>
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
								<label><input type="radio"  name="payment_gateway" value="cash_on_delivery"> Pembayaran ditempat</label>
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
	