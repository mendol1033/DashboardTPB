
<div class="container-fluid">
	<div class="row">
		<?php if (isset($JudulPanelBesar)){?>
		<header><h3><?php echo $JudulPanelBesar; ?></h3></header>
		<?php }?>
		<div class="row">
			<div class="col-lg-12">
				<?php if(isset($menu[3])){
					unset($menu[3]['subMenu']['laporan']);
					foreach ($menu[3]['subMenu'] as $key => $value) {?>
				<a href="javascript:void({})" onclick="load_modal('<?php echo $value['modal']?>')">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box">
							<span class="info-box-icon bg-aqua">
								<i class="fa fa-file"></i>
							</span>
							<div class="info-box-content">
								<span class="info-box-text"><?php echo $value['menu']?></span>
							</div>
						</div>
					</div>
				</a>
				<?php }} ?>
			</div>
		</div>
	</div>
</div>
<!-- Content Modal -->
<?php if(isset($modal)){$this->load->view($modal);}?>
<!-- Content JS -->
<?php if(isset($js)){$this->load->view($js);}?>