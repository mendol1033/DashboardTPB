  var marker;
  var locations;
  var base_url = "http://"+window.location.host+"/DashboardTPB/";

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

    var iconBase = base_url + "assets/img/Marker/";

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
      url: base_url + "index/getLocation",
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

          // Marker On Click
          marker.addListener('click',function(event){
            $.ajax({
              url: base_url + "perusahaan/tpb/getById",
              type: "GET",
              dataType: "JSON",
              data: {id: this.id},
              success: function(data){
                $("#ProfilNama").text(data.nama_perusahaan);
                $("#modal").modal('show');
              }
            })      
          });
        });
      }
    })
  }

  function openModal() {
    $("#modal").modal('show');
  }

  function load_page(c){
    $.ajax({
      url: base_url+c,
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
            url: base_url+"error/error404",
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
      url: base_url + c + "/page_info",
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