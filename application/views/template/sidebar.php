  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <?php if (isset($menu)){
          foreach ($menu as $key => $value) {
            if (isset($value['subMenu'])){?>
              <li class="treeview">
                <a href="#">
                  <i class="<?php echo $value['icon'];?>"></i>
                  <span><?php echo strtoupper($value['menu']);?></span>
                  <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                </a>
                <ul class="treeview-menu">
                  <?php foreach ($value['subMenu'] as $key => $value) {?>
                    <?php if (array_key_exists('jumlah', $value)){?>
                      <?php if ($value['jumlah'] > 0){?>
                        <li>
                          <a href="javascript:void({})" onclick="load_page('<?php echo $value["url"];?>')">
                            <i class="far fa-circle"></i>
                            <span><?php echo $value['menu'];?></span>
                            <span class="pull-right-container">
                              <span class="label label-primary pull-right"><?php echo $value['jumlah']?></span>
                            </span>
                          </a>
                        </li>
                      <?php }?>
                    <?php } else {?>
                      <li>
                        <a href="javascript:void({})" onclick="load_page('<?php echo $value["url"];?>')">
                          <i class="far fa-circle"></i>
                          <span><?php echo $value['menu'];?></span>
                        </a>
                      </li>
                    <?php }?>
                  <?php } ?>
                </ul>
              </li> 
            <?php } else {?>
              <li>
                <a href="javascript:void({})" onclick="load_page('<?php echo $value["url"];?>')">
                 <i class="<?php echo $value['icon'];?>"></i>
                 <span><?php echo strtoupper($value['menu']);?></span>
               </a>
             </li> 
           <?php }
         }
       } ?>
       <!-- ADMIN MENU -->
       <?php if (isset($adminMenu)){?>
         <li class="header">ADMIN NAVIGATION</li>
         <?php foreach ($adminMenu as $key => $value) {
          if (isset($value['subMenu'])){?>
            <li class="treeview">
              <a href="#">
                <i class="<?php echo $value['icon'];?>"></i>
                <span><?php echo strtoupper($value['menu']);?></span>
                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
              </a>
              <ul class="treeview-menu">
                <?php foreach ($value['subMenu'] as $key => $value) {?>
                  <li>
                    <a href="javascript:void({})" onclick="load_page('<?php echo $value["url"];?>')">
                      <i class="far fa-circle"></i>
                      <span><?php echo $value['menu'];?></span>
                    </a>
                  </li>
                <?php } ?>
              </ul>
            </li> 
          <?php } else {?>
            <li>
              <a href="javascript:void({})" onclick="load_page('<?php echo $value["url"];?>')">
               <i class="<?php echo $value['icon'];?>"></i>
               <span><?php echo strtoupper($value['menu']);?></span>
             </a>
           </li> 
         <?php }
       } } ?>
     </ul>
   </section>
   <!-- /.sidebar -->
 </aside>
