<div style="text-align: center; ">
    <div class="btn-group">
      <button type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-search"></i> 
      </button>
      <div class="dropdown-menu">
            <a href="#" style="color: black;" data-toggle="tooltip" row-id="{{$model->no_transaksi}}"  data-id="{{$model->id_stok_in}}"  data-placement="top"  title="Void" class="dropdown-item void"> <i class="fa fa-trash"></i> Void</a>
      </div>
    </div>
  </div>
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

</script>