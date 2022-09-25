<style type="text/css">
	.billing_info p{color: red;font-style: bold}
</style>
    
    <script type="text/javascript"
            src="https://app.sandbox.midtrans.com/snap/snap.js"
            data-client-key="SB-Mid-client-vS9Q3NNSkoElUN-M"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <div class="container">

      <div class="shopper-informations">
          <div class="row">
            <div class="col-sm-6">
              <h1>Membership Dropship Payment</h1>
              <label>Halo <?php echo $cus_info->cus_name?> Hanya dengan 100 ribuan saja. Anda dapat menikmati seluruh layanan Dropship kami.</label>
              Ayo buruan sekarang juga!
              <form id="payment-form" method="post" action="<?=site_url()?>/snap/finish">
              <input type="hidden" id="cus_name" value="<?php echo $cus_info->cus_name?>">
							<input type="hidden" id="cus_id" value="<?php echo $cus_info->cus_id?>">
              <input type="hidden" id="cus_email" value="<?php echo $cus_info->cus_email?>">
              <input type="hidden" id="cus_mobile" value="<?php echo $cus_info->cus_mobile?>">
              <input type="hidden" name="result_type" id="result-type" value="">
              <input type="hidden" name="result_data" id="result-data" value="">
              <button class="btn btn-primary"id="pay-button">Bayar Sekarang!</button>
              <h1>&nbsp </h1>
            </form>
            </div>
          </div>
      </div>
    </div>
    
 

    <script type="text/javascript">
        $('#pay-button').click(function(event) {
            event.preventDefault();
            $(this).attr("disabled", "disabled");
            var cus_id = $("#cus_id").val();
            var cus_name = $("#cus_name").val();
            var cus_email = $("#cus_email").val();
            var cus_mobile = $("#cus_mobile").val();
  
            $.ajax({
                type: 'POST',
                url: '<?= site_url() ?>/snap/token',
                data: {
                    cus_id: cus_id,
                    cus_name: cus_name,
                    cus_email: cus_email,
                    cus_mobile: cus_mobile
                    
                },
                cache: false,

                success: function(data) {
                    //location = data;

                    console.log('token = ' + data);

                    var resultType = document.getElementById('result-type');
                    var resultData = document.getElementById('result-data');

                    function changeResult(type, data) {
                        $("#result-type").val(type);
                        $("#result-data").val(JSON.stringify(data));
                        //resultType.innerHTML = type;
                        //resultData.innerHTML = JSON.stringify(data);
                    }

                    snap.pay(data, {

                        onSuccess: function(result) {
                            changeResult('success', result);
                            console.log(result.status_message);
                            console.log(result);
                            $("#payment-form").submit();
                        },
                        onPending: function(result) {
                            changeResult('pending', result);
                            console.log(result.status_message);
                            $("#payment-form").submit();
                        },
                        onError: function(result) {
                            changeResult('error', result);
                            console.log(result.status_message);
                            $("#payment-form").submit();
                        }
                    });
                }
            });
        });
    </script>



