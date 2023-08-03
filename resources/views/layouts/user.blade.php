<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @include('includes.admin.style')
    <title>@yield('title')</title>

    {{-- <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <link rel="stylesheet" href="{{ url('backend/plugins/fontawesome-free/css/all.min.css') }}">

    <link rel="stylesheet" href="{{ url('backend/dist/css/adminlte.min.css?v=3.2.0') }}"> --}}

</head>

<body class="hold-transition layout-top-nav">
    <div class="wrapper">

        <nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
            <div class="container">
                <a href="{{ '/transaksi_ambil_barang' }}" class="navbar-brand">
                    <img src="{{ url('backend/dist/img/gams-hd.png') }}" alt="AdminLTE Logo"
                        class="brand-image img-circle elevation-3" style="opacity: .8">
                    <span class="brand-text font-weight-light">GA Management System</span>
                </a>
                <button class="navbar-toggler order-1" type="button" data-toggle="collapse"
                    data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse order-3" id="navbarCollapse">

                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="{{ '/transaksi_ambil_barang' }}" class="nav-link">Home</a>
                        </li>

                    </ul>


                </div>

                <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">


                    <li class="nav-item dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#">
                            <i class="far fa-user"></i> {{ auth()->user()->name }}
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right ">
                            <span class="dropdown-item dropdown-header">{{ auth()->user()->section }}</span>
                            <div class="dropdown-divider"></div>
                            <div class="dropdown-divider"></div>
                            <a href="/logout" class="dropdown-item dropdown-footer">Logout</a>
                        </div>
                    </li>



                </ul>
            </div>
        </nav>


        <div class="content-wrapper">

            <div class="content-header">
                <div class="container">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            {{-- <h1 class="m-0" style="align:r"> Top Navigation <small>Example 3.0</small></h1> --}}
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                {{-- <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Layout</a></li>
                                <li class="breadcrumb-item active">Top Navigation</li> --}}
                            </ol>
                        </div>
                    </div>
                </div>
            </div>


            <div class="content">
                @yield('content')
                <div class="container">
                    {{-- <div class="row">
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">
                                        Some quick example text to build on the card title and make up the bulk of the
                                        card's
                                        content.
                                    </p>
                                    <a href="#" class="card-link">Card link</a>
                                    <a href="#" class="card-link">Another link</a>
                                </div>
                            </div>
                            <div class="card card-primary card-outline">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">
                                        Some quick example text to build on the card title and make up the bulk of the
                                        card's
                                        content.
                                    </p>
                                    <a href="#" class="card-link">Card link</a>
                                    <a href="#" class="card-link">Another link</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-title m-0">Featured</h5>
                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Special title treatment</h6>
                                    <p class="card-text">With supporting text below as a natural lead-in to additional
                                        content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                            <div class="card card-primary card-outline">
                                <div class="card-header">
                                    <h5 class="card-title m-0">Featured</h5>
                                </div>
                                <div class="card-body">
                                    <h6 class="card-title">Special title treatment</h6>
                                    <p class="card-text">With supporting text below as a natural lead-in to additional
                                        content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                        </div>

                    </div> --}}

                </div>
            </div>

        </div>


        <aside class="control-sidebar control-sidebar-dark">

        </aside>


        <footer class="main-footer">

            <div class="float-right d-none d-sm-inline">
                1.0.0
            </div>

            <strong>Copyright &copy; <?php echo date('Y'); ?> <a href="https://www.pttrimitra.com">Trimitra
                    Chitrahasta</a>.</strong> All rights
            reserved.
        </footer>
    </div>

    @include('includes.admin.script')

    {{-- <script src="{{ url('backend/plugins/jquery/jquery.min.js') }}"></script>

    <script src="{{ url('backend/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

    <script src="{{ url('backend/dist/js/adminlte.min.js?v=3.2.0') }}"></script>

    <script src="{{ url('backend/dist/js/demo.js') }}"></script> --}}
    @stack('page-script')
    @include('sweetalert::alert')
</body>

</html>
