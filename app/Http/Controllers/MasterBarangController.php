<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MasterBarang;
use App\Tipe;
use Carbon\Carbon;
use DataTables;
use DB;
use Auth;
use Illuminate\Support\Str;

class MasterBarangController extends Controller
{
    public function index()
    {
        $kategori = DB::table('gams_master_tipe_barang')
                    ->where('data_status', '=', 'ACTIVE')
                    ->select('tipe_barang')
                    ->get();
        $unit = DB::table('gams_master_unit_barang')
                    ->where('data_status', '=', 'ACTIVE')
                    ->select('unit')
                    ->get();
        return view('pages/master_barang/index', compact("kategori", "unit"));
    }
    public function store_tipe(Request $request)
    {
        $tipe_barang = $request->tipe;
        $data_status = "ACTIVE";

        if ($request->ajax()){
            DB::table('gams_master_tipe_barang')->insert([
                'tipe_barang' => $tipe_barang,
                'data_status' => $data_status
            ]);
        }

        $tipe_barang = $request->tipe;

        date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "KATEGORI | ADD";
            $tipe_barang =  $tipe_barang;
            $user = Auth::user()->name;

            DB::table('gams_master_barang_log')->insert([
                'item' => $tipe_barang,
                'date' => $date,
                'time' => $time,
                'status_change' => $status,
                'user' => $user,
                'note' => '-'
            ]);
        
        return response()->json([
            'success' => true
        ]);
    }
    public function getdatatable_tipe(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('gams_master_tipe_barang')
            ->where('data_status', '=', 'ACTIVE')
            ->get();
            return Datatables::of($data)
            ->addColumn('action', function($data){
                return view('pages.master_barang.action_button._action_tipe', [
                    'model' => $data,
                ]);
            })->rawColumns(['action'])
            ->make(true);  
        }
    }
    public function check_tipe($tipe)
    {
            // dd($tipe);   
            $cek_tipe = DB::table('gams_master_tipe_barang')
            ->where('tipe_barang', '=', $tipe)
            ->where('data_status', '=', 'ACTIVE')
            ->get();

            // dd($cek_tipe);

            if ($cek_tipe->isEmpty()) {
                return response()->json([
                    'errors' => '0'
                ]);
            }else {
                return response()->json([
                    'errors' => '1'
                ]);
            }
       
    }
    public function void_tipe(Request $request,$tipe_barang)
    {
        // dd($tipe_barang);
        DB::beginTransaction();
        try {
            $data = DB::table('gams_master_tipe_barang')
                ->where('tipe_barang','=', $tipe_barang)
                ->update(['data_status' => 'NOT ACTIVE'
            ]);
            

            date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "KATEGORI | VOID";
            $tipe_barang =  $tipe_barang;
            $user = Auth::user()->name;

            DB::table('gams_master_barang_log')->insert([
                'item' => $tipe_barang,
                'date' => $date,
                'time' => $time,
                'status_change' => $status,
                'user' => $user,
                'note' => $request->note !== '' ? $request->note : ''
            ]);
            DB::commit();
            return response()->json([
                'success' => true,
            ]);
        } catch (Exception $ex) {
            DB::rollback();
            return redirect()->back();
        }
    }
    public function log_tipe($tipe_barang)
    {
        $data = DB::table('gams_master_barang_log')
                ->where('item','=', $tipe_barang)
                ->get();
        return response()->json($data);
        
    }

    //UNIT

    public function check_unit($unit)
    {
            // dd($unit);   
            $cek_unit = DB::table('gams_master_unit_barang')
            ->where('unit', '=', $unit)
            ->where('data_status', '=', 'ACTIVE')
            ->get();

            // dd($cek_unit);

            if ($cek_unit->isEmpty()) {
                return response()->json([
                    'errors' => '0'
                ]);
            }else {
                return response()->json([
                    'errors' => '1'
                ]);
            }
       
    }

    public function store_unit(Request $request)
    {
        $unit = $request->unit;
        $jumlah = $request->jumlah;
        $data_status = "ACTIVE";

        if ($request->ajax()){
            DB::table('gams_master_unit_barang')->insert([
                'unit' => strtoupper($unit),
                'jumlah' => $jumlah,
                'data_status' => $data_status
            ]);
        }

        // $tipe_barang = $request->tipe;

        date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "UNIT | ADD";
            $unit =  $unit;
            $user = Auth::user()->name;

            DB::table('gams_master_barang_log')->insert([
                'item' => $unit,
                'date' => $date,
                'time' => $time,
                'status_change' => $status,
                'user' => $user,
                'note' => '-'
            ]);
        
        return response()->json([
            'success' => true
        ]);
    }
    public function getdatatable_unit(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('gams_master_unit_barang')
            ->where('data_status', '=', 'ACTIVE')
            ->get();
            return Datatables::of($data)
            ->addColumn('action', function($data){
                return view('pages.master_barang.action_button._action_unit', [
                    'model' => $data,
                ]);
            })->rawColumns(['action'])
            ->make(true);  
        }
    }
    public function void_unit(Request $request,$unit)
    {
        // dd($tipe_barang);
        DB::beginTransaction();
        try {
            $data = DB::table('gams_master_unit_barang')
                ->where('unit','=', $unit)
                ->update(['data_status' => 'NOT ACTIVE'
            ]);
            

            date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "UNIT | VOID";
            $unit =  $unit;
            $user = Auth::user()->name;

            DB::table('gams_master_barang_log')->insert([
                'item' => $unit,
                'date' => $date,
                'time' => $time,
                'status_change' => $status,
                'user' => $user,
                'note' => $request->note !== '' ? $request->note : ''
            ]);
            DB::commit();
            return response()->json([
                'success' => true,
            ]);
        } catch (Exception $ex) {
            DB::rollback();
            return redirect()->back();
        }
    }
    public function log_unit($unit)
    {
        $data = DB::table('gams_master_barang_log')
                ->where('item','=', $unit)
                ->get();
        return response()->json($data);
        
    }
    public function getdatatable_barang(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('gams_master_barang')
            ->where('data_status', '=', 'ACTIVE')
            ->get();
            return Datatables::of($data)
            ->addColumn('action', function($data){
                return view('pages.master_barang.action_button._action_barang', [
                    'model' => $data,
                ]);
            })->rawColumns(['action'])
            ->make(true);  
        }
    }

    public function check_barang($nama_barang)
    {
            // dd($unit);   
            $cek_barang = DB::table('gams_master_barang')
            ->where('nama_barang', '=', $nama_barang)
            ->where('data_status', '=', 'ACTIVE')
            ->get();

            // dd($cek_unit);

            if ($cek_barang->isEmpty()) {
                return response()->json([
                    'errors' => '2'
                ]);
            }else {
                return response()->json([
                    'errors' => '1'
                ]);
            }
       
    }
    public function store_barangs(Request $request)
    {
        // dd($request);
        $nama_barang = $request->nama_barang;
        $kategori_barang = $request->kategori_barang;
        $unit_barang = $request->unit_barang;
        $data_status = "ACTIVE";

                  

        if ($request->ajax()){
            DB::table('gams_master_barang')->insert([
                'nama_barang' => $nama_barang,
                'kategori_barang' => $kategori_barang,
                'unit_barang' => $unit_barang,
                'created_at' => Carbon::now(),
                'data_status' => $data_status
            ]);
        }

        $get_pcs = DB::table('gams_master_unit_barang')
                    ->where('unit', '=', $unit_barang)
                    ->select('jumlah')
                    ->get();
        $pcs = $get_pcs[0]->jumlah;  

        DB::table('gams_stok_barang')->insert([
            'nama_barang' => $nama_barang,
            'kategori_barang' => $kategori_barang,
            'unit_barang' => $unit_barang,
            'stok_barang' => 0,
            'jml_per_unit' => $pcs,
            'stok_pcs' => 0,
            'created_at' => Carbon::now(),
            'data_status' => $data_status
        ]);


        date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "BARANG | ADD";
            $unit =  $nama_barang;
            $user = Auth::user()->name;

            DB::table('gams_master_barang_log')->insert([
                'item' => $unit,
                'date' => $date,
                'time' => $time,
                'status_change' => $status,
                'user' => $user,
                'note' => $request->note !== '' ? $request->note : ''
            ]);
        
        return response()->json([
            'success' => true
        ]);
    }
    public function void_barang(Request $request,$barang)
    {
        // dd($tipe_barang);
        DB::beginTransaction();
        try {
            $data = DB::table('gams_master_barang')
                ->where('nama_barang','=', $barang)
                ->update(['data_status' => 'NOT ACTIVE'
            ]);
            

            date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "BARANG | VOID";
            $item =  $barang;
            $user = Auth::user()->name;

            DB::table('gams_master_barang_log')->insert([
                'item' => $item,
                'date' => $date,
                'time' => $time,
                'status_change' => $status,
                'user' => $user,
                'note' => $request->note !== '' ? $request->note : ''
            ]);
            DB::commit();
            return response()->json([
                'success' => true,
            ]);
        } catch (Exception $ex) {
            DB::rollback();
            return redirect()->back();
        }
    }

    public function log_barang($barang)
    {
        $data = DB::table('gams_master_barang_log')
                ->where('item','=', $barang)
                ->get();
        return response()->json($data);
        
    }

    public function getdatatable_stok(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('gams_stok_barang')
            ->where('data_status', '=', 'ACTIVE')
            ->get();

            return Datatables::of($data)
            // ->addColumn('action', function($data){
            //     return view('pages.master_barang.action_button._action_barang', [
            //         'model' => $data,
            //     ]);
            // })->rawColumns(['action'])
            ->make(true);  
        }
    }
    public function get_kategori_barang_so()
    {
        // $data = DB::table('gams_master_tipe_barang')
        // ->select('tipe_barang')
        // ->get();

        $options = DB::table('gams_master_tipe_barang')->pluck('tipe_barang', 'tipe_barang');

        // dd($options);
    
        $html = '<option value="" disabled selected></option>';;
        
        foreach ($options as $value => $text) {
            $html .= '<option value="' . $value . '">' . $text . '</option>';
        }
        
        return $html;

    }
    public function get_unit_barang_so()
    {
        // $data = DB::table('gams_master_tipe_barang')
        // ->select('tipe_barang')
        // ->get();

        $options = DB::table('gams_master_unit_barang')->pluck('unit', 'unit');

        // dd($options);
    
        $html = '<option value="" disabled selected></option>';;
        
        foreach ($options as $value => $text) {
            $html .= '<option value="' . $value . '">' . $text . '</option>';
        }
        
        return $html;

    }
    
}
