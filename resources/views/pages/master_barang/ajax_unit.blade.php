<script>
    $(document).on('click', '#addModalUnits', function (e) {
        // alert('ok');
        e.preventDefault();
        $('#addModalUnit').modal('show');
        $('.modal-title').text('Input Master Unit');
    });
    
//  INSERT VIA AJAX 
$('.modal-footer').on('click', '.saveUnit', function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    var unit = $('#unit_create').val();
    var jumlah = $('#jumlah_create').val();
    //chek lemparan data ke database apakah ada atau tidak



    if (unit != '') {
        if (jumlah != '') {
            // alert(tipe)
            checkDataUnit(unit);
        }else{
            Swal.fire({
            icon: 'warning',
            title: 'Error',
            text: 'Jumlah Tidak Boleh Kosong!!!'
            });
        }
    } else {
        Swal.fire({
            icon: 'warning',
            title: 'Error',
            text: 'Unit Tidak Boleh Kosong!!!'
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

function checkDataUnit(unit) {
    // alert(unit)
    cek = unit;
    // alert(cek)
    var route = "{{ route('master_unit_brg.check', ':id') }}";
    route = route.replace(':id', unit);
    $.ajax({
        url: route,
        type: "POST",
        success: function (response) {
            var cek_unit = response.errors;
            if (cek_unit == 0) {
                $.ajax({
                    url: "{{ route('master_unit_brg.store') }}",
                    type: "POST",
                    data: $('#form-unit').serialize(),
                    dataType: 'json',
                    success: function (data) {
                        if ($.isEmptyObject(data.error)) {
                            if (data.checkdata) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: data.errors
                                });
                                // clear_value_store_stout();
                                // clear_table_when_input_data_same();
                            } else {
                                // clear_value_store_stout();
                                Swal.fire(
                                    'Sukses!',
                                    'Menambahkan Unit!',
                                    'success'
                                ).then(function () {
                                    $("#unit_create").val('');
                                    $("#jumlah_create").val('');
                                    $('#addModalUnit').modal('hide');
                                    $('#unit_datatables').DataTable().ajax.reload();
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
                    'Unit Sudah Ada!',
                    'error'
                ).then(function () {
                    $("#unit_create").val('');
                    $("#jumlah_create").val('');
                    $("#unit_create").focus();
                    
                })
            }

        },
        error: function (data) {
            console.log(data);
        }
    });

}

// VOID UNIT
$(document).on('click', '.voidUnit', function (e) {
    e.preventDefault();
    var id = $(this).attr('row-id');
    var unit = $(this).attr('data-id');

    $('.modal-title').html('Tipe (VOID)')
    $('.unit_barang_void').val(unit);
    $('#voidUnitModal').modal('show');
    voidTipe(unit)
})
// FUNCTION VOID UNIT
function voidTipe(unit) {
    $('.modal-footer').on('click', '.submit_unitvoid', function () {
        $('.submit_tipevoid').html('Saving...');
        var route = "{{ route('master_unit_brg.void', ':id') }}";
        route = route.replace(':id', unit);
        $.ajax({
            url: route,
            type: "POST",
            data: $('#form_unit_void').serialize(),
            success: function (data) {
                console.log(data)
                $('#voidUnitModal').modal('hide');
                Swal.fire(
                    'Void!',
                    'Data Berhasil divoid',
                    'success'
                ).then(function () {
                    $('#unit_datatables').DataTable().ajax.reload();
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
$(document).on('click','.logUnit', function(e){
        e.preventDefault();
        var unit = $(this).attr('data-id');
        $('#logmodalUnit').modal('show');
        $('.modal-title').text('Log View Unit');

        var route = "{{ route('master_unit_brg.log', ':id') }}";
            route = route.replace(':id', unit);

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
                $('#unit_logs_detail').DataTable().clear().destroy();
                $('#unit_logs_detail').DataTable({
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
    



    
</script>
