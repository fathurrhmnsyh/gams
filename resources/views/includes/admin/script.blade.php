<!-- jQuery -->
{{-- <script src="{{url('backend/plugins/jquery/jquery.min.js')}}"></script> --}}
<!-- Bootstrap 4 -->
<script src="{{url('backend/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- DataTables -->
<script src="{{url('backend/dist/script/jquery.dataTables.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{url('backend/dist/js/adminlte.min.js')}}"></script>
<!-- overlayScrollbars -->
<script src="{{url('backend/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{url('backend/dist/js/demo.js')}}"></script>
<!-- Select2 -->
<script src="{{url('backend/plugins/select2/js/select2.full.min.js')}}"></script>
{{-- New --}}
{{-- Seetalert --}}
<script src="{{url('vendor/sweetalert/sweetalert2.all.min.js')}}"></script>

<!-- page script -->
<script>
    $(function () {
        //Initialize Select2 Elements
        $('.select2').select2()

        //Initialize Select2 Elements
        $('.select2bs4').select2({
            theme: 'bootstrap4'
        })
        // $("#example1").DataTable({
        //     "responsive": true,
        //     "autoWidth": false,
        // });
        // $('#example2').DataTable({
        //     "paging": true,
        //     "lengthChange": false,
        //     "searching": false,
        //     "ordering": true,
        //     "info": true,
        //     "autoWidth": false,
        //     "responsive": true,
        // });
        //DTTBSS

        $(document).ready( function () {
        $('#myTable').DataTable();
    } );
    });

</script>
