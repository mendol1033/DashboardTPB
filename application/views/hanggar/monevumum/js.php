<script type="text/javascript">
	var save_method;
	var idEdit;
	var dataEdit;
	var table;

	$(document).ready(function() {
		// initialize class select2
		$(".select2").select2({
			width : '100%'
		});

		// dateMasking and datePicker
		$("#tanggal, #tglAwal, #tglAkhir").inputmask(
			'yyyy-mm-dd',{'placeholder' : 'yyyy-mm-dd'}
			);

		$("#tanggal, #tglAwal, #tglAkhir").datepicker({
			autoclose : true,
			format : 'yyyy-mm-dd'
		});

		$("#idPerusahaan").select2({
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

		// initialize dataTable
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
				"url" : "<?php echo base_url() . 'hanggar/monevumum/ajax_list' ?>",
				"type" : "POST",
			},
		});

		$("#formMonevUmum").validate({
			errorClass: "text-danger",
			rules:{
				idPerusahaan: "required",
				alamat: "required",
				tanggal: "required",
				checklist1: "required",
				checklist2: "required",
				checklist3: "required",
				checklist4: "required",
				checklist5: "required",
				checklist6: "required",
				checklist7: "required",
				checklist81: "required",
				checklist82: "required",
				checklist83: "required",
				checklist9: "required",
				checklist10: "required",
				checklist11: "required",
				checklist12: "required",
				checklist13: "required",
				checklist14: "required",
				checklist15: "required",
				checklist16: "required",
				checklist17: "required"
			},
			messages: {
				idPerusahaan: "Pilih Perusahaan yang akan di Monitoring",
				checklist1: "Pilih kondisi terkini",
				checklist2: "Pilih kondisi terkini",
				checklist3: "Pilih kondisi terkini",
				checklist4: "Pilih kondisi terkini",
				checklist5: "Pilih kondisi terkini",
				checklist6: "Pilih kondisi terkini",
				checklist7: "Pilih kondisi terkini",
				checklist81: "Pilih kondisi terkini",
				checklist82: "Pilih kondisi terkini",
				checklist83: "Pilih kondisi terkini",
				checklist9: "Pilih kondisi terkini",
				checklist10: "Pilih kondisi terkini",
				checklist11: "Pilih kondisi terkini",
				checklist12: "Pilih kondisi terkini",
				checklist13: "Pilih kondisi terkini",
				checklist14: "Pilih kondisi terkini",
				checklist15: "Pilih kondisi terkini",
				checklist16: "Pilih kondisi terkini",
				checklist17: "Pilih kondisi terkini"
			},
			errorElement: "td",
			errorPlacement:function(error,element){
				offset = element.offset();
				el = element.parents('tr');
				erEle = el.next();
				error.appendTo(erEle.children());
			},
			highlight: function(element,errorClass, validClass){
				$(element).parents('tr').next().addClass("has-error").removeClass("hidden");

			},
			unhighlight: function(element, errorClass, validClass){
				$(element).parents('tr').next().removeClass("has-error").addClass("hidden");

				$('#idPerusahaan').on('select2:select', function(event) {
					$('#idPerusahaan').parents('tr').next().removeClass('has-error').addClass('hidden');
					$('#alamat').parents('tr').next().removeClass('has-error').addClass('hidden');
				});
			}
		});
	});

	$("#idPerusahaan").on("select2:selecting", function(e) {
		id = e.params.args.data.id

		$.ajax({
			url: "<?php echo base_url(); ?>pengawasan/tpb/getById",
			type: "GET",
			dataType: "JSON",
			data: {id: id},
			success: function(data){
				$("[name='alamat']").val(data.AlamatPabrik);
			}
		})
	});

	$("#tambah").on('click', function(event) {
		event.preventDefault();
		/* Act on the event */
		save_method = "add";
		var curdate = "<?php echo date("Y-m-d"); ?>";
		$("#formMonevUmum")[0].reset();
		$("#idPerusahaan").children().remove();
		$(".modal-title").text('Form Laporan Monitoring Umum');
		$("#modalForm").modal("show");
		$("#tanggal").val(curdate);
	});

	function closeModal(){
		$("input[type='hidden']").remove();
		$("#modalForm").modal('hide');
	}

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
		idEdit = id;
		$.ajax({
			url: "<?php echo base_url(); ?>hanggar/monevumum/ajax_edit",
			type: "GET",
			dataType: "JSON",
			data: {id: idEdit},
			success: function(data){
				save_method = "edit";
				var isiLaporan = data[1];
				dataEdit = isiLaporan;
				selectedValue(data[0].idPerusahaan,data[0].nama_perusahaan);
				$("[name='alamat']").val(data[0].alamat);
				$("[name='tanggal']").val(data[0].tanggalLaporan);
				$("[name='keteranganLain']").val(data[0].keterangan);
				for (var i = 0; i < isiLaporan.length; i++) {
					// $("#formMonevUmum").append("<input type='hidden' name='idIsi"+isiLaporan[i].item+"' value='"+isiLaporan[i].id+"'>");
					$("input[name='checklist"+isiLaporan[i].item+"'][value='"+isiLaporan[i].kondisi+"'").prop('checked', true);
					$("[name='keterangan"+isiLaporan[i].item+"']").val(isiLaporan[i].keterangan);
				};
				$(".modal-title").text("Ubah Data Laporan");
				$("#modalForm").modal("show");
			}
		})
	}

	function save(){
		var url;
		var data;
		var form = $("#formMonevUmum")[0];
		data = new FormData(form);

		if (save_method == "add") {
			url = "<?php echo base_url(); ?>hanggar/monevumum/ajax_add";
		}else{
			url = "<?php echo base_url() ?>hanggar/monevumum/ajax_update";
			data.append('id',idEdit);
			for (var i = 0; i < dataEdit.length; i++) {
				data.append("idIsi"+dataEdit[i].item,dataEdit[i].id);
			}
		}

		if ($("#formMonevUmum").valid()) {
			$.ajax({
				url: url,
				type: "POST",
				dataType: "JSON",
				data: data,
				contentType : false,
				cache : false,
				processData : false,
				success: function(data){
					alert(data);
					$("#modalForm").modal('hide');
				}
			})
		}
	}

	function cetak(id){
		$.ajax({
			url: "<?php echo base_url() ?>hanggar/monevumum/print",
			type: "GET",
			dataType: "JSON",
			data: {id: id},
			success:function(data){
				$("#iframeDoc").removeAttr('src');
				$("#iframeDoc").attr('src', "<?php echo base_url() ?>"+data[0]);
				$('.modal-title').text(data[1]);
				$("#btn_close").attr('value', data[1]);
				$("#modalDoc").modal("show");
				console.log(data);
			}
		})
	}

	function closeModalView(){
		var file = $("#btn_close").attr("value");
		$.ajax({
			url: "<?php echo base_url() ?>hanggar/monevumum/delete_pdf",
			type: "GET",
			dataType: "JSON",
			data: {name: file},
			success: function(data){
				$("#modalDoc").modal("hide");
				console.log(data);
			}
		})
	}

	function validasi(id){
		$.ajax({
			url: "<?php echo base_url() ?>hanggar/monevumum/validate",
			type: "GET",
			dataType: "JSON",
			data: {id: id},
			success: function(data){
				alert(data);
				ajax_reload();
			}
		})
	}

	function hapus(id){
		$.ajax({
			url: "<?php echo base_url() ?>hanggar/monevumum/delete",
			type: "GET",
			dataType: "JSON",
			data: {id: id},
			success: function(data){
				alert(data);
				ajax_reload();
			}
		})
	}

	function ajax_reload(){
		table.ajax.reload(null, false);
	}
</script>