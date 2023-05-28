<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">

    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
    </ul>

    <!-- Right navbar links -->

    <ul class="navbar-nav ml-auto">
        <!-- Notifications Dropdown Menu -->

        <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#">
                <i class="far fa-user"></i> {{auth()->user()->name}}
            </a>
            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <span class="dropdown-item dropdown-header">{{auth()->user()->section}}</span>
                <div class="dropdown-divider"></div>
                <div class="dropdown-divider"></div>
                <a href="/logout" class="dropdown-item dropdown-footer">Logout</a>
            </div>
        </li>
        {{-- <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                        <i class="fas fa-th-large"></i>
                    </a>
                </li> --}}
    </ul>
</nav>
<!-- /.navbar -->
