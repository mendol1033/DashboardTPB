<!-- jQuery 3 -->
<script src="<?php echo base_url().'assets/bower_components/jquery/dist/jquery.min.js';?>"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?php echo base_url().'assets/bower_components/jquery-ui/jquery-ui.min.js';?>"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url().'assets/bower_components/bootstrap/dist/js/bootstrap.min.js';?>"></script>
<!-- InputMask -->
<script src="<?php echo base_url().'assets/plugins/input-mask/jquery.inputmask.js';?>"></script>
<script src="<?php echo base_url().'assets/plugins/input-mask/jquery.inputmask.date.extensions.js';?>"></script>
<script src="<?php echo base_url().'assets/plugins/input-mask/jquery.inputmask.extensions.js';?>"></script>
<!-- bootstrap datepicker -->
<script src="<?php echo base_url().'assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js';?>"></script>
<!-- Slimscroll -->
<script src="<?php echo base_url().'assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js';?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url().'assets/bower_components/fastclick/lib/fastclick.js';?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url().'assets/dist/js/adminlte.min.js';?>"></script>

<script type="text/javascript">
  function load_page(c){
    $.ajax({
      url: "<?php echo base_url();?>"+c,
      type: "GET",
      dataType: "html",
      success : function(data){
        $("#main-content").html(data);
      },
      error : function(jqXHR, exception){
        console.log(jqXHR);
        if (jqXHR.status == 404) {
          $.ajax({
            url: "<?php echo base_url().'error/error404'?>",
            type: "GET",
            dataType: "html",
            success :function(data){
              $("#main-content").html(data);
            }
          })
        }
      }
    })    
  }
</script>