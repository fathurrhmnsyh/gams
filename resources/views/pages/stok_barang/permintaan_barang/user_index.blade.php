@extends('layouts.admin')
@section('title', 'Permintaan Barang / ATK | GAMS')
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
                    <h3 class="card-title">Riwayat Permintaan ATK</h3>
                </div>
                <div class="card-body">

                    <div class="card-body table-responsive">
                        <button type="button" class="btn btn-primary mb-3" id="addPermAtk"><i class="fa fa-plus" ></i> Buat Permintaan ATK</button>
                        <table class="table table-hover w-full " id="perm_barang_datatables" >
                            <thead style="background-color: #0069D9; color: #fff;">
                                <tr class="text-center" >
                                    <th style="width: 5%">No</th>
                                    <th style="width: 10%">No Permintaan</th>
                                    <th style="width: 10%">Tanggal</th>
                                    {{-- <th style="width: 20%">User</th>
                                    <th style="width: 10%">Bagian</th> --}}
                                    <th style="width: 50%">Keterangan</th>
                                    <th style="width: 5%">Total Barang</th>
                                    <th style="width: 55%">Tanggal Posted</th>
                                    {{-- <th style="width: 5%">Jumlah</th> --}}
                                    <th style="width: 5%">Status</th>
                                    {{-- <th style="width: 20%">Jumlah</th> --}}
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


@include('pages.stok_barang.permintaan_barang.modal._create')
@include('pages.stok_barang.permintaan_barang.modal.modal_barang')
@include('pages.stok_barang.permintaan_barang.modal.view._view')
@include('pages.stok_barang.permintaan_barang.modal.popup._unpost')
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
        var table = $('#perm_barang_datatables').DataTable({
            processing: true,
            serverSide: true,
            destroy: true,
            ajax: {
                url: "{{ route('transaksi_barang_keluar.getdatatables') }}",
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
                    data: 'no_permintaan',
                    name: 'no_permintaan'
                },
                {
                    data: 'tanggal',
                    name: 'tanggal'
                },
                // {
                //     data: 'nama',
                //     name: 'nama'
                // },
                // {
                //     data: 'bagian',
                //     name: 'bagian'
                // },
                {
                    data: 'keterangan',
                    name: 'keterangan'
                },
                {
                    data: 'total',
                    name: 'total'
                },
                {
                    data: 'posted_date',
                    name: 'posted_date'
                },
                {
                    data: 'apv_spv',
                    name: 'apv_spv'
                },
                {
                    data: 'aksi',
                    name: 'aksi'
                }
            ]
        });
    });
     $(document).ready(function(){
        $("#addPermAtk").click(function(){
            $("#modalPermAtk").modal('show');

            var route ='{{ route("transaksi_barang_keluar.auto_number_perm") }}';
            $.get(route, function (data) {
                document.getElementById('no_perm_create').value = data;
                    // $('#setdate').focus();
            });
        });
    });
    //ADD ROW 
