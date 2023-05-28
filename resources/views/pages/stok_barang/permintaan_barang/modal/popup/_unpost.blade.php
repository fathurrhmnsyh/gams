<div class="modal fade bd-example-modal-lg ModalUnpostPerm" data-backdrop="static" data-keyboard="false"
    style="z-index: 1041" tabindex="-1" id="ModalUnpostPerm" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"></h4>
            </div>
            <div class="row">
                <div class="col">
                    <div class="modal-body">
                        <form id="form_ttf_unpost" method="post" action="javascript:void(0)">
                            @csrf
                            @method('POST')
                            <input type="hidden" id="ttfno_post" name="ttf_no">
                            <div class="form-group row">
                                <label for="type" class="col-2 col-form-label">Type</label>
                                <div class="col-9">
                                    <input type="text" disabled value="UN-POST" name="ttf_no"
                                        class="form-control form-control-sm" placeholder="">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="number" class="col-2 col-form-label">Number</label>
                                <div class="col-9">
                                    <input type="text" disabled name="ttf_no"
                                        class="form-control form-control-sm ttf_no_unpost" placeholder="">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="exception_note" class="col-2 col-form-label">Exception Note</label>
                                <div class="col-9">
                                    <input type="text" autocomplete="off" name="note" id="unpostttfno_noted"
                                        class="form-control form-control-sm" placeholder="">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-info btn-flat btn-sm "
                                    data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-info btn-flat btn-sm submit_unpostttf"><i
                                        class="ti-check"></i> Ok</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
