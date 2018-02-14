<div class="container-fluid">
	<ul class="nav nav-tabs" role="tablist">
	  <li class="nav-item">
	    <a class="nav-link active" href="#mq" role="tab" data-toggle="tab">Laptops / AIO</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#pc" role="tab" data-toggle="tab">Equipos de escritorio</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#sp" role="tab" data-toggle="tab">Smartphones</a>
	  </li>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
	  	<div role="tabpanel" class="tab-pane fade-in active" id="mq"> 
	  		<?php include('table.php'); ?>
		</div>
	  	<div role="tabpanel" class="tab-pane fade" id="pc">
		  	<?php include('table_pc.php'); ?>
	  	</div>
	  	<div role="tabpanel" class="tab-pane fade" id="sp"> 
	  		Y aqui los celulares 
	  	</div>
	</div>
</div>
<script src="../js/table.js" async defer></script>