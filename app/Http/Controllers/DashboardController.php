<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Komputer;
use App\Laptop;
use App\Printer;
use DB;

class DashboardController extends Controller
{
    public function index()
    {
        
        // dd($bulan);
        

        // $bulan = \DB::table('eticket')
        // ->select([
        //     // \DB::raw('count(*) as total'),
        //     \DB::raw('MONTHNAME(created_at) as bulan'),
        // ])
        // ->groupBy('bulan')
        // ->orderBy('bulan', 'desc')
        // ->get()
        // ->toArray();
        // // dd(json_encode($bulan));

        // $total = \DB::table('eticket')
        // ->select([
        //     \DB::raw('count(*) as total'),
        //     \DB::raw('MONTHNAME(created_at) as bulan'),
        // ])
        // ->groupBy('bulan')
        // ->orderBy('bulan', 'desc')
        // ->get()
        // ->toArray();
        // dd(json_encode($total));    


        // $total_ticket = Eticket::select(DB::raw("Month(created_at) as total_ticket"))
        // // ->GroupBy(DB::raw("MONTHNAME(created_at)"))
        // ->GroupBy(DB::raw("Month(created_at)"))
        // ->pluck('total_ticket');
        // // dd($total_ticket);
        // $bulan = Eticket::select(DB::raw("MONTHNAME(created_at) as bulan"))
        // ->GroupBy(DB::raw("MONTHNAME(created_at)"))
        // ->pluck('bulan');

        $kategori = DB::table('gams_master_tipe_barang AS tipe')
            ->where('data_status', '=', 'ACTIVE')
            ->get();
        $tot_kategori = DB::table('gams_master_tipe_barang AS tipe')
            ->where('data_status', '=', 'ACTIVE')
            ->count('tipe_barang');
        // dd($tot_kategori);

        $stok = DB::table('gams_stok_barang')
            ->select('kategori_barang', DB::raw('count(kategori_barang) as total_barang'))
            ->groupBy('kategori_barang')
            ->get();
            // dd($stok);

        return view('pages.dashboard.index', compact("kategori", "stok", "tot_kategori"));
    }
    public function user_index()
    {
        return view('pages.dashboard.user_index');
    }
}
