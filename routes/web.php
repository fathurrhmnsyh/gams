<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('home', function(){
    return view('pages.index');
});
//auth
Route::get('/auth', 'AuthController@login')->name('login');
Route::post('/postlogin', 'AuthController@postlogin');
Route::get('/logout', 'AuthController@logout');

// admin role
Route::group(['middleware' =>['auth', 'ceklevel:admin']], function(){


    Route::get('/', 'DashboardController@index');

    //new layout

    Route::get('/asik', function(){
        return view('layouts/template');
    });
    
    //User

    Route::get('/employee', 'EmployeeController@index');
    Route::get('/employee/getdept/{id}', 'EmployeeController@getdept');
    Route::get('/employee/getsection/{id}', 'EmployeeController@getsection');
    Route::post('/employee/store', 'EmployeeController@store');
    Route::get('/employee/delete/{id}', 'EmployeeController@delete');

    //MASTER TIPE
    Route::get('/master_tipe_brg', 'MasterBarangController@index')->name('master_tipe_brg');
    Route::post('/master_tipe_brg/store', 'MasterBarangController@store_tipe')->name('master_tipe_brg.store');
    Route::post('/master_tipe_brg/getdatatable_tipe', 'MasterBarangController@getdatatable_tipe')->name('master_barang.getdatatable_tipe');
    Route::post('/master_tipe_brg/check/{param}', 'MasterBarangController@check_tipe')->name('master_tipe_brg.check');
    Route::post('/master_tipe_brg/void/{id}', 'MasterBarangController@void_tipe')->name('master_tipe_brg.void');
    Route::get('/master_tipe_brg/log/{id}', 'MasterBarangController@log_tipe')->name('master_tipe_brg.log');

    //MASTER UNIT
    Route::post('/master_unit_brg/check/{param}', 'MasterBarangController@check_unit')->name('master_unit_brg.check');
    Route::post('/master_unit_brg/store', 'MasterBarangController@store_unit')->name('master_unit_brg.store');
    Route::post('/master_unit_brg/getdatatable_unit', 'MasterBarangController@getdatatable_unit')->name('master_unit_brg.getdatatable_unit');
    Route::post('/master_unit_brg/void/{id}', 'MasterBarangController@void_unit')->name('master_unit_brg.void');
    Route::get('/master_unit_brg/log/{id}', 'MasterBarangController@log_unit')->name('master_unit_brg.log');

    //MASTER BARANG
    Route::post('/master_brg/getdatatable_barang', 'MasterBarangController@getdatatable_barang')->name('master_brg.getdatatable_barang');
    Route::post('/master_brg/check/{param}', 'MasterBarangController@check_barang')->name('master_brg.check');
    Route::post('/master_brg/store', 'MasterBarangController@store_barangs')->name('master_brg.store');
    Route::post('/master_brg/void/{id}', 'MasterBarangController@void_barang')->name('master_brg.void');
    Route::get('/master_brg/log/{id}', 'MasterBarangController@log_barang')->name('master_brg.log');
    Route::post('/master_brg/get_kategori_barang_so', 'MasterBarangController@get_kategori_barang_so')->name('master_brg.get_kategori_barang_so');
    Route::post('/master_brg/get_unit_barang_so', 'MasterBarangController@get_unit_barang_so')->name('master_brg.get_unit_barang_so');
    
    //STOK BARANG
    Route::post('/stok_brg/getdatatable_stok', 'MasterBarangController@getdatatable_stok')->name('stok_brg.getdatatable_stok');

    //TRANSAKSI BARANG MASUK
    Route::get('/transaksi_barang_masuk', 'StokController@index')->name('transaksi_barang_masuk');
    Route::post('/transaksi_barang_masuk/get_datatables', 'StokController@getdatatables')->name('transaksi_barang_masuk.getdatatables');
    Route::get('/transaksi_barang_masuk/auto_trans_masuk', 'StokController@auto_num_masuk')->name('transaksi_barang_masuk.auto_trans_masuk');
    Route::get('/transaksi_barang_masuk/get_data_barang', 'StokController@get_data_barang')->name('transaksi_barang_masuk.get_data_barang');
    Route::post('/transaksi_barang_masuk/store_data_barang', 'StokController@store_data_barang')->name('transaksi_barang_masuk.store_data_barang');
    Route::post('/transaksi_barang_masuk/void/{id}', 'StokController@void_barang_masuk')->name('transaksi_barang_masuk.void_barang_masuk');

    //RIWAYAT TRANSAKSI
    Route::get('/riwayat_transaksi', 'StokController@riwayat_trans')->name('riwayat_transaksi');
    Route::post('/riwayat_transaksi/getdatatables_tk', 'StokController@getdatatables_tk')->name('riwayat_transaksi.getdatatables_tk');
    Route::post('/riwayat_transaksi/getdatatables_tm', 'StokController@getdatatables_tm')->name('riwayat_transaksi.getdatatables_tm');
    Route::get('/riwayat_transaksi/export_excel', 'StokController@exportExcel')->name('riwayat_transaksi.export_excel');
    
    //LAPORAN TRANSAKSI
    Route::get('/laporan_transaksi', 'ReportController@laporan_transaksi')->name('laporan_transaksi');
    Route::get('/laporan_transaksi/filter_data_barang', 'ReportController@filter_data_barang')->name('laporan_transaksi.filter_data_barang');
    Route::get('/laporan_transaksi/export_excel', 'ReportController@export_excel')->name('laporan_transaksi.export_excel');
    Route::get('/laporan_transaksi/stok_card', 'ReportController@stok_card')->name('laporan_transaksi.stok_card');

     //user login
     Route::get('/userlog', 'AuthController@data');
     Route::post('/userlog/create', 'AuthController@create');
     Route::get('/userlog/getname', 'AuthController@getname');
     Route::get('/userlog/delete/{id}', 'AuthController@delete');

    
   


});

