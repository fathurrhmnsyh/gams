@extends('layouts.admin')
@section('title', 'Transaksi Barang | GAMS')
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
        <div class="col-md-12">
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Transaksi Barang Masuk</h3>
                </div>
                <div class="card-body">

                    <div class="card-body table-responsive">
                        <button type="button" class="btn btn-primary mb-3" id="addModalBarang"><i
                                class="fa fa-plus"></i> Tambah Barang</button>
                        <table class="table table-hover w-full " id="stok_barang_datatables">
                            <thead style="background-color: #0069D9; color: #fff;">
                                <tr class="text-center">
                                    <th style="width: 5%">No</th>
                                    <th style="width: 10%">No Transaksi</th>
                                    <th style="width: 20%">Keterangan</th>
                                    <th style="width: 10%">Tanggal</th>
                                    <th style="width: 20%">Nama Barang</th>
                                    <th style="width: 20%">Kategori</th>
                                    {{-- <th style="width: 20%">unit</th> --}}
                                    <th style="width: 20%">Jumlah</th>
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


@endsection
@include('pages.stok_barang.modal.create.tambah_stok')
@include('pages.stok_barang.modal.create.modal_barang')
@include('pages.stok_barang.modal.void._void')
@push('page-script')
@include('pages.stok_barang.ajax_stok')

<script>
    $(document).ready(function () {
        //get data from datatables
        var table = $('#stok_barang_datatables').DataTable({
            processing: true,
            serverSide: true,
            destroy: true,
            ajax: {
                url: "{{ route('transaksi_barang_masuk.getdatatables') }}",
                type: "POST",
                'X-CSRF-TOKEN': '{{csrf_token()}}'
            },
            order: [
                [1, 'desc']
            ],
            responsive: true,
            columns: [{
                    title: '#',
                    name: 'no',
                    render: function (data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: 'no_transaksi',
                    name: 'no_transaksi'
                },
                {
                    data: 'keterangan',
                    name: 'keterangan'
                },
                {
                    data: 'tanggal',
                    name: 'tanggal'
                },
                {
                    data: 'nama_barang',
                    name: 'nama_barang'
                },
                {
                    data: 'tipe',
                    name: 'tipe'
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

    //AMBIL BARANG
    var url_select_item = "{{ route('transaksi_barang_masuk.get_data_barang') }}";
    var lookUpdataItem = $('#lookUpdataItem').DataTable({
        "pagingType": "numbers",
        "searching": true,
        processing: true,
        serverSide: true,
        ajax: url_select_item,
        responsive: true,
        paging: true,
        fixedHeader: true,
        "bFilter": false,
        "order": [
            [1, 'asc']
        ],
        columns: [{
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
                data: 'jml_per_unit',
                name: 'jml_per_unit'
            }

        ],
        "bDestroy": true,
        "initComplete": function (settings, json) {
            // $('div.dataTables_filter input').focus();
            $('#lookUpdataItem tbody').on('dblclick', 'tr', function () {
                var dataArr = [];
                var rows = $(this);
                var rowData = lookUpdataItem.rows(rows).data();
                let row_click = document.getElementById('row-clicked').value;
                $.each($(rowData), function (key, value) {
                    // var barang_nameX = value["barang_name"];
                    // document.getElementById("barang_name" + row_click);
                    var nama_barang = document.getElementById("barang" + row_click).value =
                        value["nama_barang"];
                    var kategori_barang = document.getElementById("kategori" + row_click)
                        .value = value["kategori_barang"];
                    var unit_barang = document.getElementById("unit" + row_click).value =
                        value["unit_barang"];
                    var jml_per_unit = document.getElementById("jml_per_unit" + row_click)
                        .value = value["jml_per_unit"];
                    $('#itemModal').modal('hide');

                });
            });
        },

    });

    // VOID UNIT
    $(document).on('click', '.void', function (e) {
        e.preventDefault();
        var no_trans = $(this).attr('row-id');
        var id = $(this).attr('data-id');

        $('.modal-title').html('Barang Masuk (VOID)')
        $('.no_trans_void').val(no_trans);
        $('#barangMasukVoid').modal('show');
        voidBarangMsk(id)
    })
    // FUNCTION VOID UNIT
    function voidBarangMsk(id) {
        $('.modal-footer').on('click', '.submit_BarangMasukvoid', function () {
            $('.submit_BarangMasukvoid').html('Saving...');
            var route = "{{ route('transaksi_barang_masuk.void_barang_masuk', ':id') }}";
            route = route.replace(':id', id);
            $.ajax({
                url: route,
                type: "POST",
                data: $('#form_barang_void').serialize(),
                success: function (data) {
                    console.log(data)
                    $('#barangMasukVoid').modal('hide');
                    Swal.fire(
                        'Void!',
                        'Data Berhasil divoid',
                        'success'
                    ).then(function () {
                        $('#stok_barang_datatables').DataTable().ajax.reload();
                    });
                },
                error: function () {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error..',
                        text: 'Something went wrong!'
                    })
                }
            });
        });
    }

</script>


@endpush
