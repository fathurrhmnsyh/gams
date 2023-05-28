<div class="modal fade-out bd-example-modal-lg voidUnitModal"  tabindex="-1" id="voidUnitModal"  role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" ></h4>
        </div>
        <div class="row">
         <div class="col">
          <div class="modal-body">
            <form  id="form_unit_void" method="post" action="javascript:void(0)">
                @csrf
                @method('POST')
              <input type="hidden" id="id_tipe_void" name="id_tipe">
              <div class="form-group row">
                <label for="type" class="col-2 col-form-label">Types</label>
                <div class="col-9">
                  <input type="text" disabled  value="VOID"  name="" class="form-control form-control-sm" placeholder="">
                </div>
            </div>
            <div class="form-group row">
                <label for="unit" class="col-2 col-form-label">Unit</label>
                <div class="col-9">
                  <input type="text" disabled  name="unit" class="form-control form-control-sm unit_barang_void" placeholder="">
                </div>
            </div>
            <div class="form-group row">
                <label for="exception_note"  class="col-2 col-form-label">Exception Note</label>
                <div class="col-9">
                  <input type="text"  autocomplete="off" name="note" id="void_note"  class="form-control form-control-sm" placeholder="">
                </div>
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-info " data-dismiss="modal">Cancel</button>
                <button type="button"  class="btn btn-info submit_unitvoid" ><i class="ti-check"></i> Ok</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
