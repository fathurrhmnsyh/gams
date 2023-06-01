<div class="modal fade-out bd-example-modal-lg barangMasukVoid"  tabindex="-1" id="barangMasukVoid"  role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" ></h4>
        </div>
        <div class="row">
         <div class="col">
          <div class="modal-body">
            <form  id="form_barang_void" method="post" action="javascript:void(0)">
                @csrf
                @method('POST')
              <input type="hidden" id="id_tipe_void" name="id_tipe">
              <div class="form-group row">
                <label for="type" class="col-3 col-form-label">Tipe</label>
                <div class="col-8">
                  <input type="text" disabled  value="VOID"  name="" class="form-control form-control-sm" placeholder="">
                </div>
            </div>
            <div class="form-group row">
                <label for="no_trans" class="col-3 col-form-label">No Transaksi </label>
                <div class="col-8">
                  <input type="text" disabled  name="no_trans" class="form-control form-control-sm no_trans_void" placeholder="">
                </div>
            </div>
            
            <div class="form-group row">
                <label for="exception_note"  class="col-3 col-form-label">Keterangan </label>
                <div class="col-8">
                  <input type="text"  autocomplete="off" name="note" id="void_note"  class="form-control form-control-sm" placeholder="">
                </div>
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary " data-dismiss="modal">Cancel</button>
                <button type="button"  class="btn btn-info submit_BarangMasukvoid" ><i class="ti-check"></i> Ok</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