$(document).ready(function () {
    $('#addRow1').click(function () {
        var tanggal = document.getElementById('tanggal_create').value;
        var no_perm = document.getElementById('no_perm_create').value;
        var nama = document.getElementById('nama_create').value;
        var bagian = document.getElementById('bagian_create').value;
        var keterangan = document.getElementById('keterangan_create').value;
       
        var t = $('#tbl-perm_brg').DataTable();
        var counter = t.rows().count();
        var jml_row = Number(counter) + 1;

        document.getElementById('jml_row').value = jml_row;

        var barang = "barang" + jml_row;
        var kategori = "kategori" + jml_row;
        var unit = "unit" + jml_row;
        var jumlah = "jumlah" + jml_row;
        var jml_per_unit = "jml_per_unit" + jml_row;
        var total = "total" + jml_row;

        if (keterangan != '') {
                t.row.add([
                '<input type="text" name="no[] " id="" value="' + jml_row + '"  class="form-control form-control-sm" readonly>',
                // '<input type="text" name="barang[] " id="'+barang+'" onkeydown="keyPressedItem(event)" placeholder="ENTER" class="form-control form-control-sm">',
                '<div class="input-group">' +
                '<input type="text" value="" placeholder="Cari barang dengan menekan icon kaca pembesar" autocomplete="off"' +
                'id="' + barang + '"  name="barang[]" required  class="form-control form-control-sm barang" readonly>' +
                '<span class="input-group-btn">' +
                '<button type="button" id="btnPopUpBarang1"  data-row=' + jml_row + '  data-id=' + jml_row + ' class="btn btn-info">' +
                '<i class="fas fa-search"></i>' +
                '</button>' +
                '</span>' +
                '</div>',
                '<input type="text"  name="kategori[]"  id="' + kategori + '" class="form-control form-control-sm" readonly>',
                // '<input type="text"  name="unit[]"  id="' + unit + '" class="form-control form-control-sm" readonly>',
                '<input type="number"  name="jumlah[]" id="' + jumlah + '" class="form-control form-control-sm">',
                // '<input type="number"  name="jml_per_unit[]"  id="' + jml_per_unit + '" class="form-control form-control-sm" readonly>',
                // '<input type="number"  name="total[]"  id="' + total + '" class="form-control form-control-sm" readonly>',
                '<a href="#" class="btn btn-danger destroy3"><i class=" fa fa-trash remove"></i></a>',
            ]).draw();
        }else {
            Swal.fire({
                icon: 'error',
                title: 'Error...',
                text: 'Keterangan Tidak Boleh Kosong',
            }).then(function () {
                setTimeout(() => $("#keterangan_create").focus(), 500)
            });

        }
    });
});

$(document).on('click', '#btnPopUpBarang1', function () {
    let row = $(this).data('row');
    $('#itemModal').modal('show');
    $('#row-clicked').val(row);
})

$('#btnPopUpBarang').on('hide.bs.modal', function () {
    $('#row-clicked').val('');
});
//AMBIL BARANG
var url_select_item = "{{ route('transaksi_barang_keluar.get_data_barang1') }}";
    var lookUpdataItem1 = $('#lookUpdataItem1').DataTable({
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
            $('#lookUpdataItem1 tbody').on('dblclick', 'tr', function () {
                var dataArr = [];
                var rows = $(this);
                var rowData = lookUpdataItem1.rows(rows).data();
                let row_click = document.getElementById('row-clicked').value;
                $.each($(rowData), function (key,value){
                    // var barang_nameX = value["barang_name"];
                    // document.getElementById("barang_name" + row_click);
                    var nama_barang = document.getElementById("barang" + row_click).value = value["nama_barang"];
                    var kategori_barang = document.getElementById("kategori" + row_click).value = value["kategori_barang"];
                    // var unit_barang = document.getElementById("unit" + row_click).value = value["unit_barang"];
                    // var jml_per_unit = document.getElementById("jml_per_unit" + row_click).value = value["jml_per_unit"];
                    $('#itemModal').modal('hide');

                });
            });
        },

    });


