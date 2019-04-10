<script type="text/javascript">
	var save_method;
	var idEdit;
	var table;

	$(document).ready(function() {
		// initialize class select2
		$(".select2").select2({
			width : '100%'
		});

		// dateMasking and datePicker
		$("#tanggal, #tglAwal, #tglAkhir, #tglLaporan").inputmask(
			'yyyy-mm-dd',{'placeholder' : 'yyyy-mm-dd'}
			);

		$("#tanggal, #tglAwal, #tglAkhir, #tglLaporan").datepicker({
			autoclose : true,
			format : 'yyyy-mm-dd'
		});

		table = $('#dataTable').DataTable({
			initComplete : function(){
				var api = this.api();
				$("#dataTable_filter input")
				.off('.DT')
				.on('keyup.DT', function(e){
					if(e.keyCode == 13){
						api.search(this.value).draw();
					}
				});
			},
			"processing" : true,
			"serverSide" : true,
			"responsive" : true,
			"autoWidth"	 : false,
			"bFilter" 	 : false,
			"order" : [],
			"ajax" : {
				"url" : "<?php echo base_url() . 'pengawasan/logbook/ajax_list' ?>",
				"type" : "POST",
				"data" : function(a) {
					a.perusahaan = $('[name="filterPerusahaan"]').val();
					a.tglAwal = $('[name="tglAwal"]').val();
					a.tglAkhir = $('[name="tglAkhir"]').val();
					a.jnsLogbook = $('[name="jnsLogbook"]').val();
				}
			},
		});

		$("#idPerusahaan").select2({
			dropdownParent:$("#modalForm"),
			width : '100%',
			placeholder: 'Pilih Nama Perusahaan',
			minimumInputLength: 5,
			allowClear: true,
			ajax : {
				url : "<?php echo base_url() . 'hanggar/monevumum/getPerusahaan'; ?>",
				dataType : "JSON",
				delay : 250,
				data : function(params){
					return{
						nama : params.term
					};
				},
				processResults: function(data){
					var results = [];

					$.each(data, function(index, item){
						results.push({
							id : item.id_perusahaan,
							text : item.nama_perusahaan + " | " + item.nama_tpb + " | " + item.ijin_kelola_tpb
						})
					});
					return{
						results : results
					};
				},
				cache : true
			}
		});

		$("#filterPerusahaan").select2({
			width : '100%',
			placeholder: 'Pilih Nama Perusahaan',
			minimumInputLength: 5,
			allowClear: true,
			ajax : {
				url : "<?php echo base_url() . 'hanggar/monevumum/getPerusahaan'; ?>",
				dataType : "JSON",
				delay : 250,
				data : function(params){
					return{
						nama : params.term
					};
				},
				processResults: function(data){
					var results = [];

					$.each(data, function(index, item){
						results.push({
							id : item.id_perusahaan,
							text : item.nama_perusahaan + " | " + item.nama_tpb + " | " + item.ijin_kelola_tpb
						})
					});
					return{
						results : results
					};
				},
				cache : true
			}
		});

		$("#form").validate({
			errorClass: "text-danger",
			rules:{
				Logbook: "required",
				idPerusahaan: "required",
				tglLaporan: "required",
				isiLaporan: "required",
				upload: "required"
			},
			messages: {
				Logbook: "Pilih Jenis Logbook",
				idPerusahaan: "Pilih Perusahaan yang akan di Monitoring",
				tglLaporan: "Isi Tanggal Laporan",
				isiLaporan: "Isi Laporan Wajib Di isi",
				upload: "Cantumkan Foto atau Screenshot hasil monitoring"
			},
			errorElement: "span",
			errorPlacement:function(error,element){
				offset = element.offset();
				error.insertBefore(element);
			},
			highlight: function(element,errorClass, validClass){
				$(element).parents('.form-group').addClass("has-error").removeClass("has-success");
			},
			unhighlight: function(element, errorClass, validClass){
				$(element).parents('.form-group').addClass("has-success").removeClass("has-error");

				$('#jnsLogbook').on('select2:select', function(event) {
					$('#jnsLogbook').parents('.form-group').removeClass('has-error').addClass('has-success');
				});

				$('#idPerusahaan').on('select2:select', function(event) {
					$('#idPerusahaan').parents('.form-group').removeClass('has-error').addClass('has-success');
				});
			}
		});
	});

	$('#Logbook').on('select2:select', function(event) {
		$('#Logbook').parents('.form-group').removeClass('has-error').addClass('has-success');
	});

	$('#idPerusahaan').on('select2:select', function(event) {
		$('#idPerusahaan').parents('.form-group').removeClass('has-error').addClass('has-success');
		$('span.idPerusahaan-error').remove();
	});

	$("#tambah").on('click', function(event) {
		event.preventDefault();
		save_method = "add";
		$(".modal-title").text('REKAM LOG BOOK');
		$("#modalForm").modal("show");
	});

	$("#modalForm").on('hidden.bs.modal', function(e) {
		$(".has-error").removeClass('has-error');
		$(".has-success").removeClass('has-success');
		$("span.text-danger").remove();
		$("#form")[0].reset();
		$('.select2').val(null).trigger('change');
		$("#tablePic").addClass('sr-only');
		$(".isiLaporan").remove();
		// $('span.select2-selection__clear').trigger('click');
	});

	function selectedValue(a,b){
		var data = [{id:a,text:b}];
		var selectedVal = $("#idPerusahaan");
		var option = new Option(b,a,true,true);
		selectedVal.append(option).trigger('change');

		selectedVal.trigger({
			type: "select2:select",
			params: {
				data: data
			}
		})
	}

	function edit(id){
		$.ajax({
			url: "<?php echo base_url()?>pengawasan/logbook/getById",
			type: "GET",
			dataType: "JSON",
			data: {id: id},
			success: function(d){
				$("#Logbook").val(d[0].type);
				$("#Logbook").trigger('change');
				selectedValue(d[0].idPerusahaan,d[0].nama_perusahaan);
				$('[name="tglLaporan"]').val(d[0].tglLaporan);
				$('[name="isiLaporan"]').val(d[0].isiLaporan);

				image = d[1];

				for (var i = 0; i < image.length; i++) {
					var no = i + 1;
					$('<tr class="isiLaporan"><td class="text-center">'+no+'</td><td><img src="<?php echo base_url()?>'+image[i].lokasiFile+'" style="width:100%;"></td><td><button class="btn btn-danger" onclick="deletepic('+image[i].id+')">Hapus</button></td></tr>').appendTo('#bodyTable');
				}

				$("#tablePic").removeClass('sr-only');
				$("#modalForm").modal("show");
			}
		})		
	}

	function ajax_reload(){
		table.ajax.reload(null,false);
	}

	function save(){
		var url;
		var data;
		var form = $("#form")[0];
		data = new FormData(form);

		if (save_method == "add") {
			url = "<?php echo base_url(); ?>pengawasan/logbook/ajax_add";
		}else{
			url = "<?php echo base_url() ?>pengawasan/logbook/ajax_update";
			data.append('id',idEdit);
		}

		if ($("#form").valid()) {
			$.ajax({
				url: url,
				type: "POST",
				dataType: "JSON",
				data: data,
				contentType : false,
				cache : false,
				processData : false,
				success: function(data){
					ajax_reload();
					alert(data);
					$("#modalForm").modal('hide');
				}
			})			
		}
	}

	function lihat(id){
		$.ajax({
			url: '<?php echo base_url()?>pengawasan/logbook/getById',
			type: 'GET',
			dataType: 'JSON',
			data: {id: id},
			success: function(d){
				switch (d[0].type) {
					case "1":
					kode = "CCTV";
					break;
					case "2":
					kode = "IT INVENTORY";
					break;
					case "3":
					kode = "E-SEAL";
					break;
					default:
					kode = "LAIN LAIN";
					break;
				}
				$('[name="viewLogbook"]').val(kode);
				$('[name="viewPerusahaan"]').val(d[0].nama_perusahaan +" | "+ d[0].nama_tpb +" | "+ d[0].ijin_kelola_tpb);
				$('[name="viewTglLaporan"]').val(d[0].tglLaporan);
				$('[name="viewIsiLaporan"]').val(d[0].isiLaporan);

				image = d[1];

				for (var i = 0; i < image.length; i++) {
					$('<li data-target="#myCarousel" data-slide-to="'+i+'"></li>').appendTo('.carousel-indicators');
					$('<div class="item"><img src="<?php echo base_url()?>'+image[i].lokasiFile+'" alt="Slide'+i+'"></div>').appendTo('.carousel-inner');
				}

				$('.item').first().addClass('active');
				$('.carousel-indicators > li').first().addClass('active');
				$('#MyCarousel').carousel();

				$(".modal-title").text("Logbook");
				$("#modalView").modal('show');
			}
		})		
	}

	function deletepic(id){
		$.ajax({
			url: "<?php echo base_url()?>pengawasan/logbook/deletepic",
			type: "GET",
			dataType: "JSON",
			data: {id: id},
			success: function(d){
				if (d.status == false) {
					alert(d.pesan);
				} else {
					$(".isiLaporan").remove();
					image = d.data;
					for (var i = 0; i < image.length; i++) {
					var no = i + 1;
					$('<tr class="isiLaporan"><td class="text-center">'+no+'</td><td><img src="<?php echo base_url()?>'+image[i].lokasiFile+'" style="width:100%;"></td><td><button class="btn btn-danger" onclick="deletepic('+image[i].id+')">Hapus</button></td></tr>').appendTo('#bodyTable');
				}

					$('.item').first().addClass('active');
					$('.carousel-indicators > li').first().addClass('active');
					$('#MyCarousel').carousel();
					alert(d.pesan);
				}
			}
		})
	}
</script>