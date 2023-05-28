@extends('layouts.admin')
@section('title', 'Master Barang | GAMS')
{{-- @section('title-sub', 'Master Asset') --}}
{{-- @section('breadcrumb')
<ol class="breadcrumb float-sm-right">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item active">DataTables</li>
</ol>
@endsection --}}
@section('content')


<div class="col-12">
    <div class="row">
        <div class="col-md-6">
            <div class="card card-success">
                <div class="card-header">
                    <h3 class="card-title">Master Kategori</h3>
                </div>
                <div class="card-body">

                    <div class="card-body table-responsive">
                        <button type="button" class="btn btn-success mb-3" id="addModaltipe"><i class="fa fa-plus" ></i> Tambah Kategori</button>
                        <table class="table table-hover w-full " id="tipe_datatables" >
                            <thead style="background-color: #27ae60; color: #fff;">
                                <tr class="text-center" >
                                    <th style="width: 5%">No</th>
                                    <th >Kategori</th>
                                    <th style="width: 20%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody id="body">
                                
                            </tbody>
            
                        </table>
                    </div>
                    <!-- /.card-body -->

                </div>

            </div>

        </div>

        <div class="col-md-6">
            <div class="card card-warning">
                <div class="card-header">
                    <h3 class="card-title">Master Unit</h3>
                </div>
                <div class="card-body">

                    <div class="card-body table-responsive">
                        <button type="button" class="btn btn-warning mb-3" id="addModalUnits" ><i class="fa fa-plus" ></i> Tambah Unit</button>
                        <table class="table table-hover w-full " id="unit_datatables" >
                            <thead style="background-color: #f1c40f; color: #fff;">
                                <tr class="text-center" >
                                    <th style="width: 5%">No</th>
                                    <th style="width: 40%">Unit</th>
                                    <th style="width: 40%">Jumlah (unit)</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody id="body">
                                
                            </tbody>
            
                        </table>
                    </div>
                    <!-- /.card-body -->

                </div>

            </div>
        </div>
        
    </div>
</div>
<div class="col-12">
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-12">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Master Barang</h3>
                    </div>
                    <div class="card-body">
    
                        <div class="card-body table-responsive">
                            <button type="button" class="btn btn-primary mb-3 refreshDBkategori" id="addModalBarang"><i class="fa fa-plus" ></i> Tambah Barang</button>
                            <table class="table table-hover w-full " id="barang_datatables" >
                                <thead style="background-color: #0069D9; color: #fff;">
                                    <tr class="text-center" >
                                        <th style="width: 5%">No</th>
                                        <th style="width: 30%">Nama</th>
                                        <th style="width: 20%">Kategori</th>
                                        <th style="width: 20%">unit</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody id="body">
                                    
                                </tbody>
                
                            </table>
                        </div>
                        <!-- /.card-body -->
    
                    </div>
    
                </div>
            </div>
        </div>
    </div>
</div>
<div class="col-12">
    <div class="row">
        <div class="col-md-12">
            <div class="card card-secondary">
                <div class="card-header">
                    <h3 class="card-title">Stok Barang</h3>
                </div>
                <div class="card-body">

                    <div class="card-body table-responsive">
                        {{-- <button type="button" class="btn btn-primary mb-3" id="addModalBarang"><i class="fa fa-plus" ></i> Tambah Barang</button> --}}
                        <table class="table table-hover w-full " id="stok_barang_datatables" >
                            <thead style="background-color: #6c757d; color: #fff;">
                                <tr class="text-center" >
                                    <th style="width: 5%">No</th>
                                    <th style="width: 30%">Nama Barang</th>
                                    <th style="width: 20%">Kategori</th>
                                    {{-- <th style="width: 20%">unit</th> --}}
                                    <th style="width: 20%">Stok / UNIT</th>
                                    <th style="width: 20%">Stok / PCS</th>
                                    {{-- <th>Aksi</th> --}}
                                </tr>
                            </thead>
                            <tbody id="body">
                                
                            </tbody>
            
                        </table>
                    </div>
                    <!-- /.card-body -->

                </div>

            </div>
        </div>
    </div>
</div>


