<?php

namespace App\Http\Controllers;
use DB;
use PDF;
use Carbon\Carbon;
use App\StokMasuk;
use App\StokKeluar;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ReportBarang;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function laporan_transaksi()
    {
        $barang = DB::table('gams_stok_barang')->get();
        return view('pages/laporan_transaksi/transaksi_barang', compact("barang"));
    }
    public function filter_data_barang(Request $request)
    {
        $export_type = $request->export_type;
        $tipe = $request->tipe;

        if($export_type == 'excel'){
            // $start = Carbon::parse($request->input('start'))->startOfDay();
            // $end = Carbon::parse($request->input('end'))->endOfDay();

            // dd($start);

            // return Excel::download(new ReportBarang($start, $end), 'data_per_tanggal.xlsx');

            // return Excel::download(new ReportBarang, 'barang.xlsx');
            // dd($export_type);
        }else{
            $nama_barang = $request->nama_barang;
        
            if ($nama_barang != null) {
                $nama_barang = $request->nama_barang;
            }else{
                $nama_barang = 'All';
            }
            // dd($item_name);
            
            $start = Carbon::parse($request->input('start'))->startOfDay();
            $end = Carbon::parse($request->input('end'))->endOfDay();


            if ($tipe == 'masuk') {
                if ($nama_barang == 'All') {
                    # code...
                    $transactions = DB::table('gams_stok_masuk')->whereBetween('created_at', [$start, $end])->get();
                    $count_stin = DB::table('gams_stok_masuk')->whereBetween('created_at', [$start, $end])->sum('jumlah');
                }else{
                    $transactions =DB::table('gams_stok_masuk')->whereBetween('created_at', [$start, $end])->where('nama_barang', '=', $nama_barang)->get();
                    $count_stin = DB::table('gams_stok_masuk')->whereBetween('created_at', [$start, $end])
                        ->where('barang_name', '=', $nama_barang)
                        ->sum('jumlah');
                }
                // dd($transactions);
                $pdf = PDF::loadView('pages.laporan_transaksi.report.barang_masuk', [
                    'item' => $nama_barang,
                    'data' => $transactions,
                    'start' => $start,
                    'end' => $end,
                    'jumlah' => $count_stin,
                ]);
                $pdf->setPaper('A4', 'portrait');
                return $pdf->stream();
            }else{

                if ($nama_barang == 'All') {
                    $transactions = DB::table('gams_stok_keluar')->whereBetween('created_at', [$start, $end])->get();

                    $count_stin = DB::table('gams_stok_keluar')->whereBetween('created_at', [$start, $end])
                            ->sum('jumlah');
                }else{
                    $transactions = DB::table('gams_stok_keluar')->whereBetween('created_at', [$start, $end])->where('barang_name', '=', $nama_barang)->get();

                    $count_stin = DB::table('gams_stok_keluar')->whereBetween('created_at', [$start, $end])
                            ->where('nama_barang', '=', $nama_barang)
                            ->sum('jumlah');
                }




                // dd($count_stin);
                $pdf = PDF::loadView('pages.laporan_transaksi.report.barang_keluar', [
                    'item' => $nama_barang,
                    'data' => $transactions,
                    'start' => $start,
                    'end' => $end,
                    'jumlah' => $count_stin,
                ]);
                $pdf->setPaper('A4', 'portrait');
                return $pdf->stream();
            }
        }
        
        

    }
    public function export_excel(Request $request)
    {
        $export_type = $request->export_type;
        $tipe = $request->tipe;
        if($export_type == 'excel'){
            $nama_barang = $request->nama_barang;
        
        if ($nama_barang != null) {
            $nama_barang = $request->nama_barang;
        }else{
            $nama_barang = 'All';
        }
        $startDate = $request->input('start');
        $endDate = $request->input('end');

        if ($tipe == 'masuk') {
            if ($nama_barang == 'All') {
                $transactions = DB::table('gams_stok_masuk')->whereBetween('tanggal', [$startDate, $endDate])->get();
                $condition = 'A';
            }else{
                $transactions =DB::table('gams_stok_masuk')->whereBetween('tanggal', [$startDate, $endDate])->where('nama_barang', '=', $nama_barang)->get();
                $condition = 'A';
                // $count_stin = DB::table('gams_stok_masuk')->whereBetween('tanggal', [$startDate, $endDate])
                //     ->where('barang_name', '=', $nama_barang)
                //     ->sum('jumlah');
            }
            // dd($transactions);
           
            $data = $transactions;
            $fileName = 'report_data_masuk.xlsx';
            
            // dd($data);
            return Excel::download(new ReportBarang($data , $condition), $fileName)->deleteFileAfterSend(true);
        }else if($tipe == 'keluar'){
            if ($nama_barang == 'All') {
                $transactions = DB::table('gams_stok_keluar')->whereBetween('tanggal', [$startDate, $endDate])->get();
                $condition = 'B';
            }else{
                $transactions =DB::table('gams_stok_keluar')->whereBetween('tanggal', [$startDate, $endDate])->where('nama_barang', '=', $nama_barang)->get();
                $condition = 'B';
                // $count_stin = DB::table('gams_stok_masuk')->whereBetween('tanggal', [$startDate, $endDate])
                //     ->where('barang_name', '=', $nama_barang)
                //     ->sum('jumlah');
            }
            // dd($transactions);
           
            $data = $transactions;
            $fileName = 'report_data_keluar.xlsx';
            // dd($condition);
            
            // dd($data);
            return Excel::download(new ReportBarang($data , $condition), $fileName)->deleteFileAfterSend(true);
        }


        }
        



    }
    public function stok_card(Request $request)
    {
        $startDate = $request->start;
        $endDate = $request->end;
        $nama_barang = $request->nama_barang;

        //Mencari balance last month

        $last_month_ = substr($startDate, 0,7);
        $last_month = date('Y-m', strtotime($last_month_ . ' -1 month'));
        // $last_month = $last_month_ - 1;
        $last_date = $last_month . '-31';

        $bal_trans_masuk = DB::table('gams_stok_masuk')
                            ->where('tanggal', '<', $last_date)
                            ->where('nama_barang', '=', $nama_barang)
                            ->sum('jumlah');

        $bal_trans_keluar = DB::table('gams_stok_keluar')
                            ->where('tanggal', '<', $last_date)
                            ->where('nama_barang', '=', $nama_barang)
                            ->sum('jumlah');
        $bal_trans_total = $bal_trans_masuk - $bal_trans_keluar;

        // dd($bal_trans_total);
        ///////////////////////////
        $transactions_masuk = DB::table('gams_stok_masuk')
                            ->whereBetween('tanggal', [$startDate, $endDate])
                            ->where('nama_barang', '=', $nama_barang)
                            ->select('no_transaksi AS description','tanggal','nama_barang','keterangan','created_by AS nama','jumlah')
                            ->get();
        

        $transactions_masuk->map(function ($item) {
            $item->type = 'In';
            return $item;
        });
        $transactions_keluar = DB::table('gams_stok_keluar')
                            ->whereBetween('tanggal', [$startDate, $endDate])
                            ->where('nama_barang', '=', $nama_barang)
                            ->select('tanggal','nama_barang','no_trans AS description','keterangan','nama','jumlah')
                            ->get();
        $transactions_keluar->map(function ($item) {
            $item->type = 'Out';
            return $item;
        });
        $transactions_combined = $transactions_masuk->concat($transactions_keluar);
        // dd($transactions_combined);
        // $transactions_combined = $transactions_masuk->merge($transactions_keluar);
        $pdf = PDF::loadView('pages.laporan_transaksi.report.pdf_kartu_stok', [
            'item' => $nama_barang,
            'data' => $transactions_combined,
            'bal' => $bal_trans_total,
            'last_month' => $last_month,
            // 'jumlah' => $count_stin,
        ]);
        $pdf->setPaper('A4', 'portrait');
        return $pdf->stream();
    }

        

        
        
       

   


}
