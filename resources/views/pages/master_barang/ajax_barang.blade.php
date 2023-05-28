<script>
    $(document).on('click', '#addModalBarang', function (e) {
        // alert('ok');
        e.preventDefault();
        $('#createModalBarang').modal('show');
        $('.modal-title').text('Input Master Barang');
    });

    //  INSERT VIA AJAX 
$('.modal-footer').on('click', '.saveBarang', function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    var nama_barang = $('#nama_barang_create').val();
    var kategori_barang = $('#kategori_barang_create').val();
    var unit_barang = $('#unit_barang_create').val();
    //chek lemparan data ke database apakah ada atau tidak



    if (nama_barang != '') {
        if (kategori_barang != '') {
            if (unit_barang != '') {
                // alert(tipe)
                 checkDatabarang(nama_barang);
            }else{
                Swal.fire({
                icon: 'warning',
                title: 'Error',
                text: 'Unit Barang Tidak Boleh Kosong!!!'
                });
            }
            
        }else{
            Swal.fire({
            icon: 'warning',
            title: 'Error',
            text: 'Kategori Barang Tidak Boleh Kosong!!!'
            });
        }
    } else {
        Swal.fire({
            icon: 'warning',
            title: 'Error',
            text: 'Nama Barang Tidak Boleh Kosong!!!'
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



function checkDatabarang(nama_barang) {
    // alert(nama_barang)
    var route = "{{ route('master_brg.check', ':id') }}";
    route = route.replace(':id', nama_barang);
    $.ajax({
        url: route,
        type: "POST",
        success: function (response) {
            var cek = response.errors;
            if (cek == 2) {
                $.ajax({
                    url: "{{ route('master_brg.store') }}",
                    type: "POST",
                    data: $('#form-barangg').serialize(),
                    dataType: 'json',
                    success: function (data) {
                        // alert('OK');
                        if ($.isEmptyObject(data.error)) {
                            if (data.checkdata) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: data.errors
                                });
                            } else {
                                Swal.fire(
                                    'Sukses!',
                                    'Menambahkan Barang!',
                                    'success'
                                ).then(function () {
                                    $("#nama_barang_create").val('');
                                    $('#kategori_barang_create').select2('val', '-')
                                    $('#unit_barang_create').select2('val', '-')
                                    // $("#kategori_barang_create").val('');
                                    // $("#unit_barang_create").val('');
                                    $('#createModalBarang').modal('hide');
                                    $('#barang_datatables').DataTable().ajax.reload();
                                    $('#stok_barang_datatables').DataTable().ajax.reload();
                                })
                            }
                        } else {
                            printErrorMsg(data.error)
                        }

                    }
                })
            } else {
                Swal.fire(
                    'Error!',
                    'Barang Sudah Ada!',
                    'error'
                ).then(function () {
                    $("#nama_barang_create").val('');
                    $("#kategori_barang_create").val('');
                    $("#unit_barang_create").val('');
                    
                })
            }

        },
        error: function (data) {
            console.log(data);
        }
    });

}

// VOID BARANG
$(document).on('click', '.voidBarang', function (e) {
    e.preventDefault();
    var id = $(this).attr('row-id');
    var barang = $(this).attr('data-id');

    $('.modal-title').html('Barang (VOID)')
    $('.nama_barang_void').val(barang);
    $('#voidBarangModal').modal('show');
    voidbarang(barang)
})

// FUNCTION VOID UNIT
function voidbarang(barang) {
    $('.modal-footer').on('click', '.submit_barangvoid', function () {
        $('.submit_barangvoid').html('Saving...');
        var route = "{{ route('master_brg.void', ':id') }}";
        route = route.replace(':id', barang);
        $.ajax({
            url: route,
            type: "POST",
            data: $('#form_barang_void').serialize(),
            success: function (data) {
                console.log(data)
                $('#voidBarangModal').modal('hide');
                Swal.fire(
                    'Void!',
                    'Data Berhasil divoid',
                    'success'
                ).then(function () {
                    $('#barang_datatables').DataTable().ajax.reload();
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

// FUNCTION LOG ACTIVITY
$(document).on('click','.logBarang', function(e){
        e.preventDefault();
        var barang = $(this).attr('data-id');
        // alert(barang);
        $('#logmodalBrang').modal('show');
        $('.modal-title').text('Log View Barang');

        var route = "{{ route('master_brg.log', ':id') }}";
            route = route.replace(':id', barang);

        $.ajax({
            url: route,
            method: 'get',
            dataType: 'json',
            success: function(data){
                var detailDataset = [];
                for(var i =0; i < data.length; i++){
                    detailDataset.push([
                        formatDate(data[i].date), data[i].time, data[i].status_change,
                        data[i].user, data[i].note
                    ]);
                }
                $('#barang_logs_detail').DataTable().clear().destroy();
                $('#barang_logs_detail').DataTable({
                    data: detailDataset,
                    // "ordering" : true,
                    "order": [
                        [0, "desc"],
                        [1, "desc"] 
                    ],
                    columns: [
                        { title: 'Date' },
                        { title: 'Time' },
                        { title: 'Status' },
                        { title: 'User' },
                        { title: 'Note' }
                    ]
                });
            },
            error: function(){
                alert('error');
            }
        })
    });
    function formatDate (input) {
        if (input !== null) {
            var datePart = input.match(/\d+/g),
                year = datePart[0].substring(0),
                month = datePart[1], day = datePart[2];
            return day+'/'+month+'/'+year;
        } else {
            return null;
        }
    }

    $(document).on('click','.refreshDBkategori', function(e) {
        // Membuat permintaan AJAX ke server dan memperbarui opsi pada select option
        $.ajax({
            url: "{{ route('master_brg.get_kategori_barang_so') }}",
            method: 'POST',
            success: function(data) {
                // Mengupdate opsi pada select option dengan data yang diterima dari server
                $('#kategori_barang_create').html(data);
            }
        });
    });
    $(document).on('click','.refreshDBkategori', function(e) {
        // Membuat permintaan AJAX ke server dan memperbarui opsi pada select option
        $.ajax({
            url: "{{ route('master_brg.get_unit_barang_so') }}",
            method: 'POST',
            success: function(data) {
                // Mengupdate opsi pada select option dengan data yang diterima dari server
                $('#unit_barang_create').html(data);
            }
        });
    });
</script>
