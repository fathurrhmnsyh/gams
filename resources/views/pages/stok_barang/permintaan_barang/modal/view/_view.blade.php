<div class="modal fade bd-example-modal-lg viewModal" data-backdrop="static" data-keyboard="false" style="z-index: 1041"
    tabindex="-1" id="viewModal" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"></h4>
                {{-- <h4 class="modal-title">Stock In (NEW)</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button> --}}
                {{-- <button type="button" class="close" data-dismiss="modal" onclick="clear_value_create_page()"><span>&times;</span></button> --}}
            </div>
            <div class="row">
                <div class="col">
                    <div class="modal-body create-modal">
                        <div class="alert alert-danger print-error-msg" role="alert" style="display: none">
                            <ul></ul>
                        </div>
                        <form id="form-stout" method="post" action="javascript:void(0)">
                            @csrf
                            @method('POST')
                            <input type="hidden" id="id_stout" name="id_stout">
                            <div class="form-row align-items-center mb-1">
                                <div class="col-6">
                                    <div class="form-row align-items-center">
                                        <div class="col-4">
                                            <label class="auto-middle" for="ma-view-location">Tanggal</label>
                                        </div>
                                        <div class="col-8">
                                            <input type="text" name="tanggal" id="tanggal_view"
                                                class="form-control form-control-sm" readonly>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-row align-items-center">
                                        <div class="col-6">
                                            <label class="auto-middle" for="ma-view-asset_code">No Permintaan</label>
                                        </div>
                                        <div class="col-6">
                                            <input type="text" name="no_perm" id="no_perm_view"
                                                class="form-control form-control-sm" readonly>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row align-items-center mb-1">
                                <div class="col-6">
                                    <div class="form-row align-items-center">
                                        <div class="col-4">
                                            <label class="auto-middle" for="ma-view-location">Nama</label>
                                        </div>
                                        <div class="col-8">
                                            <input type="text" name="nama" id="nama_view"
                                                class="form-control form-control-sm" readonly>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-row align-items-center">
                                        <div class="col-4">
                                            <label class="auto-middle" for="ma-view-asset_code">Bagian</label>
                                        </div>
                                        <div class="col-8">
                                            <input type="text" name="bagian" id="bagian_view"
                                                class="form-control form-control-sm" readonly>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Keterangan</label>
                                <textarea class="form-control form-control-sm" name="keterangan" id="keterangan_view"
                                    rows="2" readonly></textarea>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-12">
                                    <div class="datatable datatable-primary">
                                        <div class="table-responsive">
                                            <table id="tbl-perm_brg_view" class="table table-bordered table-hover"
                                                width="100%">
                                                {{-- style="background-color: #D3D3D3" --}}
                                                <thead class="text-center">
                                                    <tr>
                                                        <th width="2%">No</th>
                                                        <th width="83%">Nama Barang</th>
                                                        {{-- <th width="10%">Kategori</th> --}}
                                                        {{-- <th width="10%">Unit</th> --}}
                                                        <th width="5%">Jumlah (PCS)</th>
                                                        {{-- <th width="10%">Per Unit</th> --}}
                                                        {{-- <th width="16%">Total</th> --}}
                                                        {{-- <th width="2%">
                                                            
                                                        </th> --}}
                                                    </tr>
                                                </thead>
                                                <tbody id="body">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    </div>
                    <div class="modal-footer">
                        {{-- <button type="button" data-toggle="tooltip"  data-placement="top" title="Add Item" class="btn btn-info" id="addRow"> Add Item</button> --}}
                        <button type="button" onclick="clear_value_store_perm()" class="btn btn-secondary "
                            data-dismiss="modal">Tutup</button>
                        <input type="hidden" id="jml_row" name="jml_row" value="">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


