@extends('layouts.admin')
@section('title', 'Employee | ITCS')
@section('title-sub', 'Employee Data')
{{-- @section('breadcrumb')
<ol class="breadcrumb float-sm-right">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item active">DataTables</li>
</ol>
@endsection --}}

@section('content')

@if ($message = Session::get('sukses'))
<div class="alert alert-success alert-block">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>{{ $message }}</strong>
</div>
@endif

@if ($message = Session::get('gagal'))
<div class="alert alert-danger alert-block">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>{{ $message }}</strong>
</div>
@endif

@if ($message = Session::get('peringatan'))
<div class="alert alert-warning alert-block">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>{{ $message }}</strong>
</div>
@endif

<div class="col-12">
    <div class="card">
        <!-- /.card-header -->
        <div class="card-body">
            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#modalAdd"><i
                    class="fa fa-plus"></i> Add Data</button>
            <br><br>
            <table class="table table-hover dataTable table-striped w-full" id="myTable" data-plugin="dataTable">                <thead>
                    <tr>
                        <th>No</th>
                        <th>NIK</th>
                        <th>Name</th>
                        <th>Division</th>
                        <!-- <th>Dept</th> -->
                        <th>Section</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    ?>
                    @foreach($employee as $e)
                    <tr>
                        <td>{{$no++}}</td>
                        <td>{{$e->nik}}</td>
                        <td>{{$e->name}}</td>
                        <td>{{$e->divisi}}</td>
                        <!-- <td>{{$e->dept}}</td> -->
                        <td>{{$e->section}}</td>
                        <td>
                            <a class="btn-sm btn-danger"
                                onclick="return confirm('Are you sure you want to delete this item?')"
                                href="/employee/delete/{{$e->id}}"> <i class="fa fa-trash"> Delete</i></a>
                            {{-- <a href="#myModal" class="trigger-btn btn-sm btn-danger " data-toggle="modal"> Delete</a> --}}
                        </td>
                    </tr>
                    @endforeach
                </tbody>

            </table>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>
<!-- modal add -->
<div class="modal fade" id="modalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add Employee</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="row g-3" method="post" action="/employee/store">
                    {{csrf_field()}}
                    <div class="col-md-6 form-group">
                        <label for="nik" class="form-label">NIK</label>
                        <input type="text" name="nik" class="form-control" id="nik">
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" id="name">
                    </div>
                    <div class="col-md-4 form-group">
                        <label for="divisi" class="form-label"><span style="color: red">*</span>Divisi</label>
                        <select name="divisi" class="form-control">
                            <option value="">Select</option>
                            @foreach($divisi as $div)
                            <option value="{{$div->id}}">{{$div->divisi}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-4 form-group">
                        <label for="departemen" class="form-label"><span style="color: red">*</span>Departemen</label>
                        <select name="departemen" class="form-control">
                            <option value="">--Dept--</option>
                        </select>
                    </div>
                    <div class="col-md-4 form-group">
                        <label for="section" class="form-label"><span style="color: red">*</span>Section</label>
                        <select name="section" class="form-control">
                            <option value="">--Section--</option>
                        </select>
                    </div>
                    <div class="col-md-12 form-group">
                        <br>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <input type="submit" class="btn btn-primary" value="Simpan"><br>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery('select[name="divisi"]').on('change', function () {
            var divisiID = jQuery(this).val();
            if (divisiID) {
                jQuery.ajax({
                    url: 'employee/getdept/' + divisiID,
                    type: "GET",
                    dataType: "json",
                    success: function (data) {
                        console.log(data);
                        jQuery('select[name="departemen"]').empty();
                        jQuery.each(data, function (key, value) {
                            $('select[name="departemen"]').append(
                                '<option value="' + key + '">' + value +
                                '</option>');
                        });
                    }
                });
            } else {
                $('select[name="departemen"]').empty();
            }
        });
    });

</script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery('select[name="departemen"]').on('change', function () {
            var deptID = jQuery(this).val();
            if (deptID) {
                jQuery.ajax({
                    url: 'employee/getsection/' + deptID,
                    type: "GET",
                    dataType: "json",
                    success: function (data) {
                        console.log(data);
                        jQuery('select[name="section"]').empty();
                        jQuery.each(data, function (key, value) {
                            $('select[name="section"]').append('<option value="' +
                                key + '">' + value + '</option>');
                        });
                    }
                });
            } else {
                $('select[name="section"]').empty();
            }
        });
    });

</script>


@endsection
