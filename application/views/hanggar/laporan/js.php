<script type="text/javascript">
	var save_method;
	$(document).ready(function() {
		// initialize class select2
		$(".select2").select2({
			width : '100%'
		});

		// iCheck
		$('input[type="checkbox"].minimal').iCheck({
			checkboxClass: 'icheckbox_minimal-blue',
		})

		// dateMasking and datePicker
		$("#tanggal, #tglAwal, #tglAkhir, #TglDokumen, #tglPembatalan").inputmask(
			'yyyy-mm-dd',{'placeholder' : 'yyyy-mm-dd'}
			);

		$("#tanggal, #tglAwal, #tglAkhir, #TglDokumen, #tglPembatalan").datepicker({
			autoclose : true,
			format : 'yyyy-mm-dd'
		});

		// initialize another select2
		$('.select2Nama').select2({
			width : '100%',
			placeholder: 'Masukkan Nama Perushaan',
			minimumInputLength: 5,
			allowClear: true,
			ajax : {
				url : "<?php echo base_url().'perusahaan/tpb/getDropDown/';?>",
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
							text : item.nama_perusahaan
						})
					});
					return{
						results : results
					};
				},
				cache : true
			}
		});

		$("#mainFormPembatalan").validate({
			errorClass : "text-danger",
			rules : {
				NamaPerusahaan : "required",
				JnsDokumen : "required",
				NoDokumen : "required",
				TglDokumen : "required",
				dokPembatalan : "required",
				tglPembatalan : "required",
				Alasan : "required"
			},
			errorElement : "span",
			errorPlacement:function(error,element){
				offset = element.offset();
				error.insertAfter(element);
				$("#mainFormPembatalan > .form-group").addClass('has-error');
			}
		});
	});

	$("#tutup, .close").on('click', function(event) {
		event.preventDefault();
		$("#simpan").removeClass('sr-only');
	});

	function load_modal(id){
		var title;
		switch (id) {
			case 'FormCCTVIT':
			title = "Tambah Data Laporan Kondisi CCTV dan IT Invetory";
			break;
			case 'FormCeisa':
			title = "Tambah Data Laporan Kendala CEISA";
			break;
			case 'FormDokMasuk':
			title = "Tambah Data Laporan Jumlah Dokumen dan Tonase Masuk";
			break;
			case 'FormDokKeluar':
			title = "Tambah Data Laporan Jumlah Dokumen dan Tonase Keluar";
			break;
			default:
			title = 'Tambah Data Laporan Pembatalan Dokumen';
			break;
		}
		save_method = id;
		event.preventDefault();
		$(".modal-title").text(title);
		$("#main"+id)[0].reset();
		$("#NamaPerusahaan > option").remove();
		$('[name="JnsDokumen"]').trigger('change');
		$("#main"+id).remove(".help-block");
		$("#main"+id+" > .form-group").removeClass('has-error');
		$("#modal"+id).modal("show");
	}



	function save(){
		var url;
		var data;
		data = $("#main"+save_method).serializeArray();

		switch (save_method) {
			case 'FormCCTVIT':
			url = "<?php echo base_url().'hanggar/monevcctvit/ajax_add'?>";
			break;
			case 'FormCeisa':
			url = "<?php echo base_url().'hanggar/monevceisa/ajax_add'?>";
			break;
			case 'FormDokMasuk':
			url = "<?php echo base_url().'hanggar/monevdokmasuk/ajax_add'?>";
			break;
			case 'FormDokKeluar':
			url = "<?php echo base_url().'hanggar/monevdokkeluar/ajax_add'?>";
			break;
			default:
			url = "<?php echo base_url().'hanggar/pembatalan/ajax_add'?>";
			break;
		}

		if($("#main"+save_method).valid()){
			$("#main"+save_method).remove(".help-block");
			$("#main"+save_method+" > .form-group").removeClass('has-error');
			$.ajax({
				url: url,
				type: "POST",
				dataType: "JSON",
				data: data,
				success : function(data){
					console.log(data);
					$("#modal"+save_method).modal("hide");
				}
			})
		}
	}
</script>