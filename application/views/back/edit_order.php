
    <!--  page-wrapper -->
    <div id="page-wrapper">
        <div class="row">
           <!-- page header -->
           <div class="col-lg-12">
            <h1 class="page-header">Form Edit Order</h1>
        </div>
        <!--end page header -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <!-- Form Elements -->
            <div class="panel panel-default">
               
                <div class="panel-heading">
                    Update Order
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                           <h5 style='color:red'> <?php echo validation_errors();?></h5>
                           <?php echo form_open('update-order'.'/'.$order_by_id->order_id,'');?>

                                <div class="form-group">
                                    <label>Order Status</label>
                                    <select class="form-control" name="order_status">
                                    <?php if($order_by_id->order_status=="pending"){?>
                                        <option selected="" value="pending">Pending</option>
                                          <option  value="berhasil">Berhasil</option>
                                     <?php }elseif($order_by_id->order_status=="berhasil"){ ?>
                                         <option  value="pending">Pending</option>
                                        <option selected="" value="berhasil">Berhasil</option>
                                       <?php } ?>
                                    </select>
                                </div>

                                <button type="submit" class="btn btn-primary">Update</button>

                            <?php echo form_close();?>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Form Elements -->
        </div>
    </div>
</div>
<!-- end page-wrapper -->


