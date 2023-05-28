<div class="modal fade bd-example-modal-lg addBarangMasuk" data-backdrop="static" data-keyboard="false"
    style="z-index: 1041" tabindex="-1" id="addBarangMasuk" role="dialog">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"></h4>
                <button type="button" class="close" data-dismiss="modal" onclick="clear_value_create_page()"><span>&times;</span></button>
            </div>
            <div class="row">
                <div class="col">
                    <div class="modal-body create-modal">
                        <div class="alert alert-danger print-error-msg" role="alert" style="display: none">
                            <ul></ul>
                        </div>
                        <form id="form-ip" method="post" action="javascript:void(0)">
                            @csrf
                            @method('POST')
                            <input type="hidden" id="id_stout" name="id_stout">
                            <div class="form-group">
                                <label>Tanggal</label>
                                <input type="hidden" name="created_by" class="form-control" value="{{auth()->user()->name}}">
                                <input type="date" name="tanggal" id="tanggal" class="form-control" value="<?php echo date('Y-m-d');?>" readonly>
                            </div>
                            <div class="form-group">
                                <label>No Transaksi</label>
                                <input type="text" name="no_transaksi" id="no_transaksi" class="form-control" placeholder="No Transaksi" readonly>
                            </div>
                            <div class="form-group">
                                <label>Keterangan</label>
                                <input type="text" name="keterangan" id="keterangan" class="form-control" placeholder="Keterangan" >
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-12">
                                    <div class="datatable datatable-primary">
                                        <div class="table-responsive">
                                            <table id="tbl-st-in" class="table table-bordered table-hover"
                                                width="100%">
                                                {{-- style="background-color: #D3D3D3" --}}
                                                <thead class="text-center">
                                                    <tr>
                                                        <th width="2%">No</th>
                                                        <th width="45%">Nama Barang</th>
                                                        <th width="10%">Kategori</th>
                                                        <th width="10%">Unit</th>
                                                        <th width="5%">Jumlah</th>
                                                        <th width="10%">Per Unit</th>
                                                        <th width="16%">Total</th>
                                                        <th width="2%">
                                                            {{-- ACTION --}}
                                                            <button type="button" data-toggle="tooltip"
                                                                data-placement="top" title="Add Item"
                                                                class="btn btn-danger" id="addRow"> <i
                                                                    class="fa fa-plus"></i></button>
                                                        </th>
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
                        <button type="button" onclick="clear_value_create_page()" class="btn btn-info "
                            data-dismiss="modal">Close</button>
                        <button type="button" id="stin_trans" class="btn btn-info saveStin"><i class="ti-check"></i>
                            Save</button>

                        {{-- @php $counter @endphp --}}
                        <input type="hidden" id="jml_row" name="jml_row" value="">
                </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
