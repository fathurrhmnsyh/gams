<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/" class="brand-link">
        <img src="{{url('backend/dist/img/gams-hd.png')}}" alt="AdminLTE Logo"
            class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light" style="font-size: 16px">GA Management System</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->




                @if (auth()->user()->role=="admin")

                <li class="nav-item">
                    <a href="/" class="nav-link {{request()->is('/') ? 'active': ''}}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>


                <li class="nav-header">ATK</li>


                <li
                    class="nav-item has-treeview {{request()->is('master_barang', 'master_tipe_brg', 'stok', 'transaksi_barang_masuk') ? 'menu-open': ''}}">
                    <a href="#"
                        class="nav-link {{request()->is('master_barang', 'master_tipe_brg','stok', 'transaksi_barang_masuk') ? 'active': ''}}">
                        <i class="nav-icon fas fa-shopping-cart"></i>
                        <p>
                            Manajemen ATK
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item has-treeview ">
                            <a href="/master_tipe_brg"
                                class="nav-link {{request()->is('master_tipe_brg') ? 'active': ''}}">
                                <i
                                    class="far fa-circle nav-icon {{request()->is('master_tipe_brg') ? 'far fa-dot-circle': ''}}"></i>
                                <p>
                                    Master 
                                </p>
                            </a>
                        </li>
                        <li class="nav-item has-treeview ">
                            <a href="/transaksi_barang_masuk"
                                class="nav-link {{request()->is('transaksi_barang_masuk') ? 'active': ''}}">
                                <i
                                    class="far fa-circle nav-icon {{request()->is('transaksi_barang_masuk') ? 'far fa-dot-circle': ''}}"></i>
                                <p>
                                    Transaksi Masuk
                                </p>
                            </a>
                        </li>
                        
                    </ul>
                </li>

                @endif

                <li class="nav-item">
                    <a href="transaksi_barang_keluar" class="nav-link {{request()->is('transaksi_barang_keluar') ? 'active': ''}}">
                        <i class="nav-icon fas fa-bars"></i>
                        <p>
                            Permintaan ATK
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="transaksi_ambil_barang" class="nav-link {{request()->is('transaksi_ambil_barang') ? 'active': ''}}">
                        <i class="nav-icon fas fa-shopping-cart"></i>
                        <p>
                            Ambil ATK
                        </p>
                    </a>
                </li>

                {{-- Kalo di tambah role admin --}}
                @if (auth()->user()->role=="admin")


                <li class="nav-header">SETTING</li>
                <li class="nav-item has-treeview {{request()->is('employee') ? 'menu-open' : ''}}">
                    <a href="#" class="nav-link {{request()->is('employee') ? 'active' : ''}}">
                        <i class="nav-icon fas fa-user"></i>
                        <p>
                            Employee
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item has-treeview ">
                            <a href="/employee" class="nav-link {{request()->is('employee') ? 'active' : ''}}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>
                                    User
                                </p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="/userlog" class="nav-link {{request()->is('userlog') ? 'active' : ''}}">
                        <i class="nav-icon fas fa-bars"></i>
                        <p>
                            Admin
                        </p>
                    </a>
                </li>
                @endif



            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
