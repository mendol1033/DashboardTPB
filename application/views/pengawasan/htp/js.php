<script type="text/javascript">
	$(document).ready(function() {
		$(".select2").select2({
			width : '100%'
		})

		$('[name="tanggal"]').inputmask(
			'yyyy-mm-dd',{'placeholder' : 'yyyy-mm-dd'}
			);

		$('[name="tanggal"]').datepicker({
			autoclose : true,
			format : 'yyyy-mm-dd'
		});
	});

	$("#tambah").on('click', function(event) {
		event.preventDefault();
		$(".modal-title").text("Tambah Data Kuisioner Survey HTP");
		$("#modal").modal("show");
	});

	$('[name="surveyor"]').keypress(function(event) {
		getPegawai();
	});

	function getPegawai(){
		var name = $('[name="surveyor"]').val();
		$.ajax({
			url: '<?php echo base_url() ?>pengawasan/htp/getPegawai',
			type: 'GET',
			dataType: 'JSON',
			data: {nama: name},
			success : function(d){
				$("#surveyor").empty();
				$.each(d, function(index, val) {
					$("#surveyor").append('<option>'+val['NamaPegawai']+'</option>')
				});
			}
		})
	}

	$('[name="surveyor"]').focusout(function(event) {
		var name = $('[name="surveyor"]').val();
		$.ajax({
			url: '<?php echo base_url() ?>pengawasan/htp/getNip',
			type: 'GET',
			dataType: 'JSON',
			data: {nama: name},
			success: function(d){
				$('[name="nip"]').val(d['NIPPegawai']);
			}
		})
	});

	// initialize another select2
	$("#Provinsi").select2({
		width : '100%',
		placeholder: 'Masukkan Nama Provinsi',
		minimumInputLength: 5,
		allowClear: true,
		ajax : {
			url : "<?php echo base_url() . 'perusahaan/tpb/getProvinsi/'; ?>",
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
						id : item.lokasi_kode,
						text : item.lokasi_nama
					})
				});
				return{
					results : results
				};
			},
			cache : true
		}
	});

	$("#Provinsi").on('select2:select', function(event) {
		event.preventDefault();
		/* Act on the event */
		selectedProvince = $(event.currentTarget).find("option:selected").val();
	});

	$("#Kota").select2({
		width : '100%',
		placeholder: 'Masukkan Nama Kota/Kabupaten',
		minimumInputLength: 5,
		allowClear: true,
		ajax : {
			url : "<?php echo base_url() . 'perusahaan/tpb/getKabupaten/'; ?>",
			dataType : "JSON",
			delay : 250,
			data : function(params){
				return{
					nama : params.term,
					provinsi : selectedProvince
				};
			},
			processResults: function(data){
				if($.isArray(data) === true){
					var results = [];

					$.each(data, function(index, item){
						results.push({
							id : item.lokasi_kode,
							text : item.lokasi_nama
						})
					});
					return{
						results : results
					};
				} else {
					alert(data);
					return{
						results : data
					}
				}
			},
			cache : true,
		}
	});

	$("#Kota").on('select2:select', function(event) {
		event.preventDefault();
		/* Act on the event */
		selectedKabupaten = $(event.currentTarget).find('option:selected').val();
	});

	$("#Kecamatan").select2({
		width : '100%',
		placeholder: 'Masukkan Nama Kecamatan',
		minimumInputLength: 5,
		allowClear: true,
		ajax : {
			url : "<?php echo base_url() . 'perusahaan/tpb/getKecamatan/'; ?>",
			dataType : "JSON",
			delay : 250,
			data : function(params){
				return{
					nama : params.term,
					kabupaten : selectedKabupaten
				};
			},
			processResults: function(data){
				if($.isArray(data) === true){
					var results = [];

					$.each(data, function(index, item){
						results.push({
							id : item.lokasi_kode,
							text : item.lokasi_nama
						})
					});
					return{
						results : results
					};
				} else {
					alert(data);
					return{
						results : data
					}
				}
			},
			cache : true,
		}
	});

	$("#Kecamatan").on('select2:select', function(event) {
		event.preventDefault();
		/* Act on the event */
		selectedKecamatan = $(event.currentTarget).find('option:selected').val();
	});

	$("#Kelurahan").select2({
		width : '100%',
		placeholder: 'Masukkan Nama Kelurahan',
		minimumInputLength: 5,
		allowClear: true,
		ajax : {
			url : "<?php echo base_url() . 'perusahaan/tpb/getKelurahan/'; ?>",
			dataType : "JSON",
			delay : 250,
			data : function(params){
				return{
					nama : params.term,
					kecamatan : selectedKecamatan
				};
			},
			processResults: function(data){
				if($.isArray(data) === true){
					var results = [];

					$.each(data, function(index, item){
						results.push({
							id : item.lokasi_kode,
							text : item.lokasi_nama
						})
					});
					return{
						results : results
					};
				} else {
					alert(data);
					return{
						results : data
					}
				}
			},
			cache : true,
		}
	});

	function selectedValue(a, el){
	$.ajax({
		url: '<?php echo base_url() ?>perusahaan/tpb/getLokasi',
		type: 'GET',
		dataType: 'JSON',
		data: {kode: a},
		success: function(d){
			var data = [{id:a, text:d.lokasi_nama}];
			var selectedVal = $(el);
			var option = new Option(d.lokasi_nama,a,true,true);
			selectedVal.append(option).trigger('change');

			selectedVal.trigger({
				type: "select2:select",
				params: {
					data: data
				}
			})
		}
	})
}
</script>