@endsection
@include('pages.master_barang.modal.create_tipe.create_tipe')
@include('pages.master_barang.modal.create_unit.create_unit')
@include('pages.master_barang.modal.create_barang.create_barang')
@include('pages.master_barang.modal.void.void_tipe')
@include('pages.master_barang.modal.log.log_tipe')
@include('pages.master_barang.modal.void.void_unit')
@include('pages.master_barang.modal.log.log_unit')
@include('pages.master_barang.modal.void.void_barang')
@include('pages.master_barang.modal.log.log_barang')
@push('page-script')
@include('pages.master_barang.ajax_tipe')
@include('pages.master_barang.ajax_unit')
@include('pages.master_barang.ajax_barang')
<script>
    $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    $(document).ready(function(){
        //get data from datatables
        var table = $('#tipe_datatables').DataTable({
            processing: true,
            serverSide: true,
            destroy: true,
            ajax: {
                url: "{{ route('master_barang.getdatatable_tipe') }}",
                type: "POST",
                'X-CSRF-TOKEN': '{{csrf_token()}}'
            },
            order: [
                [0, 'asc']
            ],
            responsive: true,
            columns: [
                {
                    title: '#',
                    name: 'no',
                    render: function (data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: 'tipe_barang',
                    name: 'tipe_barang'
                },
                {
                    data: 'action',
                    name: 'action'
                }
            ]
        });
    });
    $(document).ready(function(){
        //get data from datatables
        var table = $('#unit_datatables').DataTable({
            processing: true,
            serverSide: true,
            destroy: true,
            ajax: {
                url: "{{ route('master_unit_brg.getdatatable_unit') }}",
                type: "POST",
                'X-CSRF-TOKEN': '{{csrf_token()}}'
            },
            order: [
                [0, 'asc']
            ],
            responsive: true,
            columns: [
                {
                    title: '#',
                    name: 'no',
                    render: function (data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: 'unit',
                    name: 'unit'
                },
                {
                    data: 'jumlah',
                    name: 'jumlah'
                },
                {
                    data: 'action',
                    name: 'action'
                }
            ]
        });
    });
    $(document).ready(function(){
        //get data from datatables
        var table = $('#barang_datatables').DataTable({
            processing: true,
            serverSide: true,
            destroy: true,
            ajax: {
                url: "{{ route('master_brg.getdatatable_barang') }}",
                type: "POST",
                'X-CSRF-TOKEN': '{{csrf_token()}}'
            },
            order: [
                [0, 'asc']
            ],
            responsive: true,
            columns: [
                {
                    title: '#',
                    name: 'no',
                    render: function (data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: 'nama_barang',
                    name: 'nama_barang'
                },
                {
                    data: 'kategori_barang',
                    name: 'kategori_barang'
                },
                {
                    data: 'unit_barang',
                    name: 'unit_barang'
                },
                {
                    data: 'action',
                    name: 'action'
                }
            ]
        });
    });
    $(document).ready(function(){
        //get data from datatables
        var table = $('#stok_barang_datatables').DataTable({
            processing: true,
            serverSide: true,
            destroy: true,
            ajax: {
                url: "{{ route('stok_brg.getdatatable_stok') }}",
                type: "POST",
                'X-CSRF-TOKEN': '{{csrf_token()}}'
            },
            order: [
                [0, 'asc']
            ],
            responsive: true,
            columns: [
                {
                    title: '#',
                    name: 'no',
                    render: function (data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: 'nama_barang',
                    name: 'nama_barang'
                },
                {
                    data: 'kategori_barang',
                    name: 'kategori_barang'
                },
                {
                    data: 'stok_barang',
                    render: function ( data, type, row ) {
                        return row.stok_barang+'&nbsp;'+row.unit_barang;
                    }
                },
                // {
                //     data: 'stok_barang',
                //     name: 'stok_barang'
                // },
                // {
                //     data: 'stok_pcs',
                //     name: 'stok_pcs'
                // },
                {
                    data: 'stok_pcs',
                    render: function ( data, type, row ) {
                        return row.stok_pcs+'&nbsp;'+'PCS';
                    }
                },
                // {
                //     data: 'action',
                //     name: 'action'
                // }
            ]
        });
    });
</script>


@endpush
