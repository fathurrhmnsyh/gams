<div class="modal fade bd-example-modal-lg createModalBarang" data-backdrop="static" data-keyboard="false"
    style="z-index: 1041" tabindex="-1" id="createModalBarang" role="dialog">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"></h4>
                <button type="button" class="close" data-dismiss="modal" onclick=""><span>&times;</span></button>
            </div>
            <div class="row">
                <div class="col">
                    <div class="modal-body create-modal">
                        <div class="alert alert-danger print-error-msg" role="alert" style="display: none">
                            <ul></ul>
                        </div>
                        <form id="form-barangg" method="post" action="javascript:void(0)">
                            @csrf
                            @method('POST')
                            <input type="hidden" id="id_barang" name="id_barang">
                            <div class="form-group">
                                <label>Nama Barang</label>
                                <input type="text" name="nama_barang" id="nama_barang_create" class="form-control"
                                    placeholder="Nama Barang">
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Kategori</label>
                                        {{-- <input type="text" name="kategori_barang" id="kategori_barang_create" class="form-control" placeholder="Kategori Barang"> --}}
                                        <select class="form-control select2" id="kategori_barang_create"
                                            name="kategori_barang" style="width: 100%;">
                                            <option value="" disabled selected> </option>
                                        </select>
                                        {{-- <div class="input-group">
                                            <input type="text" name="kategori_barang" autocomplete="off" class="form-control form-control-sm" id="kategori_barang_create" onkeydown="keypressVendorCr(event)" readonly>
                                            <span class="input-group-btn">
                                                <button type="button" id="btnPopUp" onclick="vendSearch()" class="btn btn-info "
                                                    ><i class="fa fa-search"></i></button>
                                            </span><br>
                                        </div> --}}
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Unit</label>
                                        {{-- <input type="text" name="unit_barang" id="unit_barang_create" class="form-control" placeholder="Unit Barang"> --}}
                                        <select class="form-control select2" id="unit_barang_create" name="unit_barang"
                                            style="width: 100%;">
                                            <option value="" disabled selected> </option>
                                            {{-- @foreach ($unit as $u)
                                            <option value="{{ $u->unit }}">{{ $u->unit }}</option>
                                            @endforeach --}}
                                        </select>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="modal-footer">
                        {{-- <button type="button" data-toggle="tooltip"  data-placement="top" title="Add Item" class="btn btn-info" id="addRow"> Add Item</button> --}}
                        <button type="button" class="btn btn-secondary " data-dismiss="modal">Tutup</button>
                        <button type="button" class="btn btn-info saveBarang"><i class="ti-check"></i>
                            Simpan</button>

                        {{-- @php $counter @endphp --}}
                        {{-- <input type="hidden" id="jml_row" name="jml_row" value=""> --}}
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