//  INSERT VIA AJAX 
$('.modal-footer').on('click', '.saveStout', function () {
   
    var tbl = $('#tbl-perm_brg').DataTable();
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
                    url: "{{ route('transaksi_barang_keluar.store_data_barang') }}",
                    type: "POST",
                    data: $('#form-stout').serialize(),
                    dataType: 'json',
                    success: function (data) {
                        if ($.isEmptyObject(data.error)) {
                            if (data.checkdata) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: data.errors
                                });
                                clear_value_store();
                                // clear_table_when_input_data_same();
                            } else {
                                // $('.saveStin').html('Saving...')
                                clear_value_store_perm();
                                Swal.fire(
                                    'Successfully!',
                                    'Input Barang Keluar!',
                                    'success'
                                ).then(function () {
                                    $('#modalPermAtk').modal('hide');
                                    $('#perm_barang_datatables').DataTable().ajax.reload();
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
        $.each(msg, function (key, value) {
            $('.print-error-msg').find('ul').append(
                '<li style="font-size: 15px"><i class="fa fa-exclamation-circle"></i> ' +
                value + '</ul>');
        });
    }
})

// DELETE ROW IN ADD ITEM 
$(document).on('click', '.destroy3', function () {
    var table = $('#tbl-perm_brg').DataTable();
    $('#tbl-perm_brg tbody').on('click', 'tr', function () {
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
function clear_value_store_perm() {
    // $('#date1').val("");
    $('#no_transaksi').val("");
    // $('#name').val("");
    $('#keterangan_create').val("");
    var table = $('#tbl-perm_brg').DataTable();
    table.rows().remove().draw();

}

// SHOW VIEW DATA MASTER ASSET
$(document).on('click', '.view', function (e) {
    e.preventDefault();
    var id = $(this).attr('row-id');
    $('#viewModal').modal('show');
    $('.modal-title').text('Permintaan Barang / ATK (View)');
    getDetail(id, 'VIEW')
});

// VIEW DATA SHOW DETAIL FROM AJAX
function getDetail(id, method) {
    var route = "{{ route('transaksi_barang_keluar.show_view_detail', ':id') }}";
    route = route.replace(':id', id);
    
    $.ajax({
        url: route,
        method: 'get',
        dataType: 'json',
        success: function (data) {
            $('#tanggal_view').val(data['header'].tanggal);
            $('#no_perm_view').val(data['header'].no_permintaan);
            $('#nama_view').val(data['header'].nama);
            $('#bagian_view').val(data['header'].bagian);
            $('#keterangan_view').val(data['header'].keterangan);
            
            var detailDataset = [];
            for (var i = 0; i < data['detail'].length; i++) {
                detailDataset.push([
                    data['detail'][i].nu,
                    data['detail'][i].nama_barang,
                    data['detail'][i].jumlah,
                ]);
            }

        //    alert(data_id);
        //    alert($get_ipno);
            $('#tbl-perm_brg_view').DataTable().clear().destroy();
            $('#tbl-perm_brg_view').DataTable({
                "paging": false,
                data: detailDataset,
                columns: [
                    {
                        title: '#',
                        name: 'no',
                        render: function (data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    {
                        title: 'Nama Barang'
                    },
                    {
                        title: 'Jumlah'
                    },
                    
                    
                ]
            });
            
        }
    });
}

// KLIK POSTED DATA 
$(document).on('click', '.posted', function(e){
e.preventDefault();
    var id = $(this).attr('row-id');
//  var ttf_no = $(this).attr('data-id');
    var posted_date = $(this).attr('data-target');
    // alert(posted_date);
    if(posted_date !== ''){
        $('#ModalUnpostPerm').modal('show');
        $('.modal-title').text('Permintaan Barang (UN-POST)')
        unpostTtf(ttf_no);
    } else {
    posted(id)
    }
});

//POSTED DATA
function posted(id){
    Swal.fire({
        title: 'Anda Yakin ingin Post?',
        text: "data " ,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Ya, Post ini!'
    }).
    then((willPosted) => {
        var route  = "{{ route('transaksi_barang_keluar.posted_perm', ':id') }}";
        route  = route.replace(':id', id);
        if(willPosted.value){
            $.ajax({
                url: route,
                type: "POST",
                data : {
                    '_method' : 'POST'
                },
                success: function(data){
                    Swal.fire(
                        'Succesfully!',
                        'Data Berhasil dipost.',
                        'success'
                        ).then(function(){
                            $('#perm_barang_datatables').DataTable().ajax.reload();
                        });

                    },
                    error: function(){
                        Swal.fire({
                            icon: 'error',
                            title: 'Error...',
                            text: 'Error Hub bagian IT!',
                        })
                    }
                })
        } else {
            console.log(`data was dismissed by ${willPosted.dismiss}`);
        }


    })
}



</script>



@endpush
