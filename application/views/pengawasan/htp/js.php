<script type="text/javascript">
	var save_method;
	var selectedProvince;
	var selectedKabupaten;
	var selectedKecamatan;
	var provinsi;
	var kota;
	var kecamatan;
	var kelurahan;
	var table;
	var idEdit;
	var tableDetail;
	var idKuisioner;

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
			// "bFilter" 	 : false,
			"order" : [],
			"ajax" : {
				"url" : "<?php echo base_url() . 'pengawasan/htp/ajax_list' ?>",
				"type" : "POST",
			},
		});

		tableDetail = $('#tableDetail').DataTable({
			initComplete : function(){
				var api = this.api();
				$("#tableDetail_filter input")
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
			// "bFilter" 	 : false,
			"order" : [],
			"ajax" : {
				"url" : "<?php echo base_url() . 'pengawasan/htp/ajax_list_detail' ?>",
				"type" : "POST",
			},
		});
	})

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

	$('[name="surveyor"]').keypress(function(event) {
		getPegawai();
	});

	$('[name="Provinsi"]').keypress(function(event) {
		getProvinsi();
	});

	$('[name="Provinsi"]').focusout(function(event) {
		$(this).val( function() {return this.value.toLowerCase()});
	});

	$('[name="Kabupaten"]').keypress(function(event) {
		getKabupaten();
	});

	$('[name="Kabupaten"]').focusout(function(event) {
		$(this).val( function() {return this.value.toLowerCase()});
	});

	$('[name="Kecamatan"]').keypress(function(event) {
		getKecamatan();
	});

	$('[name="Kecamatan"]').focusout(function(event) {
		$(this).val( function() {return this.value.toLowerCase()});
	});

	$('[name="Kelurahan"]').keypress(function(event) {
		getKelurahan();
	});

	$('[name="Kelurahan"]').focusout(function(event) {
		$(this).val( function() {return this.value.toLowerCase()});
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

	function getProvinsi(){
		var name = $('[name="Provinsi"]').val();
		$.ajax({
			url: '<?php echo base_url() ?>pengawasan/htp/getProvinsi',
			type: 'GET',
			dataType: 'JSON',
			data: {nama: name},
			success : function(d){
				$("#Provinsi").empty();
				$.each(d, function(index, val) {
					$("#Provinsi").append('<option>'+val['lokasi_nama']+'</option>')
				});
			}
		})
	}

	function getKabupaten(){
		var name = $('[name="Kabupaten"]').val();
		var provinsi = $('[name="Provinsi"]').val();
		$.ajax({
			url: '<?php echo base_url() ?>pengawasan/htp/getKabupaten',
			type: 'GET',
			dataType: 'JSON',
			data: {nama: name, provinsi: provinsi},
			success : function(d){
				$("#Kabupaten").empty();
				$.each(d, function(index, val) {
					$("#Kabupaten").append('<option>'+val['lokasi_nama']+'</option>')
				});
			}
		})
	}

	function getKecamatan(){
		var name = $('[name="Kecamatan"]').val();
		var kabupaten = $('[name="Kabupaten"]').val();
		$.ajax({
			url: '<?php echo base_url() ?>pengawasan/htp/getKecamatan',
			type: 'GET',
			dataType: 'JSON',
			data: {nama: name, kabupaten: kabupaten},
			success : function(d){
				$("#Kecamatan").empty();
				$.each(d, function(index, val) {
					$("#Kecamatan").append('<option>'+val['lokasi_nama']+'</option>')
				});
			}
		})
	}

	function getKelurahan(){
		var name = $('[name="Kelurahan"]').val();
		var kecamatan = $('[name="Kecamatan"]').val();
		$.ajax({
			url: '<?php echo base_url() ?>pengawasan/htp/getKelurahan',
			type: 'GET',
			dataType: 'JSON',
			data: {nama: name, kecamatan: kecamatan},
			success : function(d){
				$("#Kelurahan").empty();
				$.each(d, function(index, val) {
					$("#Kelurahan").append('<option>'+val['lokasi_nama']+'</option>')
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

	$("#tambah").on('click', function(event) {
		event.preventDefault();
		save_method = "add";
		$("#formToko")[0].reset();
		$(".modal-title").text("Tambah Data Kuisioner Survey HTP");
		$("#Provinsi").trigger('change');
		$("#Kabupaten").trigger('change');
		$("#Kecamatan").trigger('change');
		$("#Kelurahan").trigger('change');
		$("#modal").modal("show");
	});

	function ajax_load_detail(id){
		tableDetail.ajax.url("<?php echo base_url() . 'pengawasan/htp/ajax_list_detail' ?>"+"?id="+id).load();
	}

	function view(id){
		$(".modal-title").text('DETAIL KUISIONER');
		$("#modalDetail").modal('show');
		idKuisioner = id;
		ajax_load_detail(id);
		$("#footerKuisioner").append('<a href="<?php echo base_url()?>pengawasan/htp/printKuisioner?id='+id+'><button type="button" id="simpan" class="btn btn-primary">CETAK</button></a>');
	}

	$("#modalDetail").on('shown.bs.modal', function(event) {
		$('[name="merek"]').focus();
	});

	$("#modal").on('shown.bs.modal', function(event) {
		$('[name="nama"]').focus();
	});

	function edit(id){
		$.ajax({
			url: '<?php base_url()?>pengawasan/htp/ajax_edit',
			type: 'GET',
			dataType: 'JSON',
			data: {id: id},
			success: function(data){
				idEdit = id;
				save_method = "update";
				$("#formToko")[0].reset();
				$(".modal-title").text("Ubah Data Kuisioner Survey HTP");
				$('[name="nama"]').val(data.namaToko);
				$('[name="alamat"]').val(data.alamat);
				$('[name="pemilik"]').val(data.pemilik);
				$('[name="telepon"]').val(data.telepon);
				$('[name="handphone"]').val(data.handphone);
				$('[name="Provinsi"]').val(data.provinsi);
				$('[name="Kabupaten"]').val(data.kota);
				$('[name="Kecamatan"]').val(data.kecamatan);
				$('[name="Kelurahan"]').val(data.kelurahan);
				$('[name="koordinat"]').val(data.koordinat);
				$('[name="surveyor"]').val(data.namaSurveyor);
				$('[name="nip"]').val(data.nipSurveyor);
				$('[name="tanggal"]').val(data.tanggalKunjungan);
				$("#Provinsi").trigger('change');
				$("#Kabupaten").trigger('change');
				$("#Kecamatan").trigger('change');
				$("#Kelurahan").trigger('change');
				$("#modal").modal("show");
			}
		})		
	}

	$("#formToko").on('submit', function(event) {
		event.preventDefault();
		/* Act on the event */
		var url;
		var formData = new FormData(this);
		if (save_method === "add") {
			url = '<?php echo base_url() ?>pengawasan/htp/ajax_add';
		} else {
			formData.append('id',idEdit);
			url = '<?php echo base_url() ?>pengawasan/htp/ajax_update';
		}

		$.ajax({
			url: url,
			type: 'POST',
			data: formData,
			contentType : false,
			cache : false,
			processData : false,
			dataType: 'JSON',
			success: function(data){
				$("#alert").append('<div class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><h4><i class="icon fa fa-warning"></i> Alert!</h4>'+data.pesan+'</div>');
				$("#modal").modal('hide');
				setTimeout(dismiss, 5000);
				dataTable_relod();
			}
		})
	});

	// function save(){
	// 	var url;
	// 	var data = $("#formToko").serializeArray();
	// 	if (save_method === "add") {
	// 		url = '<?php echo base_url() ?>pengawasan/htp/ajax_add';
	// 	} else {
	// 		url = '<?php echo base_url() ?>pengawasan/htp/ajax_update';
	// 	}

	// 	$.ajax({
	// 		url: url,
	// 		type: 'POST',
	// 		dataType: 'JSON',
	// 		data: data,
	// 		success: function(data){
	// 			$("#alert").append('<div class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><h4><i class="icon fa fa-warning"></i> Alert!</h4>'+data.pesan+'</div>');
	// 			$("#modal").modal('hide');
	// 			setTimeout(dismiss, 5000);
	// 			dataTable_relod();
	// 		}
	// 	})
	// }

	function dataTable_relod(){
		table.ajax.reload(null,false);
	}

	function dismiss(){
		$("#alert").empty();
		$("#alertRokok").empty();
	}

	function addRokok(){
		var data = $("#formRokok").serializeArray();
		data[data.length] = {name: "idHtp", value: idKuisioner};
		$.ajax({
			url: '<?php echo base_url()?>pengawasan/htp/ajax_add_rokok',
			type: 'POST',
			dataType: 'JSON',
			data: data,
			success: function(data){
				$("#alertRokok").append('<div class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button><h4><i class="icon fa fa-warning"></i> Alert!</h4>'+data.pesan+'</div>');
				setTimeout(dismiss, 5000);
				$("#formRokok")[0].reset();
				$('[name="merek"]').focus();
				ajax_load_detail(idKuisioner);
			}
		})
	}

	function cetak(id){
		$.ajax({
			url: '<?php echo base_url()?>pengawasan/htp/printKuisioner',
			type: 'GET',
			dataType: 'JSON',
			data: {id: id},
		})		
	}

	function toDegreesMinutesAndSeconds(coordinate) {
		var absolute = Math.abs(coordinate);
		var degrees = Math.floor(absolute);
		var minutesNotTruncated = (absolute - degrees) * 60;
		var minutes = Math.floor(minutesNotTruncated);
		var seconds = Math.floor((minutesNotTruncated - minutes) * 60 * 10) / 10;

		return degrees + "°" + minutes + "'" + seconds + '"';
	}

	function convertDMS(c) {
		var koordinat = c.split(',');
		var lng = parseFloat(koordinat[1]);
		var lat = parseFloat(koordinat[0]);
		var latitude = toDegreesMinutesAndSeconds(lat);
		var latitudeCardinal = lat >= 0 ? "N" : "S";

		var longitude = toDegreesMinutesAndSeconds(lng);
		var longitudeCardinal = lng >= 0 ? "E" : "W";

		var url = "https://google.com/maps/place/"+latitude + latitudeCardinal+ "+" + longitude+ longitudeCardinal+"/"+lng+","+lat;

		window.open(url, '_blank');
	}
</script>