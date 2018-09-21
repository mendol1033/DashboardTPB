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
<!-- DataTables -->
<script src="<?php echo base_url()?>assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url()?>assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="<?php echo base_url('assets/plugins/jquery-validation/dist/jquery.validate.js');?>"></script>
<script src="<?php echo base_url('assets/bower_components/jquery/dist/jquery.form.js');?>"></script>
<!-- ChartJS -->
<script src="<?php echo base_url()?>assets/bower_components/Chart.js/Chart.bundle.min.js"></script>
<script src="<?php echo base_url()?>assets/bower_components/Chart.js/utils.js"></script>
<!-- iCheck 1.0.1 -->
<script src="<?php echo base_url()?>assets/plugins/iCheck/icheck.min.js"></script>
<!-- date-range-picker -->
<script src="<?php echo base_url();?>assets/bower_components/moment/min/moment.min.js"></script>
<script src="<?php echo base_url();?>assets/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>

<script src="<?php echo base_url('assets/bower_components/select2/dist/js/select2.full.min.js')?>" ></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url().'assets/dist/js/adminlte.min.js';?>"></script>
<script type="text/javascript">
  var marker;
  var locations;

  function setLocation() {

  }

  function initMap(){
    // Map Options
    var options = {
      zoom:14,
      center:{lat:-6.287869,lng:107.150520},
      gestureHandling: 'cooperative'
    }

    // New Map
    var map = new google.maps.Map(document.getElementById('mapGoogle'), options);

    var iconBase = "<?php echo base_url().'assets/img/Marker/'?>";

    var icons = {
      merah: {
        icon: iconBase + "Merah.png"
      },
      kuning: {
        icon: iconBase + "Kuning.png"
      },
      hijau: {
        icon: iconBase + "Hijau.png"
      }
    };

    $.ajax({
      url: "<?php echo base_url().'index/getLocation';?>",
      type: "GET",
      dataType: "JSON",
      success : function(data){
        var latitude;
        var longitude;
        var fasilitas;
        $.each(data, function(index, val) {
          latitude = parseFloat(val.lat);
          longitude = parseFloat(val.lng);

          switch (val.jenis) {
            case "1":
              fasilitas = "GB";
              break;
            case "2":
              fasilitas = "KB";
              break;
            case "3":
              fasilitas = "PLB";
              break;
            case "4":
              fasilitas = "CUKAI";
              break;
            case "5":
              fasilitas = "TPPB";
              break;
            case "6":
              fasilitas = "TBB";
              break;
            case "7":
              fasilitas = "TLB";
              break;
            default:
              fasilitas = "KDUB";
              break;
          }

          marker = new google.maps.Marker({
            position: {lat:latitude,lng:longitude},
            map:map,
            title: val.nama + "("+ fasilitas + ")",
            icon: icons["hijau"].icon,
            id: val.id,
            animation: google.maps.Animation.DROP
          });
        });
      }
    })
    

    // Add Marker
    marker = new google.maps.Marker({
      position:{lat:-6.287869,lng:107.150520}, // Koordinat Perusahaan
      map:map,
      title : "Click Me", // Nama Perusahaan
      label: 'KB', // Fasilitas TPB
      icon : icons["hijau"].icon, // Icon Jalur
      animation: google.maps.Animation.DROP,
      id: 25
    });

    // Marker On Click
    marker.addListener('click',function(event){
      $.ajax({
        url: "<?php echo base_url().'perusahaan/tpb/getById';?>",
        type: "GET",
        dataType: "JSON",
        data: {id: this.id},
        success: function(data){
          console.log(data);
        }
      })      
    });

    marker = new google.maps.Marker({
      position:{lat:-6.287869,lng:107.160520}, // Koordinat Perusahaan
      map:map,
      title : "Another Click Me", // Nama Perusahaan
      // snippet : "NAMA PERUSAHAAN",
      label: 'KB', // Fasilitas TPB
      icon : icons["kuning"].icon, // Icon Jalur
      animation: google.maps.Animation.DROP
    });
    marker.addListener('click',function(event){
      markerTitle = marker.getId();
      // markerSnippet = marker.getSnippet();
      // console.log(markerSnippet);
      console.log(markerTitle);
    });
  }

  function openModal() {
    $("#modal").modal('show');
  }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyADdpuDPK_rghRjjVx_pBT2OCNwrMPEpOs&callback=initMap" async defer></script>
<script type="text/javascript">
  var location;
  $(document).ready(function() {
    // getLocation();
  });
  function load_page(c){
    $.ajax({
      url: "<?php echo base_url();?>"+c,
      type: "GET",
      dataType: "html",
      success : function(data){
        $("#main-content").html(data);
        $(".active").remove();
        load_page_info(c);
      },
      error : function(jqXHR, exception){
        if (jqXHR.status == 404) {
          $.ajax({
            url: "<?php echo base_url().'error/error404'?>",
            type: "GET",
            dataType: "html",
            success :function(data){
              $("#main-content").html(data);
              $(".active").text("error404");
            }
          })
        }
      }
    })    
  }

  function load_page_info(c){
    $.ajax({
      url: "<?php echo base_url();?>"+ c +"/page_info",
      type: "GET",
      dataType: "JSON",
      success: function(data){
        $.each(data.breadcrumb_item,function(index, el) {
          $("h1").append("<small class="+'active'+">"+el+"</small>");
          $(".breadcrumb").append("<li class="+'active'+">"+el+"</li>");
        }); 
      }
    })    
  }

 //  function getLocation(){
 //   $.ajax({
 //    url: "<?php echo base_url().'index/getLocation' ?>",
 //    type: "GET",
 //    dataType: "JSON",
 //    success: function(data){
 //      console.log(data);
 //    }
 //  })    
 // }
</script>