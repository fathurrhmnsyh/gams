<script >
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

$(document).on('click', '#addModalBarang', function () {
    // e.preventDefault();
    $('#addBarangMasuk').modal('show');
    $('.modal-title').text('Tambah Stok Barang');

    var route = '{{ route("transaksi_barang_masuk.auto_trans_masuk") }}';
    $.get(route, function (data) {
        document.getElementById('no_transaksi').value = data;
        // $('#setdate').focus();
    });
})

$(document).ready(function () {
    $('#addRow').click(function () {
        var tanggal = document.getElementById('tanggal').value;
        var no_transaksi = document.getElementById('no_transaksi').value;
        var keterangan = document.getElementById('keterangan').value;
        if (keterangan != '') {
            if (no_transaksi != '') {
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
                    '<input type="text" name="no[] " id="" value="' + jml_row + '"  class="form-control form-control-sm" readonly>',
                    // '<input type="text" name="barang[] " id="'+barang+'" onkeydown="keyPressedItem(event)" placeholder="ENTER" class="form-control form-control-sm">',
                    '<div class="input-group">' +
                    '<input type="text" value="" placeholder="Cari barang dengan menekan icon kaca pembesar" autocomplete="off"' +
                    'id="' + barang + '"  name="barang[]" required  class="form-control form-control-sm barang" readonly>' +
                    '<span class="input-group-btn">' +
                    '<button type="button" id="btnPopUpBarang"  data-row=' + jml_row + '  data-id=' + jml_row + ' class="btn btn-info">' +
                    '<i class="fas fa-search"></i>' +
                    '</button>' +
                    '</span>' +
                    '</div>',
                    '<input type="text"  name="kategori[]"  id="' + kategori + '" class="form-control form-control-sm" readonly>',
                    '<input type="text"  name="unit[]"  id="' + unit + '" class="form-control form-control-sm" readonly>',
                    '<input type="number"  name="jumlah[]" onchange="autoFillKali(' + jml_row + ')"  id="' + jumlah + '" class="form-control form-control-sm">',
                    '<input type="number"  name="jml_per_unit[]"  id="' + jml_per_unit + '" class="form-control form-control-sm" readonly>',
                    '<input type="number"  name="total[]"  id="' + total + '" class="form-control form-control-sm" readonly>',
                    '<a href="#" class="btn btn-danger destroy2"><i class=" fa fa-trash remove"></i></a>',
                ]).draw();
            } else {
                Swal.fire({
                    icon: 'error',
                    title: 'Error...',
                    text: 'No Transaksi Tidak Boleh Kosong',
                }).then(function () {
                    setTimeout(() => $("#no_transaksi").focus(), 500)
                });
            }
        } else {
            Swal.fire({
                icon: 'error',
                title: 'Error...',
                text: 'Keterangan Tidak Boleh Kosong',
            }).then(function () {
                setTimeout(() => $("#tanggal").focus(), 500)
            });

        }




    });
});

$(document).on('click', '#btnPopUpBarang', function () {
    let row = $(this).data('row');
    $('#itemModal').modal('show');
    $('#row-clicked').val(row);
})

$('#btnPopUpBarang').on('hide.bs.modal', function () {
    $('#row-clicked').val('');
});

// DELETE ROW IN ADD ITEM 
$(document).on('click', '.destroy2', function () {
    var table = $('#tbl-st-in').DataTable();
    $('#tbl-st-in tbody').on('click', 'tr', function () {
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

//  INSERT VIA AJAX 
$('.modal-footer').on('click', '.saveStin', function () {
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
                    url: "{{ route('transaksi_barang_masuk.store_data_barang') }}",
                    type: "POST",
                    data: $('#form-ip').serialize(),
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
                                clear_value_store();
                                Swal.fire(
                                    'Successfully!',
                                    'Menambahkan Data Barang!',
                                    'success'
                                ).then(function () {
                                    $('#addBarangMasuk').modal('hide');
                                    $('#stok_barang_datatables').DataTable().ajax.reload();
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


    // $(document).on('click', '#stin_trans', function () {
    //     var st_choice = $('#tbl-st-in').DataTable();
    //         var convrtArr = st_choice.rows().data().toArray();
    //         var length = convrtArr.length;
    //         // console.log(length);
    //         // console.log(convrtArr);
    //         var id = 0;
    //         var count = 0;
    //         var nu = 0;

    //         for (i = 0; i < length; i++) {
    //             var inval_qty = st_choice.rows({}).cell(i, 2).nodes().to$().find('input').val();
    //             var inval_brg_name = st_choice.rows({}).cell(i, 1).nodes().to$().find('input').val();

    //             var data_input =  [ inval_brg_name,inval_qty];

    //             var route = "";
    //             // route = route.replace(':id', ip_no);
    //             $.ajax({
    //                     type : "POST",  //type of method
    //                     url  : route,  //your page
    //                     dataType: 'json',
    //                     data : {data_input },// passing the values
    //                     headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
    //                     success: function(data){  
    //                         $('#stin_trans').html('Saving...')           
    //                     }
    //                 });

    //             console.log(data_input)
    //         }


    // });

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

function clear_value_store() {
    // $('#date1').val("");
    $('#no_transaksi').val("");
    // $('#name').val("");
    $('#keterangan').val("");
    var table = $('#tbl-st-in').DataTable();
    table.rows().remove().draw();

}

function clear_value_create_page() {
    // $('#date1').val("");
    $('#no_transaksi').val("");
    // $('#name').val("");
    $('#keterangan').val("");
    var table = $('#tbl-st-in').DataTable();
    table.rows().remove().draw();

}

function autoFillKali(jml_row) {
    let jml_per_unit = $('#jml_per_unit' + jml_row).val();
    let jumlah = $('#jumlah' + jml_row).val();
    let total = jml_per_unit * jumlah;
    $('#total' + jml_row).val(total)
    // $('#amt_ppat'+jml_row).val(jumlahKali)
    // $('#balance' + jml_row).val(rupiah(jumlahKali))
    // $('#total_create').val(jumlahKali)
    // result()

    // total()

}




</script>
