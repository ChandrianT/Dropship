<div class="features_items"><!--features_items-->
	<h2 class="title text-center">Features Items</h2>
	<?php $allproduct = $this->ProductModel->get_all_product_limit();?>
	<?php foreach ($allproduct as $product) {?>
	<?php if($product->pro_status==1){?>
	<div class="col-sm-4">
		<div class="product-image-wrapper">
			<div class="single-products">
				<div class="productinfo text-center">
					<img src="<?php echo base_url().$product->pro_image?>" width="268px" height="249px" alt="" />
					<h2>Rp. <?php $product_number = number_format($product->pro_price,0,',','.'); echo $product_number?></h2>
					<p><?php echo $product->pro_title?></p>
					<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>BELI</a>
				</div>
				<div class="product-overlay">
					<div class="overlay-content">			
					<form action="<?php echo base_url()?>add-to-cart"  method="post">
							<h2>Rp. <?php $product_number = number_format($product->pro_price,0,',','.'); echo $product_number?></h2><!--This is under form because style factor when product price move to form then style is not formating-->
							<p><?php echo $product->pro_title?></p>
							<input type="hidden" value="1" name="qty"/>
							<input type="hidden" value="<?php echo $product->pro_id?>" name="pro_id"/>
							<button type="submit" class="btn btn-default add-to-cart">
								<i class="fa fa-shopping-cart"></i>
								Beli
							</button>
							<a href="<?php echo base_url()?>product-details/<?php echo $product->pro_id?>" class="btn btn-default add-to-cart"><i class="fa fa-info"></i>Detail</a>
						</form>	
					</div>
				</div>
			</div>
		</div>
	</div>

	<?php } }?>
</div><!--features_items-->