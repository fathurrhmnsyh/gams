@extends('layouts.admin')
@section('title', 'Laporan Transaksi | GAMS')
@section('title-sub', 'Laporan Transaksi')
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
            <p>Export Report Transaksi</p>
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
    <div class="card">
        <div class="card-body">
            <p>Export Report Transaksi FILE</p>
            <form id="export-file" class="form-inline">
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
                        {{-- <option value="pdf" selected>PDF</option> --}}
                        <option value="excel">Excel</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-sm btn-primary mb-2 exportData"><i class="fa fa-save"></i>
                    Export</button>
            </form>
        </div>
    </div>
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
            url: '{{route('laporan_transaksi.filter_data_barang') }}?' + formData,
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
    
    $(document).ready(function () {
        $('#export-file').submit(function (event) {
            event.preventDefault();
            var formData = $(this).serialize();
            downloadExcelReport(formData);
        });

        function downloadExcelReport(formData) {
            $.ajax({
                url: "{{ route('laporan_transaksi.export_excel') }}",
                method: "GET",
                data: formData,
                xhrFields: {
                    responseType: 'blob'
                },
                success: function (response, status, xhr) {
                    var blob = new Blob([response]);
                    var link = document.createElement('a');
                    link.href = window.URL.createObjectURL(blob);
                    link.download = 'transaction_report.xlsx';
                    link.click();
                },
                error: function (xhr, status, error) {
                    console.log(xhr.responseText);
                }
            });
        }
    });
    

    
    

</script>
    

@endpush
