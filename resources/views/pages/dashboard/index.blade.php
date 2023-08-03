@extends('layouts.admin')
@section('title', 'Dashboard | GAMS')
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
                    $tgl = date('l, d-m-Y');
                    echo $tgl;
                    ?>
                </h6>
                <h5 class="card-title">Pengelolaan ATK</h5>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                @php
                    // Misalnya, ambil data kategori dari database
                    // $categories = App\Category::all();
                    
                    // // Hitung jumlah kategori yang ada
                    // $totalCategories = count($categories);
                    
                    // Tentukan skala warna berdasarkan jumlah kategori
                    // Misalnya, warna akan berubah dari 'bg-info' menjadi 'bg-primary' ketika ada 3 kategori atau lebih
                    $bgColorClass = $tot_kategori >= 3 ? 'bg-primary' : 'bg-info';
                @endphp
                <!-- Info boxes -->
                <div class="row">
                    @foreach ($kategori as $item)
                        <div class="col-12 col-sm-6 col-md-2">

                            <div class="info-box">
                                {{-- <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-cube"></i></span> --}}

                                <div class="info-box-content elevation-1">
                                    <span class="info-box-text">{{ $item->tipe_barang }}</span>
                                    <span class="info-box-number">
                                        @foreach ($stok as $s)
                                            @if ($s->kategori_barang === $item->tipe_barang)
                                                {{ $s->total_barang }}
                                            @endif
                                        @endforeach

                                        <small>Barang</small>
                                    </span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                    @endforeach




                </div>
                <!-- /.row -->

            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
        {{-- <div class="card">
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
        </div> --}}
    </div>

@endsection
