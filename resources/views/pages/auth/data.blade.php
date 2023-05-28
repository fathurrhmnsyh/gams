@extends('layouts.admin')
@section('title', 'User Account | ITCS')
@section('title-sub', 'User Account')
{{-- @section('breadcrumb')
<ol class="breadcrumb float-sm-right">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item active">DataTables</li>
</ol>
@endsection --}}

@section('content')


<div class="col-12">
    <div class="card">
        <!-- /.card-header -->
        <div class="card-body">
            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#modalAdd"><i
                    class="fa fa-plus"></i> Add Data</button>
            <br><br>
            <table id="example1" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Name</th>
                        <th>Section</th>
                        <th>NIK</th>
                        <th>Role</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
          $no = 1;
          ?>
                    @foreach($user as $u)
                    <tr>
                        <td>{{$no++}}</td>
                        <td>{{$u->name}}</td>
                        <td>{{$u->section}}</td>
                        <td>{{$u->nik}}</td>
                        <td>{{$u->role}}</td>
                        <td>
                            <a href="" class="btn-sm btn-info"><i class="fa fa-bars"></i>
                                Detail</a>
                                <a class="btn-sm btn-danger"
                                onclick="return confirm('Are you sure you want to delete this item?')"
                                href="/userlog/delete/{{$u->id}}"> <i class="fa fa-trash"> Delete</i></a>
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

<!-- Modal HTML -->
<div id="myModal" class="modal fade">
    <div class="modal-dialog modal-confirm">
        <div class="modal-content">
            <div class="modal-header flex-column">
                <div class="icon-box">
                    <i class="material-icons">&#xE5CD;</i>
                </div>
                <h4 class="modal-title w-100">Are you sure?</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <p>Do you really want to delete these records? This process cannot be undone.</p>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <a href="" class="btn btn-danger">Delete</a>
            </div>
        </div>
    </div>
</div>

<!-- Modal Add  -->

<div class="modal fade" id="modalAdd">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add Account</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="row g-3" method="post" action="/userlog/create">
                    {{csrf_field()}}
                    <div class="col-md-12 form-group">
                        <label for="name" class="form-label">NIK</label>
                    </div>
                    <div class="col-md-12 form-group input-group">
                        {{-- <label for="nik" class="form-label">NIK</label><br> --}}
                        <input type="text" name="nik" class="form-control" id="nik" placeholder="NIK" readonly>
                        <span>
                            <a data-toggle="modal" href="#myModal2" class="btn btn-primary btn-flat"><i
                                    class="fa fa-search"></i></a>

                            </a>
                        </span>
                    </div>
                    <div class="col-md-12 form-group">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" id="name" readonly>
                    </div>
                    <div class="col-md-12 form-group">
                        <label for="section" class="form-label">Section</label>
                        <input type="text" name="section" class="form-control" id="section" readonly>
                    </div>
                    <div class="col-md-12 form-group">
                        <label for="role" class="form-label"><span style="color: red">*</span>Role</label>
                        <select name="role" class="form-control">
                            <option value="">Select</option>
                            <option value="admin">Admin</option>
                            <option value="user">User</option>
                        </select>
                    </div>
                    <div class="col-md-12 form-group">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="password">
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
<div class="modal fade rotate" id="myModal2">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Search NIK</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="container"></div>
            <div class="modal-body table-responsive">
                <table class="table table-hover dataTable table-striped w-full" id="myTable" data-plugin="dataTable">
                    <thead>
                        <tr>
                            <th style="width: 5%">No</th>
                            <th style="width: 20%">NIK</th>
                            <th style="width: 40%">Name</th>
                            <th style="width: 20%">Dept</th>
                            <th style="width: 10%">Section</th>
                            <th style="width: 5% ">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
          $no = 1;
          ?>
                        @foreach($employee as $k)
                        <tr>
                            <td>{{$no++}}</td>
                            <td>{{$k->nik}}</td>
                            <td>{{$k->name}}</td>
                            <td>{{$k->dept}} </td>
                            <td>{{$k->section}}</td>
                            <td>
                                <button class="btn-xs btn-info" id="select"
                                data-nik="{{$k->nik}}"
                                data-name="{{$k->name}}"
                                data-section="{{$k->section}}"
                                ><i class="fa fa-check"></i>
                                    Select</button>
                                


                            </td>
                        </tr>

                        @endforeach
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>


@endsection
@push('page-script')
<script>
    $(document).ready(function(){
        $(document).on('click', '#select', function(){
            var nik = $(this).data('nik');
            var name = $(this).data('name');
            var section = $(this).data('section');
            $('#nik').val(nik);
            $('#name').val(name);
            $('#section').val(section);
            $('#myModal2').modal('hide');
        })
    })
</script>
@endpush
