<script src="<?php echo base_url() ?>assets/bower_components/jquery.fileDownload/src/Scripts/jquery.fileDownload.js"></script>
<script type="text/javascript">
	var save_method;
	var idEdit;
	var dataEdit;
	var table;

	$(document).ready(function() {
		var date = new Date();
		bulan = date.getMonth();
		tahun = date.getFullYear();
		$('[name="bulan"]').val(bulan);
		$('[name="tahun"]').val(tahun);
		$('[name="bulan"]').trigger('change');
		$('[name="tahun"]').trigger('change');

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
				"url" : "<?php echo base_url() . 'hanggar/monitoring/ajax_list' ?>",
				"type" : "POST",
				"data" : function(a) {
					a.bulan = $('[name="bulan"]').val();
					a.tahun = $('[name="tahun"]').val();
				}
			},
		});

		$("#formMonevUmum").validate({
			errorClass: "text-danger",
			rules:{
				idPerusahaan: "required",
			},
			messages: {
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
		url: "<?php echo base_url(); ?>perusahaan/tpb/getById",
		type: "GET",
		dataType: "JSON",
		data: {id: id},
		success: function(data){
			$("[name='alamat']").val(data.alamat);
		}
	})
});

$("#filter").on('click', function(event) {
	event.preventDefault();
	ajax_reload();
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

function ajax_reload(){
	table.ajax.reload(null, true);
}
</script>