<script>
    $(document).on('click', '#addModaltipe', function(e) {
        // alert('ok');
        e.preventDefault();
        $('#createModalTipe').modal('show');
        $('.modal-title').text('Input Master Kategori');
    });
    //  INSERT VIA AJAX 
    $('.modal-footer').on('click', '.saveTipe', function() {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        var tipe = $('#tipe_create').val();
        //chek lemparan data ke database apakah ada atau tidak



        if (tipe != '') {
            // alert(tipe)
            checkDatas(tipe);


        } else {
            Swal.fire({
                icon: 'warning',
                title: 'Error',
                text: 'Tipe Tidak Boleh Kosong!!!'
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

    function checkDatas(tipe) {
        // alert(tipe)
        cek = tipe;
        // alert(cek)
        var route = "{{ route('master_tipe_brg.check', ':id') }}";
        route = route.replace(':id', tipe);
        $.ajax({
            url: route,
            type: "POST",
            success: function(response) {
                var cek_tipe = response.errors;
                if (cek_tipe == 0) {
                    $.ajax({
                        url: "{{ route('master_tipe_brg.store') }}",
                        type: "POST",
                        data: $('#form-tipe').serialize(),
                        dataType: 'json',
                        success: function(data) {
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
                                        'Menambahkan Tipe!',
                                        'success'
                                    ).then(function() {
                                        $("#tipe_create").val('');
                                        $('#createModalTipe').modal('hide');
                                        $('#tipe_datatables').DataTable().ajax.reload();
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
                        'Tipe Sudah Ada!',
                        'error'
                    ).then(function() {
                        $("#tipe_create").val('');
                        $("#tipe_create").focus();
                    })
                }

            },
            error: function(data) {
                console.log(data);
            }
        });

    }

    // VOID TIPE
    $(document).on('click', '.void_tipe', function(e) {
        e.preventDefault();
        var id = $(this).attr('row-id');
        var tipe = $(this).attr('data-id');
        var tipe_barang = $(this).attr('data-id');

        $('.modal-title').html('Tipe (VOID)')
        $('.tipe_barang_void').val(tipe);
        $('#voidTipeModal').modal('show');
        voidTipes(tipe_barang)
    })
    // FUNCTION VOID TIPE
    function voidTipes(tipe_barang) {
        $('.modal-footer').on('click', '.submit_tipevoids', function() {
            // alert(tipe_barang)
            $('.submit_tipevoids').html('Saving...');
            var route = "{{ route('master_tipe_brg.void', ':id') }}";
            route = route.replace(':id', tipe_barang);
            $.ajax({
                url: route,
                type: "POST",
                data: $('#form_tipe_void').serialize(),
                success: function(data) {
                    // console.log(data)
                    $('#voidTipeModal').modal('hide');
                    Swal.fire(
                        'Void!',
                        'Data Berhasil divoid',
                        'success'
                    ).then(function() {
                        $('#tipe_datatables').DataTable().ajax.reload();
                    });
                },
                error: function() {
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
    $(document).on('click', '.log_tipe', function(e) {
        e.preventDefault();
        var tipe_barang = $(this).attr('data-id');
        $('#logmodalTipe').modal('show');
        $('.modal-title').text('Log View Tipe');

        var route = "{{ route('master_tipe_brg.log', ':id') }}";
        route = route.replace(':id', tipe_barang);

        $.ajax({
            url: route,
            method: 'get',
            dataType: 'json',
            success: function(data) {
                var detailDataset = [];
                for (var i = 0; i < data.length; i++) {
                    detailDataset.push([
                        formatDate(data[i].date), data[i].time, data[i].status_change,
                        data[i].user, data[i].note
                    ]);
                }
                $('#tipe_logs_detail').DataTable().clear().destroy();
                $('#tipe_logs_detail').DataTable({
                    data: detailDataset,
                    // "ordering" : true,
                    "order": [
                        [0, "desc"],
                        [1, "desc"]
                    ],
                    columns: [{
                            title: 'Date'
                        },
                        {
                            title: 'Time'
                        },
                        {
                            title: 'Status'
                        },
                        {
                            title: 'User'
                        },
                        {
                            title: 'Note'
                        }
                    ]
                });
            },
            error: function() {
                alert('error');
            }
        })
    });

    function formatDate(input) {
        if (input !== null) {
            var datePart = input.match(/\d+/g),
                year = datePart[0].substring(0),
                month = datePart[1],
                day = datePart[2];
            return day + '/' + month + '/' + year;
        } else {
            return null;
        }
    }
</script>
