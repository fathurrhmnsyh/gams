<div class="modal fade bd-example-modal-lg addCreate" data-backdrop="static" data-keyboard="false" style="z-index: 1041"
    tabindex="-1" id="addCreate" role="dialog">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"></h4>
                <button type="button" class="close" data-dismiss="modal"
                    onclick="clear_value_create_page()"><span>&times;</span></button>
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
                            <div class="form-row">
                                <div class="col-6 mb-6">
                                    <div class="form-group">
                                        <label>Tanggal</label>
                                        <input type="hidden" name="created_by" class="form-control"
                                            value="{{ auth()->user()->name }}">
                                        <input type="date" name="tanggal" id="tanggal" class="form-control"
                                            value="<?php echo date('Y-m-d'); ?>" readonly>
                                    </div>
                                </div>
                                <div class="col-6 mb-6">
                                    <div class="form-group">
                                        <label>No Transaksi</label>
                                        <input type="text" name="no_transaksi" id="no_transaksi" class="form-control"
                                            placeholder="No Transaksi" readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-4 mb-4">
                                    <div class="form-group">
                                        <label>NIK</label>
                                        <input type="number" name="nik" id="nik" class="form-control"
                                            onchange="checkEmp()" placeholder="NIK">
                                    </div>
                                </div>
                                <div class="col-4 mb-4">
                                    <div class="form-group">
                                        <label>Nama</label>
                                        <input type="text" name="nama" id="nama" class="form-control"
                                            placeholder="Nama" readonly>
                                    </div>
                                </div>
                                <div class="col-4 mb-4">
                                    <div class="form-group">
                                        <label>Bagian</label>
                                        <input type="text" name="bagian" id="bagian" class="form-control"
                                            placeholder="Bagian" readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-12 mb-12">
                                    <div class="form-group">
                                        <label>Keterangan</label>
                                        <input type="text" name="keterangan" id="keterangan" class="form-control"
                                            placeholder="Keterangan">
                                    </div>
                                </div>
                            </div>

                            <hr>
                            <div class="row">
                                <div class="col-12">
                                    <div class="datatable datatable-primary">
                                        <div class="table-responsive">
                                            <div class="dataTables_scrollBody"
                                                style="position: relative; overflow: auto; max-height: 300px; width: 100%;">
                                                <table id="tbl-st-in" class="table table-bordered table-hover"
                                                    width="100%">
                                                    {{-- style="background-color: #D3D3D3" --}}
                                                    <thead class="text-center">
                                                        <tr>
                                                            <th width="2%">No</th>
                                                            <th width="45%">Nama Barang</th>
                                                            <th width="10%">Kategori</th>
                                                            {{-- <th width="10%">Unit</th> --}}
                                                            <th width="5%">Jumlah (PCS)</th>
                                                            {{-- <th width="10%">Per Unit</th> --}}
                                                            {{-- <th width="16%">Total</th> --}}
                                                            <th width="2%">
                                                                {{-- ACTION --}}
                                                                {{-- <button type="button" data-toggle="tooltip"
                                                                data-placement="top" title="Add Item"
                                                                class="btn btn-danger" id="addRow"> <i
                                                                    class="fa fa-plus"></i></button> --}}
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

                    </div>
                    <div class="modal-footer">
                        {{-- <button type="button" data-toggle="tooltip"  data-placement="top" title="Add Item" class="btn btn-info" id="addRow"> Add Item</button> --}}
                        <button type="button" data-toggle="tooltip" data-placement="top" title="Tambah Barang"
                            class="btn btn-success" id="addRow"><i class="fa fa-plus"></i> Tambah Barang</button>
                        <button type="button" id="stin_trans" class="btn btn-info savePermBarang"><i
                                class="fa fa-check"></i> Save</button>
                        <button type="button" onclick="clear_value_create_page()" class="btn btn-secondary "
                            data-dismiss="modal">Close</button>

                        {{-- @php $counter @endphp --}}
                        <input type="hidden" id="jml_row" name="jml_row" value="">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
