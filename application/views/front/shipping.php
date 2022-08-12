<style type="text/css">
	.shipping_info p{color:red;font-weight: bold;font-size: 12px}
</style>
<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="<?php echo base_url();?>">Home</a></li>
				  <li class="active">Check out</li>
				</ol>
			</div><!--/breadcrums-->

			<div class="step-one">
				<h2 class="heading">Step2</h2>
			</div>
		
			<div class="shopper-informations">
				<div class="row">
					<div class="col-sm-2">
						
					</div>
					<div class="col-sm-8 clearfix">
						<div class="bill-to">
							<h5 class="shipping_info">
                   			 <?php echo validation_errors();?>
			              </h5>
							<p>Shipping Address</p>
							<div class="form-two">
								<form action="<?php echo base_url()?>insert-shipping" method="post" name="shiping_info">
									<input type="text" placeholder="Name" name="cus_name">
									
									<input type="hidden" name="shipping_id" value="">
									<input type="text" placeholder="Email*" name="cus_email">
									<input type="text" placeholder="Mobile" name="cus_mobile">
									<input type="text" placeholder="Address*" name="cus_address">
									<input type="text" placeholder="City" name="cus_city">
									<select name="cus_country">
									<option>-- Provinsi --</optio>
									<option>Jawa Barat</option>
									<option>Jawa Tengah</option>
									<option>Jawa Timur</option>
									<option>DKI Jakarta</option>
									<option>Banten</option>
									<option>DI Yogakarta</option>
									<option>Bali</option>
									<option>Nanggore Aceh Darussalam</option>
									<option>Sumatera Utara</option>
									<option>Sumatera Selatan</option>
									<option>Sumatera Barat</option>
									<option>Bengkulu</option>
									<option>Riau</option>
									<option>Kepulauan Riau</option>
									<option>Jambi</option>
									<option>Lampung</option>
									<option>Bangka Belitung</option>
									<option>Kalimantan Barat</option>
									<option>Kalimantan Timur</option>
									<option>Kalimantan Utara</option>
									<option>Kalimantan Selatan</option>
									<option>Kalimantan Tengah</option>
									<option>Nusa Tenggara Timur</option>
									<option>Nusa Tenggara Barat</option>
									<option>Gorontalo</option>
									<option>Sulawesi Barat</option>
									<option>Sulawesi Tengah</option>
									<option>Sulawesi Tenggara</option>
									<option>Sulawesi Utara</option>
									<option>Sulawesi Selatan</option>
									<option>Maluku Utara</option>
									<option>Maluku</option>
									<option>Papua Barat</option>
									<option>Papua</option>
									</select>
									<input type="text" placeholder="Zip" name="cus_zip">
									<input type="text" placeholder="Fax" name="cus_fax">
									<input type="submit" value="Save & Continue" class="btn btn-primary">
								</form>
							</div>
							
						</div>
					</div>
					<div class="col-sm-2">
						
					</div>					
				</div>
			</div>
			
		</div>
	</section> <!--/#cart_items-->
	<script type="text/javascript">
		
		

	</script>