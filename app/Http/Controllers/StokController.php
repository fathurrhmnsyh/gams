<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\StokMasuk;
use App\StokKeluar;
use App\PermintaanBarang;
use DataTables;
use DB;
use Auth;
use Illuminate\Support\Str;


class StokController extends Controller
{
    public function index()
    {
        
        return view('pages/stok_barang/index');
    }
    public function getdatatables(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('gams_stok_masuk')
            // ->groupByRaw('no_transaksi')
            // ->where('data_status', '=', 'ACTIVE')
            ->get();
            return Datatables::of($data)
            // ->addColumn('action', function($data){
            //     return view('pages.master_barang.action_button._action_tipe', [
            //         'model' => $data,
            //     ]);
            // })->rawColumns(['action'])
            ->make(true);  
        }
    }
    public function auto_num_masuk(Request $request)
    {
        // check no perm

        
        $getYear = Carbon::now()->format('Y');
        // 22
        $getMonth = Carbon::now()->format('m');
        $getDay = Carbon::now()->format('d');
        // dd($getDay);
        $concatYnM = $getYear.$getMonth;

        $lastNoPerm = DB::table('gams_stok_masuk')->latest('id_stok_in')->select('no_transaksi')->first();

        // dd($lastNoPerm);
        if ($lastNoPerm == null) {
            $no_perm = $concatYnM.'-'.'001';
        }else{
            $lastNoPerm1 = $lastNoPerm->no_transaksi;
            $perm_no = substr($lastNoPerm1,-3);
            $perm_noplus = (int)$perm_no + 1;
            $zeroAdd = str_pad($perm_noplus, 3, "0", STR_PAD_LEFT);
            $permPlus = $zeroAdd;

            



            

            if ($getDay != 01) {
                $no_perm = $concatYnM.'-'.$permPlus;
            }else{
                $no_perm = $concatYnM.'-'.'001';
            }
        }
        

        // $no_perm = $concatYnM.'-'.$permPlus;
		return response()->json($no_perm);
    }

    public function get_data_barang (Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('gams_stok_barang')
                    ->select('id_stok','nama_barang','kategori_barang','unit_barang', 'jml_per_unit')
                    ->get();
            return Datatables::of($data)->make(true);        
        }
    }
    public function store_data_barang(Request $request)
    {
            $tanggal = $request->tanggal;
            $created_by = $request->created_by;
            $no_transaksi = $request->no_transaksi;
            $nama_barang = $request->barang;
            $keterangan = $request->keterangan;
            $kategori = $request->kategori;
            // dd($tipe);

            

            $unit = $request->unit;
            $jumlah = $request->jumlah;
            $total = $request->total;

            if(count($request->input('barang')) > 0){
                foreach($request->input('barang') as $item => $value){
                    $data = array(
                        'created_by' => $created_by,
                        'tanggal' => $tanggal,
                        'no_transaksi' => $no_transaksi,
                        'keterangan' => $keterangan,
                        'nama_barang' => $nama_barang[$item],
                        'unit' => $unit[$item],
                        'tipe' => $kategori[$item],
                        'jumlah' => $total[$item]
                    );
                    $data2 = $data;
                    // dd($data2);
                    $get_data = StokMasuk::create($data);
                    
                }
                // dd($key);

                // dd($oldstock);
            }else {
                return response()->json([
                    'errors'=> $msg,
                ]);
             }
             return response()->json([
                'status' => 'Successfully Add'
            ]);
    }

    ////////////////////////////////////USER PAGE////////////////////////
    public function user_index()
    {
        
        return view('pages/stok_barang/permintaan_barang/user_index');
    }
    public function auto_number_perm(Request $request)
    {
        $getYear = Carbon::now()->format('Y');
        // 22
        $getMonth = Carbon::now()->format('m');
        $getDay = Carbon::now()->format('d');
        $concatYnM = $getYear.$getMonth;

        $lastNoPerm = DB::table('gams_permintaan_barang')->latest('id_perm_barang')->select('no_permintaan')->first();
        $lastNoPerm1 = $lastNoPerm->no_permintaan;
        $perm_no = substr($lastNoPerm1,-3);
        $perm_noplus = (int)$perm_no + 1;
        $permPlus = '0'.$perm_noplus;

        // dd($lastNoPerm1);
        $zeroAdd = str_pad($permPlus, 3, "0", STR_PAD_LEFT);


        // dd($permPlus);
        // if ($getDay != 1) {
        //     $no_perm = $concatYnM.'-'.$permPlus;
        // }else{
        //     $no_perm = $concatYnM.'-'.'01';
        // }


        $no_perm = $concatYnM.$zeroAdd;
		return response()->json($no_perm);
    }
    public function store_data_barang_keluar(Request $request)
    {
        // dd($request);
            $tanggal = $request->tanggal;
            $no_perm = $request->no_perm;
            $nama = $request->nama;
            $bagian = $request->bagian;
            $nama_barang = $request->barang;
            $keterangan = $request->keterangan;


            $created_by = $request->created_by;
            $jumlah = $request->jumlah;
            

            


            if(count($request->input('barang')) > 0){
                foreach($request->input('barang') as $item => $value){
                    $data = array(
                        // 'created_by' => $created_by,
                        'tanggal' => $tanggal,
                        'no_permintaan' => $no_perm,
                        'nama' => $nama,
                        'bagian' => $bagian,
                        'apv_spv' => 0,
                        'keterangan' => $keterangan,
                        'nama_barang' => $nama_barang[$item],
                        'jumlah' => $jumlah[$item]
                    );
                    $data2 = $data;
                    // dd($data2);
                    $get_data = PermintaanBarang::create($data);
                    
                }
                // dd($key);

                // dd($oldstock);
            }else {
                return response()->json([
                    'errors'=> $msg,
                ]);
             }
             return response()->json([
                'status' => 'Successfully Add'
            ]);
    }
    public function getdatatables_perm(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('gams_permintaan_barang')
            ->select('*', DB::raw("sum(jumlah) as total"))
            ->groupByRaw('no_permintaan')
            // ->where('data_status', '=', 'ACTIVE')
            ->get();
            return Datatables::of($data)
            ->editcolumn('apv_spv', function($row){
                if ($row->apv_spv == '0') {
                    $apv_spv = '<span class="badge  bg-danger">Belum ACC</span>';
                } else if ($row->apv_spv == '1'){
                    $apv_spv = '<span class="badge  bg-primary">Silahkan Ambil di GA</span>';
                } else if ($row->apv_spv == '2'){
                    $apv_spv = '<span class="badge  bg-success">Selesai</span>';
                } 
                return $apv_spv;
            })
            ->addColumn('aksi', function($data){
                return view('pages.stok_barang.permintaan_barang._actionMaster', [
                    'model' => $data,
                    // 'url_print' => route('master_asset.print', base64_encode($data->ticket_no)),
                ]);
            })->rawColumns(['action'])
            ->rawColumns(['apv_spv'])
            ->make(true);  
        }
    }
    public function show_view_detail_keluar($id)
    {
        $MAHeader   = DB::table('gams_permintaan_barang')
                        ->where('id_perm_barang', '=', $id)
                        ->first();
        // dd($Header);
        $MAHeaderNo = $MAHeader->no_permintaan;
        $MADetail   = DB::table('gams_permintaan_barang')->select('*')   
        ->where('no_permintaan', '=', $MAHeaderNo)
        ->get();


        $output = [
            'header' => $MAHeader,
            'detail' => $MADetail,
            // 'count' => $IPCount
        ];

        return response()->json($output);
    }
    public function posted_perm(Request $request, $id)
    {
        DB::beginTransaction();
        try {
            $get_data = \DB::table('gams_permintaan_barang')
                        ->where('id_perm_barang', $id)
                        ->first();
            // dd($get_data);
            $get_posted =  $get_data->posted_date;
            if ($get_posted != null) {
                //unposted
                // $unpost = \DB::connection('db_tbs')
                // ->table('entry_ttf_tbl')
                // ->where('ttf_no', $ttf_no)
                // ->update(['posted_date' => NULL]);

                // date_default_timezone_set("Asia/Jakarta");
                // $date = Carbon::now();
                // $time = Carbon::now()->format('H:i:s');
                // $status = "UN-POSTED";
                // $ttf_no = $ttf_no;
                // $user = Auth::user()->FullName;
                // $note = $request->note;
                // DB::connection('db_tbs')->table('entry_ttf_log')->insert([
                //     'ttf_no' => $ttf_no,
                //     'date' => $date,
                //     'time' => $time,
                //     'status' => $status,
                //     'user' => $user,
                //     'note' => $note
                // ]);
            } else {
                // POSTED
                $post = \DB::table('gams_permintaan_barang')
                        ->where('id_perm_barang', $id)
                        ->update(['posted_date' => Carbon::now()]);

            
            }

            DB::commit();
            return response()->json([
                'success' => true
            ]);
        } catch (Exception $ex) {
            DB::rollback();
            return redirect()->back();
        }
    }
    public function ambil_barang_dash()
    {
        return view('pages/ambil_barang/index');
    }
    public function search_emp(Request $request)
    {
        $nik = $request->input('nik');

        // Lakukan pencarian data berdasarkan NIK
        $user = DB::table('employee')
        ->join('tb_div', 'employee.division_id', '=', 'tb_div.id' )
        ->join('tb_dept', 'employee.dept_id', '=', 'tb_dept.id' )
        ->join('tb_section', 'employee.section_id', '=', 'tb_section.id' )
        ->select('employee.name', 'tb_div.divisi', 'tb_dept.dept', 'tb_section.section')
        ->where('nik', $nik)
        ->first();

        // dd($user);

        if ($user) {
            // Kirim hasil pencarian sebagai respons JSON
            return response()->json([
                'nama' => $user->name,
                'bagian' => $user->section
            ]);
        } else {
            // Kirim response kosong jika data tidak ditemukan
            return response()->json();
        }

    
        

        
    }

    public function ambil_barang_store(Request $request)
    {
        $tanggal = $request->tanggal;
        $no_transaksi = $request->no_transaksi;
        $nik = $request->nik;
        $nama = $request->nama;
        $bagian = $request->bagian;
        $keterangan = $request->keterangan;
        $nama_barang = $request->barang;
        $kategori = $request->kategori;
        $jumlah = $request->jumlah;


        // $created_by = $request->created_by;
            

            


            if(count($request->input('barang')) > 0){
                foreach($request->input('barang') as $item => $value){
                    $data = array(
                        // 'created_by' => $created_by,
                        'tanggal' => $tanggal,
                        'no_trans' => $no_transaksi,
                        'nik' => $nik,
                        'nama' => $nama,
                        'bagian' => $bagian,
                        'keterangan' => $keterangan,
                        'nama_barang' => $nama_barang[$item],
                        'kategori' => $kategori[$item],
                        'jumlah' => $jumlah[$item]
                    );
                    $data2 = $data;
                    // dd($data2);
                    $get_data = StokKeluar::create($data);
                    
                }
                // dd($key);

                // dd($oldstock);
            }else {
                return response()->json([
                    'errors'=> $msg,
                ]);
             }
             return response()->json([
                'status' => 'Successfully Add'
            ]);
    }
    public function ambil_barang_getdatatables(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('gams_stok_keluar')
            // ->groupByRaw('no_transaksi')
            // ->where('data_status', '=', 'ACTIVE')
            ->get();
            return Datatables::of($data)
            // ->addColumn('action', function($data){
            //     return view('pages.master_barang.action_button._action_tipe', [
            //         'model' => $data,
            //     ]);
            // })->rawColumns(['action'])
            ->make(true);  
        }
    }
    public function auto_num_keluar(Request $request)
    {
        // check no perm

        
        $getYear = Carbon::now()->format('Y');
        // 22
        $getMonth = Carbon::now()->format('m');
        $getDay = Carbon::now()->format('d');
        // dd($getDay);
        $concatYnM = $getYear.$getMonth;

        $lastNoPerm = DB::table('gams_stok_keluar')->latest('id_stok_out')->select('no_trans')->first();

        // dd($lastNoPerm);
        if ($lastNoPerm == null) {
            $no_perm = $concatYnM.'001';
        }else{
            $lastNoPerm1 = $lastNoPerm->no_trans;
            $perm_no = substr($lastNoPerm1,-3);
            $perm_noplus = (int)$perm_no + 1;
            $zeroAdd = str_pad($perm_noplus, 3, "0", STR_PAD_LEFT);
            $permPlus = $zeroAdd;

            



            

            if ($getDay != 01) {
                $no_perm = $concatYnM.$permPlus;
            }else{
                $no_perm = $concatYnM.'001';
            }
        }
        

        // $no_perm = $concatYnM.'-'.$permPlus;
		return response()->json($no_perm);
    }
}
