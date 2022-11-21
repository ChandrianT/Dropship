


<section id="cart_items">
		<div class="container">
			<h3>Dear <?php echo $this->session->userdata("cus_name");?></h3>
<h4>Pesanan Kamu Sedang Dalam Proses ....</h4><hr/>
			
<h4>Total Pembayaran : Rp. <?php $total_number = number_format($this->session->userdata("g_total"),0,',','.'); echo $total_number?></h4>
<br>
<h5 style="text-align: justify;">Pembayaran akan dilakukan secara bersamaan dengan pesanan anda ketika sudah sampai ditempat (pembayaran COD). </h5>
<h5 style="text-align: justify;">Pesanan sedang dalam proses, terimakasih telah menggunakan E-dropship untuk melakukan transaksi dropshipping. </h5>
<h5 style="text-align: justify;">E-Dropship akan segera menghubungi anda melalui email untuk informasi selanjutnya.</h5>			
		</div>
	</section> <!--/#cart_items-->

	