    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          <?php echo $app; ?>
          <small class="active">Index</small>
        </h1>
        <ol class="breadcrumb">
          <li id="breadcrumb_home"><a href="#"><i class="fa fa-dashboard"></i>&nbsp;<?php echo $app; ?></a></li>
          <li class="active">Index</li>
        </ol>
      </section>
      <!-- Main content -->
      <section id="main-content" class="content">
        <?php $this->load->view('index'); ?>
      </section>
      <!-- /.content -->
    </div>