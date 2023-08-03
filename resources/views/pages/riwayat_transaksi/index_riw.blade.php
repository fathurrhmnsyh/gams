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
