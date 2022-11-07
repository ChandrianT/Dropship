<div class="col-sm-3">
	<div class="left-sidebar">
	<h2>Kategori</h2>
		<div class="panel-group category-products" id="accordian"><!--category-productsr-->
			<?php $all_category = $this->CategoryModel->get_all_category();?>
			<?php $all_brands = $this->BrandModel->get_all_brand();?>
			
			<div class="category-name">
					<ul class="nav nav-pills nav-stacked">
					<?php foreach ($all_category as  $key => $maincat) {?>
						<li><a href="<?php echo base_url()?>show-post-by-category-id/<?php echo $maincat->category_id?>"> <span class="pull-right">
							<?php
								$total_category = $this->HomeModel->get_total_product_by_category($maincat->category_id)[0]->total;
							 ?>
							 <?php echo "($total_category)"?>
						</span><?php echo $maincat->category_name;?></a></li>
						<?php } ?>
					</ul>
				
			</div>
		</div><!--/category-products-->
		
		

		<div class="brands_products"><!--brands_products-->
			<h2>Brands</h2>
			<div class="brands-name">
				<ul class="nav nav-pills nav-stacked">
					<?php foreach ($all_brands as $key => $brand) {	?>
					<li><a href="<?php echo base_url()?>show-post-by-brand-id/<?php echo $brand->brand_id?>"> <span class="pull-right">
						<?php
							$total_brand = $this->HomeModel->get_total_product_by_brand($brand->brand_id)[0]->total;
						 ?>
						 <?php echo "($total_brand)"?>
					</span><?php echo $brand->brand_name;?></a></li>
					<?php } ?>
				</ul>
			</div>
		</div><!--/brands_products-->

		<div class="">
			<h2>Filter Harga</h2>
			<p id="amount" style="text-align:center"></p>
			<div id="slider-range"></div>

			<div class="pricerange">
			  <form method="post" action="<?php echo base_url()?>show-product-by-price-range" >
			    <input type="hidden" id="amount1" name="amount1" value="">
			    <input type="hidden" id="amount2" name="amount2" value="">
			    <input type="submit" name="submit_range" value="FILTER">
			  </form>
			</div>
		</div>



		<div class="shipping text-center"><!--shipping-->
			<img src="<?php echo base_url()?>" alt="" />
		</div><!--/shipping-->
		
	</div>
</div>