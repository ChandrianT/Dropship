<style type="text/css">
	.billing_info p{color: red;font-style: bold}
</style>
<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="<?php echo base_url();?>">Dashboard</a></li>
				  <li class="active">Check out</li>
				</ol>
			</div><!--/breadcrums-->

			<div class="step-one">
				<h2 class="heading">langkah Selanjutnya</h2>
			</div>
		
			<div class="shopper-informations">
				<div class="row">
					<div class="col-sm-2">
						
					</div>
					<div class="col-sm-8 clearfix">
						<div class="bill-to">
							<h5 class="billing_info">
                   			 <?php echo validation_errors();?>
			              </h5>
							<p>Alamat</p>
							
							<div class="form-two">
								<form action="<?php echo base_url()?>update-billing" method="post" name="billing_info">
									<input type="text" placeholder="Name" name="cus_name" value="<?php echo $cus_info->cus_name?>">
									<input type="hidden" name="cus_id" value="<?php echo $cus_info->cus_id?>">
									<input type="text" placeholder="Email*" name="cus_email" value="<?php echo $cus_info->cus_email?>" readonly="">
									<input type="text" placeholder="Mobile" name="cus_mobile" value="<?php echo $cus_info->cus_mobile?>">
									<input type="text" placeholder="Address*" name="cus_address" value="<?php echo $cus_info->cus_address?>">
									<input type="text" placeholder="City" name="cus_city" value="<?php echo $cus_info->cus_city?>">
									<select name="cus_country" value="<?php echo $cus_info->cus_country?>">
										<option>-- Provinsi --</option>
									<option value ="Jawa Barat">Jawa Barat</option>
									<option value="Jawa Tengah">Jawa Tengah</option>
									<option value="Jawa Timur">Jawa Timur</option>
									<option value="DKI Jakarta">DKI Jakarta</option>
									<option value="Banten">Banten</option>
									<option value="DI Yogyakarta">DI Yogakarta</option>
									<option value="Bali">Bali</option>
									<option value="Nanggore Aceh Darussalam">Nanggore Aceh Darussalam</option>
									<option value="Sumatera Utara">Sumatera Utara</option>
									<option value="Sumatera Selatan">Sumatera Selatan</option>
									<option value="Sumatera Barat">Sumatera Barat</option>
									<option value="Bengkulu">Bengkulu</option>
									<option value="Riau">Riau</option>
									<option value="Kepulauan Riau">Kepulauan Riau</option>
									<option value="Jambi">Jambi</option>
									<option value="Lampung">Lampung</option>
									<option value="Bangka Belitung">Bangka Belitung</option>
									<option value="Kalimantan Barat">Kalimantan Barat</option>
									<option value="Kalimantan Timur">Kalimantan Timur</option>
									<option value="Kalimantan Utara">Kalimantan Utara</option>
									<option value="Kalimantan Selatan">Kalimantan Selatan</option>
									<option value="Kalimantan Tengah">Kalimantan Tengah</option>
									<option value="Nusa Tenggara Timur">Nusa Tenggara Timur</option>
									<option value="Nusa Tenggara Barat">Nusa Tenggara Barat</option>
									<option value="Gorontalo">Gorontalo</option>
									<option value="Sulawesi Barat">Sulawesi Barat</option>
									<option value="Sulawesi Tengah">Sulawesi Tengah</option>
									<option value="Sulawesi Tenggara">Sulawesi Tenggara</option>
									<option value="Sulawesi Utara">Sulawesi Utara</option>
									<option value="Sulawesi Selatan">Sulawesi Selatan</option>
									<option value="Maluku Utara">Maluku Utara</option>
									<option value="Maluku">Maluku</option>
									<option value="Papua Barat">Papua Barat</option>
									<option value="Papua">Papua</option>
									</select>
									<input type="text" placeholder="Zip" name="cus_zip" value="<?php echo $cus_info->cus_zip?>">
									Alamat pengiriman sama seperti penagihan
									<input type="checkbox" name="shipping_info" value="on">
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
		document.forms['billing_info'].elements['cus_country'].value=<?php echo $cus_info->cus_country?>

	</script>