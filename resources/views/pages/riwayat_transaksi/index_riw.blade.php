@extends('layouts.admin')
@section('title', 'Riwayat Transaksi | GAMS')
@section('title-sub', 'Riwayat Transaksi')
{{-- @section('breadcrumb')
<ol class="breadcrumb float-sm-right">
    <li class="breadcrumb-item"><a href="/">Consumable Control</a></li>
    <li class="breadcrumb-item active">Transaction History</li>
</ol>
@endsection --}}

@section('content')

<div class="col-12">
    <div class="card">
        <div class="card-body">
            <p>Export Report (Barang)</p>
            <form id="export-by-item" class="form-inline">
                @csrf
                @method('POST')
                <div class="form-group mb-2">
                    <label for="">Tipe :&nbsp;</label>
                    <select name="tipe" id="tipe_filter" class="form-control form-control-sm">
                        <option value="" selected disabled></option>
                        <option value="masuk">Trans Masuk</option>
                        <option value="keluar">Trans Keluar</option>
                    </select>
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <label for="">Nama Barang :&nbsp;</label>
                    <select name="nama_barang" id="nama_barang_filter" class="select2 form-control form-control-sm">
                        <option value="" selected>All</option>
                        @foreach($barang as $br)
                        <option value="{{ $br->nama_barang}}">{{ $br->nama_barang}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <label for="">Start Date :&nbsp;</label>
                    <input type="date" name="start" class="form-control form-control-sm" id="start-date">
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <label for="">End Date : &nbsp;</label>
                    <input type="date" name="end" class="form-control form-control-sm" id="end-date">
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <label for="">Export To&nbsp;</label>
                    <select name="export_type" id="export_type" class="form-control form-control-sm">
                        <option value="pdf" selected>PDF</option>
                        {{-- <option value="excel">Excel</option> --}}
                    </select>
                </div>
                <button type="submit" class="btn btn-sm btn-primary mb-2 exportData"><i class="fa fa-save"></i>
                    Export</button>
            </form>
        </div>
    </div>
</div>

{{-- <div class="col-12">
    <div class="card">
        <div class="card-body">
            <p>Export Report (Dept)</p>
            <form id="export-by-item" class="form-inline">
                @csrf
                @method('POST')
                <div class="form-group mb-2">
                    <label for="">Dept :&nbsp;</label>
                    <select name="type" id="type_filter" class="form-control form-control-sm">
                        <option value="" selected disabled></option>
                        <option value="stin">Trans Masuk</option>
                        <option value="stout">Trans Keluar</option>
                    </select>
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <label for="">Item Name :&nbsp;</label>
                    <select name="item_name" id="item_name_filter" class="select2 form-control form-control-sm">
                        <option value="" selected>All</option>
                        @foreach($barang as $br)
                        <option value="{{ $br->nama_barang}}">{{ $br->nama_barang}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <label for="">Start Date :&nbsp;</label>
                    <input type="date" name="start" class="form-control form-control-sm" id="start-date">
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <label for="">End Date : &nbsp;</label>
                    <input type="date" name="end" class="form-control form-control-sm" id="end-date">
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <label for="">Export To&nbsp;</label>
                    <select name="export_type" id="export_type" class="form-control form-control-sm">
                        <option value="pdf" selected>PDF</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-sm btn-primary mb-2 exportData"><i class="fa fa-save"></i>
                    Export</button>
            </form>
        </div>
    </div>
</div> --}}

<div class="col-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Transaksi Keluar</h3>
        </div>
        <div class="card-body">
            <table id="table-tk" class="table table-hover table-striped w-full">
                <thead>
                    <tr>
                        <th>No</th>
                        <!-- <th>Barang ID</th> -->
                        <th>Nama Barang</th>
                        <th>Jumlah</th>
                        <th>Nama User</th>
                        <th>Bagian</th>
                        <th>No Permintaan</th>
                        <th>Tanggal</th>
                    </tr>
                </thead>

            </table>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Transaksi Masuk</h3>
        </div>
        <div class="card-body">

            <table id="table-tm" class="table table-hover table-striped w-full">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Barang</th>
                        <th>Jumlah</th>
                        <th>No Transaksi</th>
                        <th>Tanggal </th>
                    </tr>
                </thead>

            </table>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>
@endsection
@push('page-script')
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $('#export-by-item').submit(function (event) {
        // alert('ss');
        event.preventDefault();
        var formData = $(this).serialize();
        $.ajax({
            url: '{{route('riwayat_transaksi.filter_data_barang') }}?' + formData,
            type: 'GET',
            xhrFields: {
                responseType: 'blob'
            },
            success: function (response) {
                var file = new Blob([response], {
                    type: 'application/pdf'
                });
                var fileURL = URL.createObjectURL(file);
                window.open(fileURL);
            }
        });
    });
    $(document).ready(function(){
        //get data from datatables
        var table = $('#table-tk').DataTable({
            processing: true,
            serverSide: true,
            destroy: true,
            ajax: {
                url: "{{ route('riwayat_transaksi.getdatatables_tk') }}",
                type: "POST",
                'X-CSRF-TOKEN': '{{csrf_token()}}'
            },
            order: [
                [1, 'desc']
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
                    data: 'jumlah',
                    name: 'jumlah'
                },
                {
                    data: 'nama',
                    name: 'nama'
                },
                {
                    data: 'bagian',
                    name: 'bagian'
                },
                {
                    data: 'no_trans',
                    name: 'no_trans'
                },
                {
                    data: 'tanggal',
                    name: 'tanggal'
                },
                // {
                //     data: 'action',
                //     name: 'action'
                // }
            ]
        });
    });
    $(document).ready(function(){
        //get data from datatables
        var table = $('#table-tm').DataTable({
            processing: true,
            serverSide: true,
            destroy: true,
            ajax: {
                url: "{{ route('riwayat_transaksi.getdatatables_tm') }}",
                type: "POST",
                'X-CSRF-TOKEN': '{{csrf_token()}}'
            },
            order: [
                [3, 'desc']
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
                    data: 'jumlah',
                    name: 'jumlah'
                },
                {
                    data: 'no_transaksi',
                    name: 'no_transaksi'
                },
                {
                    data: 'tanggal',
                    name: 'tanggal'
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
