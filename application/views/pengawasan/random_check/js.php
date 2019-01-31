<script type="text/javascript">
	var table;
	var save_method;
	var idEdit;
	var proses;
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

		//Timepicker
		$("#wktMulai, #wktSelesai").daterangepicker({
			autoUpdateInput:false,
			singleDatePicker: true,
			showDropdowns: true,
			timePicker:true,
			timePicker24Hour:true,
		});

		$('#wktMulai, #wktSelesai').on('apply.daterangepicker', function(ev, picker) {
			$(this).val(picker.startDate.format('YYYY-MM-DD H:m'));
		});

		$('#wktMulai, #wktSelesai').on('cancel.daterangepicker', function(ev, picker) {
			$(this).val('');
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
				"url" : "<?php echo base_url().'pengawasan/random_check/ajax_list'?>",
				"type" : "POST",
			},
		});

		// initialize another select2
		$("#NamaPerusahaan").select2({
			width : '100%',
			placeholder: 'Masukkan Nama Perusahaan',
			minimumInputLength: 5,
			allowClear: true,
			ajax : {
				url : "<?php echo base_url().'pengawasan/cctv/getDropDownNPWP/';?>",
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
							id : item.IdPerusahaan,
							text : item.NmPerusahaan + " | " + item.Fasilitas + " | " + item.NoSkepAkhir
						})
					});
					return{
						results : results
					};
				},
				cache : true
			}
		});

		$("#formCCTV").validate({
			errorClass : "text-danger",
			rules : {
				StatusCCTV : "required",
				StatusIT : "required",
				tindakLanjut : "required",
			},
			messages : {
				StatusIT : "Pilih Status IT",
				StatusCCTV : "Pilih Status CCTV",
				tindakLanjut : "Pilih Tindak Lanjut",
			},
			errorElement : "span",
		});

		$("#btnTambah").on('click', function(event) {
			event.preventDefault();
			/* Act on the event */
			$(".modal-title").text("RANDOM CHECK CCTV dan I INVENTORY");
			$("#random").text("");	
			$("#modal").modal("show");
			getRandomCheck();
		});

		function getRandomCheck(){
			$.ajax({
				url: "<?php echo base_url().'pengawasan/random_check/getRandom'?>",
				type: "GET",
				dataType: "JSON",
				success: function(data){
					var no = 0;
					var idCek, idStatCCTV, idStatIT, idTindakLanjut;
					proses = data.proses;

					if (data.proses == 'add') {
						$.each(data.data, function(index, val) {
							/* iterate through array or object */
							var idCek, idStatCCTV, idStatIT;
							if (typeof val.Id == 'undefined') {idCek = "NULL"} else {idCek = val.Id};
							idStatCCTV = "StatusCCTV"+index;
							idStatIT = "StatusIT"+index;
							idTindakLanjut = "tindakLanjut"+index;

							no++;
							$("#random").append(
								"<tr>"+
								'<td class="text-center">'+no+'</td>'+
								'<td>'+val.NmPerusahaan+'</td>'+
								'<td class="text-center">'+val.UserCCTV+"<br>"+val.PassCCTV+'</td>'+
								'<td class="text-center">'+val.UserIT+'<br>'+val.PassIT+'</td>'+
								'<td class="text-center">'+
								'<a href="http://'+val.IpCCTV+'" target="_blank"><button type="button" class="btn btn-primary"><i class="icon ion-md-videocam"><span hidden>View</span></i></button></a>'+
								'&nbsp;'+
								'<a href="http://'+val.IpIT+'" target="_blank"><button type="button" class="btn btn-primary"><i class="icon ion-md-desktop"><span hidden>View</span></i></button></a>'+'</td>'+
								'<td>'+
								'<input type="hidden" id="IdPerusahaan" name="IdPerusahaan[]" value="'+val.IdPerusahaan+'">'+
								'<input type="hidden" id="IdCCTV" name="IdCCTV[]" value="'+val.IdCCTV+'">'+
								'<input type="hidden" id="IdIT" name="IdIT[]" value="'+val.IdInventory+'">'+
								'<select class="form-control select2" name="StatusCCTV[]" id="'+idStatCCTV+'" value=""><option value="">Pilih Status</option><option value="Y">AKTIF</option><option value="N">TIDAK AKTIF</option></select>'+
								'</td>'+
								'<td>'+
								'<select class="form-control select2" name="StatusIT[]" id="'+idStatIT+'" value=""><option value="">Pilih Status</option><option value="Y">AKTIF</option><option value="N">TIDAK AKTIF</option></select>'+
								'</td>'+
								'<td>'+'<select class="form-control select2" id="'+idTindakLanjut+'" name="tindakLanjut[]"><option value="">Pilih Tindakan Yang Diambil</option><option value="Patroli">Patroli</option><option value="Analisa Intelijen">Analisa</option></select>'+'</td>'+
								"<tr>"	
								);
							$(".select2").select2({width:"100%"});
						});
					} else {
						$.each(data.data, function(index, val) {
							/* iterate through array or object */
							idStatCCTV = "StatusCCTV"+index;
							idStatIT = "StatusIT"+index;
							idTindakLanjut = "tindakLanjut"+index;

							no++;
							$("#random").append(
								"<tr>"+
								'<td class="text-center">'+no+'</td>'+
								'<td>'+val.NmPerusahaan+'</td>'+
								'<td class="text-center">'+val.UserCCTV+"<br>"+val.PassCCTV+'</td>'+
								'<td class="text-center">'+val.UserIT+'<br>'+val.PassIT+'</td>'+
								'<td class="text-center">'+
								'<a href="http://'+val.IpCCTV+'" target="_blank"><button type="button" class="btn btn-primary"><i class="icon ion-md-videocam"><span hidden>View</span></i></button></a>'+
								'&nbsp;'+
								'<a href="http://'+val.IpIT+'" target="_blank"><button type="button" class="btn btn-primary"><i class="icon ion-md-desktop"><span hidden>View</span></i></button></a>'+'</td>'+
								'<td>'+
								'<input type="hidden" id="IdPerusahaan" name="IdPerusahaan[]" value="'+val.IdPerusahaan+'">'+
								'<input type="hidden" id="IdCCTV" name="IdCCTV[]" value="'+val.IdCCTV+'">'+
								'<input type="hidden" id="IdIT" name="IdIT[]" value="'+val.IdInventory+'">'+
								'<input type="hidden" id="Id" name="Id[]" value="'+val.Id+'">'+
								'<select class="form-control select2" name="StatusCCTV[]" id="'+idStatCCTV+'" value=""><option value="">Pilih Status</option><option value="Y">AKTIF</option><option value="N">TIDAK AKTIF</option></select>'+
								'</td>'+
								'<td>'+
								'<select class="form-control select2" name="StatusIT[]" id="'+idStatIT+'" value=""><option value="">Pilih Status</option><option value="Y">AKTIF</option><option value="N">TIDAK AKTIF</option></select>'+
								'</td>'+
								'<td>'+'<select class="form-control select2" id="'+idTindakLanjut+'" name="tindakLanjut[]"><option value="">Pilih Tindakan Yang Diambil</option><option value="Patroli">Patroli</option><option value="Analisa Intelijen">Analisa</option></select>'+'</td>'+
								"<tr>"	
								);
							$(".select2").select2({width:"100%"});
							$("#"+idStatCCTV).val(val.StatusCCTV);
							$("#"+idStatIT).val(val.StatusInventory);
							$("#"+idTindakLanjut).val(val.TindakLanjut);

							$("#StatusCCTV").trigger("change");
							$("#StatusIT").trigger("change");
							$("#TindakLanjut").trigger('change');
						});
					}
					// console.log(data);			
				}
			})

}

$("#simpan").on('click',function(event) {
	event.preventDefault();
	/* Act on the event */
	var data;
	data = $("#form").serializeArray();
	data[data.length] = {name: "proses", value: proses };
	if($("#form").valid()){
		$("#form").remove(".help-block");
		$("#form > .form-group").removeClass('has-error');
		$.ajax({
			url: "<?php echo base_url().'pengawasan/random_check/ajax_add';?>",
			type: "POST",
			dataType: "JSON",
			data: data,
			success : function(data){
				$("#modal").modal("hide");
				alert(data);
				ajax_reload();
			},
			error: function(e,exception){
				console.log(e, exception);
				console.log(e.responseText);
			}
		})
	}
});

$("#tutup").on('click', function(event) {
	event.preventDefault();
	/* Act on the event */
	$("#random").text("");
});

function ajax_reload(){
	table.ajax.reload(null,false);
}
})
</script>