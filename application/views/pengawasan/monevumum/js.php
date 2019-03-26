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
				"url" : "<?php echo base_url() . 'pengawasan/monevmoncer/ajax_list' ?>",
				"type" : "POST",
				"data" : {
					"type" : type
				}
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
			},
			messages: {
				idPerusahaan: "Pilih Perusahaan yang akan di Monitoring",
				checklist1: "Pilih kondisi terkini",
				checklist2: "Pilih kondisi terkini",
				checklist3: "Pilih kondisi terkini",
				checklist4: "Pilih kondisi terkini",
				checklist5: "Pilih kondisi terkini",
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

function hidden (a){
	if (a == "pelaksana") {
		$("#tambah").removeClass('sr-only');
	} else {
		$("#tambah").addClass('sr-only');
	}
}

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
	$("#form")[0].reset();
	$("#idPerusahaan").children().remove();
	$(".modal-title").text('Form Laporan Monitoring Umum Pada Ruang Kendali (MONITORING ROOM)');
	$("#modalForm").modal("show");
	$("#tanggal").val(curdate);
});

function closeModal(){
	$("input[type='hidden']").remove();
	$("#modalForm").modal('hide');
}
</script>