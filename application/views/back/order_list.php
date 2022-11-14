
<div id="page-wrapper">
    <div class="row">
         <!--  page header -->
        <div class="col-lg-12">
            <h1 class="page-header">TABEL</h1>
        </div>
         <!-- end  page header -->
    </div>
     <div class="row">
        <div class="col-lg-12">
            <!-- Advanced Tables -->
            <div class="panel panel-default">
                <div class="panel-heading">
                     TABEL ORDER
                </div>
                <p class="text-success"> <?php if(isset($success_message)){
                  echo $success_message;
                 }?>
                 </p>
                 <div class="alert alert-success">
    <?php //echo $this->session->flashdata('flsh_msg'); ?>
    <?php echo $this->session->flashdata('flsh_msg'); ?>
</div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr>
                                    <th width="8%">No. SL</th>
                                    <th width="8%">No. Order</th>
                                    <th width="15%">Nama Pembeli</th>
                                    <th width="12%">No. Handphone</th>
                                   
                                    <th width="10%">Total Order</th>
                                    <th width="10%">Status Order</th>
                                    <th width="10%">Status Pembayaran</th>
                                    <th class="text-center" width="30%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $i = 0;
                                if(isset($all_order)){
                                  foreach ($all_order as $value){
                                    $i++;

                                ?>
                                <tr class="gradeC">
                                    <td><?php echo $i;?></td>
                                    <td>#<?php echo $value->order_id;?></td>
                                    <td><?php echo $value->cus_name;?></td>
                                    <td><?php echo $value->cus_mobile;?></td>
                                    <td><?php echo $value->order_total;?></td>
                                    <td><?php echo $value->order_status;?></td>
                                    <td><?php echo $value->payment_status;?></td>
                                   <td>
                                        <a class="btn btn-info" href="<?php echo base_url()?>view-order/<?php echo $value->order_id?>">Detail</a>
                                        <a class="btn btn-warning" href="<?php echo base_url()?>edit-order/<?php echo $value->order_id?>">Edit</a>
                                        <a onclick="alert('Are Your Sure to Delete')" class="btn btn-info" href="<?php echo base_url()?>delete-order/<?php echo $value->order_id?>">Hapus</a>
                                    </td> 
                                    
                                </tr>
                                <?php }} ?>
                            </tbody>
                        </table>
                    </div>
                    
                </div>
            </div>
            <!--End Advanced Tables -->
        </div>
    </div>
</div>
    <script src="<?php echo base_url()?>assets/back/plugins/dataTables/jquery.dataTables.js"></script>
   
    <script>
        $(document).ready(function () {
            $('#dataTables-example').dataTable();
        });
    </script> 