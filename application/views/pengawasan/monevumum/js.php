<script type="text/javascript">
	var save_method;
	var idEdit;
	var dataEdit;
	var table;
	var eselon = "<?php echo $eselon ?>";
	var type = "<?php echo $akses ?>";

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

		hidden(type);

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

					$.each(data, function(index, laporan){
						results.push({
							id : laporan.id_perusahaan,
							text : laporan.nama_perusahaan + " | " + laporan.nama_tpb + " | " + laporan.ijin_kelola_tpb
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

					$.each(data, function(index, laporan){
						results.push({
							id : laporan.id_perusahaan,
							text : laporan.nama_perusahaan + " | " + laporan.nama_tpb + " | " + laporan.ijin_kelola_tpb
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
				"url" : "<?php echo base_url() . 'pengawasan/monevmoncer/ajax_list' ?>",
				"type" : "POST",
				"data" : {
					"type" : type
				}
			},
		});

		$("#formMonev").validate({
			errorClass: "text-danger",
			rules:{
				idPerusahaan: "required",
			},
			messages: {
				idPerusahaan: "Pilih Perusahaan yang akan di Monitoring",
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
				console.log(element);
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

	function hidden (a){
		if (a == "pelaksana") {
			$("#tambah").removeClass('sr-only');
		} else {
			if (a != "admin") {
				$("#tambah").addClass('sr-only');
			} else {
				$("#tambah").removeClass('sr-only');
			}

		}
	}

	$("#idPerusahaan").on("select2:selecting", function(e) {
		id = e.params.args.data.id;
		var linkEseal;
		var userEseal;
		var passEseal;
		$("#akses").addClass('sr-only');
		$("[name='alamat']").val("");
		$("#linkCctv").removeAttr('href');
		$("#linkIt").removeAttr('href');
		$("#linkEseal").removeAttr('href');
		$('[name="linkCctv"]').val("");
		$('[name="linkIt"]').val("");
		$('[name="linkEseal"]').val("");
		$(".added").remove();

		$.ajax({
			url: "<?php echo base_url(); ?>perusahaan/tpb/getById",
			type: "GET",
			dataType: "JSON",
			data: {id: id},
			success: function(data){
				if (data.cctv) {
					var x = data.cctv.IpAddress.substring(0,4);
					if ( x == "http") {
						linkCctv = data.cctv.IpAddress;
					} else {
						linkCctv = "http://"+data.cctv.IpAddress;
					}
					userCctv = data.cctv.Username;
					passCctv = data.cctv.Password;
				} else {
					linkCctv = "#";
					userCctv = "Data Tidak Ditemukan";
					passCctv = "Data Tidak Ditemukan";
				}

				if (data.it) {
					var x = data.it.IpAddress.substring(0,4);
					if ( x == "http") {
						linkIt = data.it.IpAddress;
					} else {
						linkIt = "http://"+data.it.IpAddress;
					}
					userIt = data.it.Username;
					passIt = data.it.Password;
				} else {
					linkIt = "#";
					userIt = "Data Tidak Ditemukan";
					passIt = "Data Tidak Ditemukan";
				}

				if (data.eseal) {
					var x = data.eseal.IpAddress.substring(0,4);
					console.log(x);
					if ( x == "http") {
						linkEseal = data.eseal.IpAddress;
					} else {
						linkEseal = "http://"+data.eseal.IpAddress;
					}
					userEseal = data.eseal.Username;
					passEseal = data.eseal.Password;
				} else {
					linkEseal = "#";
					userEseal = "Data Tidak Ditemukan";
					passEseal = "Data Tidak Ditemukan";
				}
				$("#akses").removeClass('sr-only');
				$("[name='alamat']").val(data.umum[3].data);
				$("#linkCctv").attr('href', linkCctv);
				$("#linkIt").attr('href', linkIt);
				$("#linkEseal").attr('href', linkEseal);
				$('[name="linkCctv"]').val(linkCctv);
				$('[name="linkIt"]').val(linkIt);
				$('[name="linkEseal"]').val(linkEseal);
				$("#btnCctv").attr('data-clipboard-text', linkCctv);
				$("#akses > tbody").append('<tr class="added"><td><strong>Username</strong></td><td class="text-center">'+userCctv+'</td><td class="text-center">'+userIt+'</td><td class="text-center">'+userEseal+'</td></tr>');
				$("#akses > tbody").append('<tr class="added"><td><strong>Password</strong></td><td class="text-center">'+passCctv+'</td><td class="text-center">'+passIt+'</td><td class="text-center">'+passEseal+'</td></tr>');
			}
		})
	});

	function salin(a){
		var success = true;
		var range = document.createRange();
		var selection;

		if (window.clipboardData) {
			window.clipboardData.setData("text",$('[name="'+a+'"]').val());
		} else {
			var tmpElem = $('<div>');
			tmpElem.css({
				position : 'absolute',
				left: '-1000px',
				top: '-1000px'
			});
			tmpElem.text($('[name="'+a+'"]').val());
			$('body').append(tmpElem);
			range.selectNodeContents(tmpElem.get(0));
			selection = window.getSelection ();
			selection.removeAllRanges ();
			selection.addRange (range);

			try {
				success = document.execCommand("copy",false,null);
			} catch(e) {
				copyToClipboardFF($('[name="'+a+'"]').val());
				console.log(e);
			}

			if (success) {
				tmpElem.remove();
			}
		}
	}

	$("#tambah").on('click', function(event) {
		event.preventDefault();
		/* Act on the event */
		save_method = "add";
		var curdate = "<?php echo date("Y-m-d"); ?>";
		$("#formMonev")[0].reset();
		$("#idPerusahaan").children().remove();
		$(".modal-title").text('Form Laporan Monitoring Umum Pada Ruang Kendali (MONITORING ROOM)');
		$("#modalForm").modal("show");
		$("#tanggal").val(curdate);
	});

	$("#modalForm").on('hidden.bs.modal',function(event) {
		$("input[type='hidden']").remove();
		$("#formMonev")[0].reset();
		$('.select2').val(null).trigger('change');
		$("#akses").addClass('sr-only');
		$("[name='alamat']").val("");
		$("#linkCctv").removeAttr('href');
		$("#linkIt").removeAttr('href');
		$("#linkEseal").removeAttr('href');
		$('[name="linkCctv"]').val("");
		$('[name="linkIt"]').val("");
		$('[name="linkEseal"]').val("");
		$(".added").remove();
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
		save_method = "update";
		$.ajax({
			url: "<?php echo base_url(); ?>pengawasan/monevmoncer/ajax_edit",
			type: "GET",
			dataType: "JSON",
			data: {id: id},
			success: function(d){
				idEdit = id;
				selectedValue(d.laporan.id_perusahaan, d.laporan.nama_perusahaan);
				$('[name="alamat"]').val(d.laporan.alamat);
				$('[name="tanggal"]').val(d.laporan.tanggalLaporan);
				$("#modalForm").modal("show");
				$('[name="kesimpulan"]').val(d.laporan.kesimpulan);
				$(".modal-title").text('Form Laporan Monitoring Umum Pada Ruang Kendali (MONITORING ROOM)');

				var isi = d.isi;
				for (var i = 0; i < isi.length; i++) {
					$('[name="laporan'+isi[i].item+'"]').val(isi[i].keterangan);
				}

				// console.log(d);
			}
		})
	}

	function save() {
		var url;
		var data;
		var form = $("#formMonev")[0];
		data = new FormData(form);

		if (save_method == "add") {
			url = "<?php echo base_url(); ?>pengawasan/monevmoncer/ajax_add";
		}else{
			url = "<?php echo base_url() ?>pengawasan/monevmoncer/ajax_update";
			data.append('id',idEdit);
		}

		if ($("#formMonev").valid()) {
			$.ajax({
				url: url,
				type: 'POST',
				dataType: 'JSON',
				data: data,
				contentType : false,
				cache : false,
				processData : false,
				success: function(d){
					alert(d);
					$("#modalForm").modal('hide');
					table.ajax.reload(null, false);
				}
			})
			.done(function(){
				$("#akses").addClass('sr-only');
				$("[name='alamat']").val("");
				$("#linkCctv").removeAttr('href');
				$("#linkIt").removeAttr('href');
				$("#linkEseal").removeAttr('href');
				$('[name="linkCctv"]').val("");
				$('[name="linkIt"]').val("");
				$('[name="linkEseal"]').val("");
				$(".added").remove();
			})
		}
	}



	function cetak(id){
		$.ajax({
			url: "<?php echo base_url() ?>pengawasan/monevmoncer/cetak",
			type: "GET",
			dataType: "JSON",
			data: {id: id},
			success:function(data){
				$("#iframeDoc").removeAttr('src');
				$("#iframeDoc").attr('src', "<?php echo base_url() ?>"+data[0]);
				$('.modal-title').text(data[1]);
				$("#btn_close").attr('value',data[1]);
				$("#modalDoc").modal("show");
			}
		})
	}

	function closeModalView(){
		var file = $("#btn_close").attr("value");
		$.ajax({
			url: "<?php echo base_url() ?>pengawasan/monevmoncer/delete_pdf",
			type: "GET",
			dataType: "JSON",
			data: {name: file},
			success: function(data){
				$("#modalDoc").modal("hide");
			}
		})
	}

	function hapus(id){
		if (confirm("data monev akan dihapus?")) {
			$.ajax({
				url: "<?php echo base_url() ?>pengawasan/monevmoncer/hapus",
				type: "GET",
				dataType: "JSON",
				data: {id: id},
				success: function(d){
					alert(d);
					table.ajax.reload(null, false);
				}
			})
		}
	}

</script>