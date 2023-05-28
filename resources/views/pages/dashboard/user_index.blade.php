@extends('layouts.admin')
@section('title', 'Dashboard | MY HELPDESK')
@section('title-sub', 'Dashboard')
{{-- @section('breadcrumb')
<ol class="breadcrumb float-sm-right">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item active">DataTables</li>
</ol>
@endsection --}}

@section('content')
<div class="col-12">
    <div class="card">
        <div class="card-header">
            <h6 align="right">
                <?php
                    $tgl=date('l, d-m-Y');
                    echo $tgl;
                ?>
            </h6>
            <h5 class="card-title">Hello {{auth()->user()->name}}</h5>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <!-- Info boxes -->
        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-desktop"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Computer</span>
                <span class="info-box-number">
                  
                  <small>Unit</small>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-laptop"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Laptop</span>
                <span class="info-box-number"> <small>Unit</small></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-print"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Printer</span>
                <span class="info-box-number"><small>Unit</small></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-tv"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">TV</span>
                <span class="info-box-number">2 <small>Unit</small></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->

        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
    <div class="card">
      <div class="card-header">
          <h5 class="card-title">Eticket</h5>
      </div>
      <!-- /.card-header -->
      <div class="card-body">
          <!-- Info boxes -->
      <div class="row">
        <div id="chart-ticket"></div>
      </div>
      <!-- /.row -->

      </div>
      <!-- /.card-body -->
  </div>
</div>

@endsection

