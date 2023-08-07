@extends('layouts.user')
@section('title', 'Ambil ATK | GAMS')
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
                        <h3 class="card-title">Riwayat Pengambilan ATK</h3>
                    </div>
                    <div class="card-body">

                        <div class="card-body table-responsive">
                            <button type="button" class="btn btn-primary mb-3" id="modalCreate"><i class="fa fa-plus"></i>
                                Ambil Barang</button>
                            <table class="table table-hover w-full " id="trans_barang_datatables">
                                <thead style="background-color: #0069D9; color: #fff;">
                                    <tr class="text-center">
                                        <th style="width: 5%">No</th>
                                        <th style="width: 10%">No Transaksi</th>
                                        <th style="width: 10%">Tanggal</th>
                                        <th style="width: 10%">Nama</th>
                                        <th style="width: 10%">Bagian</th>
                                        {{-- <th style="width: 20%">Keterangan</th> --}}
                                        <th style="width: 20%">Nama Barang</th>
                                        <th style="width: 20%">Kategori</th>
                                        {{-- <th style="width: 20%">unit</th> --}}
                                        <th style="width: 15%">Jumlah</th>
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
@include('pages.ambil_barang.modal.create')
@include('pages.ambil_barang.modal.barang')
@include('pages.stok_barang.modal.create.modal_barang')
@push('page-script')
    {{-- @include('pages.stok_barang.ajax_stok') --}}

    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).on('click', '#modalCreate', function() {
            // e.preventDefault();
            $('#addCreate').modal('show');
            $('.modal-title').text('Ambil ATK');

            var route = '{{ route('transaksi_ambil_barang.auto_trans_keluar') }}';
            $.get(route, function(data) {
                document.getElementById('no_transaksi').value = data;
                // $('#setdate').focus();
            });
        })
        $(document).ready(function() {
            //get data from datatables
            var table = $('#trans_barang_datatables').DataTable({
                processing: true,
                serverSide: true,
                destroy: true,
                ajax: {
                    url: "{{ route('transaksi_ambil_barang.get_datatables') }}",
                    type: "POST",
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                order: [
                    [1, 'desc']
                ],
                responsive: true,
                columns: [{
                        title: '#',
                        name: 'no',
                        render: function(data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    {
                        data: 'no_trans',
                        name: 'no_trans'
                    },
                    {
                        data: 'tanggal',
                        name: 'tanggal'
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
                        data: 'nama_barang',
                        name: 'nama_barang'
                    },
                    {
                        data: 'kategori',
                        name: 'kategori'
                    },
                    {
                        data: 'jumlah',
                        name: 'jumlah'
                    },
                    // {
                    //     data: 'action',
                    //     name: 'action'
                    // }
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
                // {
                //     data: 'unit_barang',
                //     name: 'unit_barang'
                // },
                // {
                //     data: 'jml_per_unit',
                //     name: 'jml_per_unit'
                // }

            ],
            "bDestroy": true,
            "initComplete": function(settings, json) {
                // $('div.dataTables_filter input').focus();
                $('#lookUpdataItem tbody').on('dblclick', 'tr', function() {
                    var dataArr = [];
                    var rows = $(this);
                    var rowData = lookUpdataItem.rows(rows).data();
                    let row_click = document.getElementById('row-clicked').value;
                    $.each($(rowData), function(key, value) {
                        // var barang_nameX = value["barang_name"];
                        // document.getElementById("barang_name" + row_click);
                        var nama_barang = document.getElementById("barang" + row_click).value =
                            value["nama_barang"];
                        var kategori_barang = document.getElementById("kategori" + row_click)
                            .value = value["kategori_barang"];
                        // var unit_barang = document.getElementById("unit" + row_click).value = value["unit_barang"];
                        // var jml_per_unit = document.getElementById("jml_per_unit" + row_click).value = value["jml_per_unit"];
                        $('#itemModal').modal('hide');

                    });
                });
            },

        });
        $(document).ready(function() {
            $('#addRow').click(function() {
                var tanggal = document.getElementById('tanggal').value;
                var no_transaksi = document.getElementById('no_transaksi').value;
                var keterangan = document.getElementById('keterangan').value;
                var nik = document.getElementById('nik').value;
                var nama = document.getElementById('nama').value;
                if (nik != '') {
                    if (nama != '') {
                        if (keterangan != '') {
                            var t = $('#tbl-st-in').DataTable();
                            var counter = t.rows().count();
                            var jml_row = Number(counter) + 1;

                            document.getElementById('jml_row').value = jml_row;

                            var barang = "barang" + jml_row;
                            var kategori = "kategori" + jml_row;
                            var unit = "unit" + jml_row;
                            var jumlah = "jumlah" + jml_row;
                            var jml_per_unit = "jml_per_unit" + jml_row;
                            var total = "total" + jml_row;



                            t.row.add([
                                '<input type="text" name="no[] " id="" value="' + jml_row +
                                '"  class="form-control form-control-sm" readonly>',
                                // '<input type="text" name="barang[] " id="'+barang+'" onkeydown="keyPressedItem(event)" placeholder="ENTER" class="form-control form-control-sm">',
                                '<div class="input-group">' +
                                '<input type="text" value="" placeholder="Cari barang dengan menekan icon kaca pembesar" autocomplete="off"' +
                                'id="' + barang +
                                '"  name="barang[]" required  class="form-control form-control-sm barang" readonly>' +
                                '<span class="input-group-btn">' +
                                '<button type="button" id="btnPopUpBarang"  data-row=' + jml_row +
                                '  data-id=' + jml_row + ' class="btn btn-info">' +
                                '<i class="fas fa-search"></i>' +
                                '</button>' +
                                '</span>' +
                                '</div>',
                                '<input type="text"  name="kategori[]"  id="' + kategori +
                                '" class="form-control form-control-sm" readonly>',
                                // '<input type="text"  name="unit[]"  id="' + unit + '" class="form-control form-control-sm" readonly>',
                                '<input type="number"  name="jumlah[]"  id="' + jumlah +
                                '" class="form-control form-control-sm">',
                                // '<input type="number"  name="jml_per_unit[]"  id="' + jml_per_unit + '" class="form-control form-control-sm" readonly>',
                                // '<input type="number"  name="total[]"  id="' + total + '" class="form-control form-control-sm" readonly>',
                                '<a href="#" class="btn btn-danger destroy2"><i class=" fa fa-trash remove"></i></a>',
                            ]).draw();
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error...',
                                text: 'Keterangan Tidak Boleh Kosong',
                            }).then(function() {
                                setTimeout(() => $("#keterangan").focus(), 500)
                            });
                        }

                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error...',
                            text: 'Nama Tidak Boleh Kosong',
                        }).then(function() {
                            setTimeout(() => $("#nama").focus(), 500)
                        });
                    }
                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error...',
                        text: 'NIK Tidak Boleh Kosong',
                    }).then(function() {
                        setTimeout(() => $("#nik").focus(), 500)
                    });

                }




            });
        });

        $(document).on('click', '#btnPopUpBarang', function() {
            let row = $(this).data('row');
            $('#itemModal').modal('show');
            $('#row-clicked').val(row);
        })

        $('#btnPopUpBarang').on('hide.bs.modal', function() {
            $('#row-clicked').val('');
        });

        // DELETE ROW IN ADD ITEM 
        $(document).on('click', '.destroy2', function() {
            var table = $('#tbl-st-in').DataTable();
            $('#tbl-st-in tbody').on('click', 'tr', function() {
                if ($(this).hasClass('selected')) {
                    $(this).removeClass('selected');
                } else {
                    table.$('tr.selected').removeClass('selected');
                    $(this).addClass('selected');
                }
            });
            var index = table.row('.selected').indexes();
            table.row(index).remove().draw(false);
            var jml_row = document.getElementById("jml_row").value.trim();
            jml_row = Number(jml_row) + 1;
            nextRow = table.rows().count() + 1;
        });

        function checkEmp() {
            var nik = document.getElementById('nik').value;

            // Kirim request Ajax ke server
            var xhr = new XMLHttpRequest();
            xhr.open('GET', '/transaksi_ambil_barang/searchEmp?nik=' + nik, true);

            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4) {
                    if (xhr.status === 200) {
                        var response = JSON.parse(xhr.responseText);

                        if (response.nama) {
                            var response = JSON.parse(xhr.responseText);

                            // Mengisi nilai nama-input dengan hasil pencarian
                            var namaInput = document.getElementById('nama');
                            namaInput.value = response.nama;

                            var bagianInput = document.getElementById('bagian');
                            bagianInput.value = response.bagian;
                        } else {
                            // Menampilkan SweetAlert jika data tidak ditemukan
                            Swal.fire({
                                icon: 'error',
                                title: 'Data tidak ditemukan',
                                text: 'Silakan coba lagi dengan NIK lain / Registrasi Terlebih Dahulu',
                            }).then(function() {
                                $('#nik').val("");
                                $('#nama').val("");
                                $('#bagian').val("");
                            });
                        }
                    } else {
                        // Menampilkan SweetAlert jika terjadi kesalahan saat mengambil data
                        Swal.fire({
                            icon: 'error',
                            title: 'Oops...',
                            text: 'Terjadi kesalahan saat mengambil data',
                        });
                    }
                }



            };

            xhr.send();

        }
        //  INSERT VIA AJAX 
        $('.modal-footer').on('click', '.savePermBarang', function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            var tbl = $('#tbl-st-in').DataTable();
            var tbl_arr = tbl.rows().data().toArray();
            var tbl_len = tbl_arr.length;
            var found_barang = 0;
            var found_jumlah = 0;

            var counter = tbl.rows().count();

            for (i = 0; i < tbl_len; i++) {
                var get_row_barang = tbl.rows({}).cell(i, 1).nodes().to$().find('input').val();
                var get_row_jumlah = tbl.rows({}).cell(i, 3).nodes().to$().find('input').val();

                if (get_row_barang == null || get_row_barang == '') {
                    found_barang++;
                    // $('#descript' + found_desc).addClass('alert-danger');
                }
                if (get_row_jumlah == null || get_row_jumlah == '') {
                    found_jumlah++;
                    // $('#quantity' + found_qty).addClass('alert-danger');

                }

            }

            if (counter > 0) {
                if (found_barang == 0) {
                    if (found_jumlah == 0) {
                        $.ajax({
                            url: "{{ route('transaksi_ambil_barang/store_data') }}",
                            type: "POST",
                            data: $('#form-ip').serialize(),
                            dataType: 'json',
                            success: function(data) {
                                if ($.isEmptyObject(data.error)) {
                                    if (data.checkdata) {
                                        Swal.fire({
                                            icon: 'warning',
                                            title: data.errors
                                        });
                                        clear_value_create_page();
                                        // clear_table_when_input_data_same();
                                    } else {
                                        // $('.saveStin').html('Saving...')
                                        clear_value_create_page();
                                        Swal.fire(
                                            'Sukses!',
                                            'Input Pengambilan Barang!',
                                            'success'
                                        ).then(function() {
                                            $('#addCreate').modal('hide');
                                            $('#trans_barang_datatables').DataTable().ajax
                                                .reload();
                                        })
                                    }
                                } else {
                                    //     Swal.fire({
                                    //     icon: 'warning',
                                    //     title: 'Warning',
                                    //     text: 'Perhatikan Inputan Anda! Form Tidak Boleh Ada Yang Kosong',
                                    //   });
                                    printErrorMsg(data.error)
                                }

                            }
                        })

                    } else {
                        Swal.fire({
                            icon: 'warning',
                            title: 'Data Jumlah Kosong!!!'
                        });
                    }
                } else {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Data Barang Kosong!!!'
                    });
                }
            } else {
                Swal.fire({
                    icon: 'warning',
                    title: 'Data Tidak Tersimpan',
                    text: 'Tidak ada data!!!'
                });
            }


            function printErrorMsg(msg) {
                $('.print-error-msg').find('ul').html('');
                $('.print-error-msg').css('display', 'block');
                $('.addStout').html('Save')
                $.each(msg, function(key, value) {
                    $('.print-error-msg').find('ul').append(
                        '<li style="font-size: 15px"><i class="fa fa-exclamation-circle"></i> ' +
                        value + '</ul>');
                });
            }
        })

        function clear_value_create_page() {
            $('#nik').val("");
            $('#nama').val("");
            $('#bagian').val("");
            $('#keterangan').val("");
            var table = $('#tbl-st-in').DataTable();
            table.rows().remove().draw();
        }
        window.setTimeout(function() {
            window.location.reload();
        }, 1500000);
    </script>
@endpush