//user role
Route::group(['middleware' =>['auth', 'ceklevel:user,admin']], function(){

    Route::get('/user_dash', 'DashboardController@user_index');
    
    Route::get('/transaksi_barang_masuk/get_data_barang', 'StokController@get_data_barang')->name('transaksi_barang_masuk.get_data_barang');

    Route::get('/transaksi_barang_keluar', 'StokController@user_index')->name('transaksi_barang_keluar');
    Route::get('/transaksi_barang_keluar/auto_number_perm', 'StokController@auto_number_perm')->name('transaksi_barang_keluar.auto_number_perm');
    Route::get('/transaksi_barang_keluar/get_data_barang', 'StokController@get_data_barang')->name('transaksi_barang_keluar.get_data_barang1');
    Route::post('/transaksi_barang_keluar/store_data_barang', 'StokController@store_data_barang_keluar')->name('transaksi_barang_keluar.store_data_barang');
    Route::post('/transaksi_barang_keluar/get_datatables', 'StokController@getdatatables_perm')->name('transaksi_barang_keluar.getdatatables');
    Route::get('/transaksi_barang_keluar/{id}/show_view_detail', 'StokController@show_view_detail_keluar')->name('transaksi_barang_keluar.show_view_detail');
    Route::post('/transaksi_barang_keluar/posted_perm/{id}', 'StokController@posted_perm')->name('transaksi_barang_keluar.posted_perm');
    Route::get('/transaksi_ambil_barang', 'StokController@ambil_barang_dash')->name('transaksi_ambil_barang');
    Route::get('/transaksi_ambil_barang/searchEmp', 'StokController@search_emp')->name('transaksi_ambil_barang/searchEmp');
    Route::post('/transaksi_ambil_barang/store_data', 'StokController@ambil_barang_store')->name('transaksi_ambil_barang/store_data');
    Route::post('/transaksi_ambil_barang/get_datatables', 'StokController@ambil_barang_getdatatables')->name('transaksi_ambil_barang.get_datatables');
    Route::get('/transaksi_ambil_barang/auto_trans_keluar', 'StokController@auto_num_keluar')->name('transaksi_ambil_barang.auto_trans_keluar');


});