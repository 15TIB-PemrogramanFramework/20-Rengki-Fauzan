<?php $this->load->view('templates/header'); ?>

 <div id="page-wrapper">
            <div class="row">
              
                <div class="col-md-12 ">
                   <h1>Selamat Datang Admin <b><?php echo $this->session->userdata('username'); ?></b></h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                 
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h1>Puskesmas Pantai Raja</h1>
                        </div>
                        <!-- /.panel-heading -->
                         <div class="panel-body">
                            
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

            
        </div>
        <!-- /#page-wrapper -->

    </div>

    <!-- jQuery -->
   
   <?php $this->load->view('templates/footer') ?>
  

 <script type="text/javascript">
    $(document).ready(function(){
        $('#example').DataTable();

        });
 </script>
