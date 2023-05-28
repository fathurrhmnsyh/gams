<?php

namespace App\Http\Controllers;

use App\UsedAsset;
use App\Komputer;
use App\Employee;
use PDF;
use Illuminate\Http\Request;
use Illuminate\support\facades\DB;
use Alert;

class UsedAssetController extends Controller
{
    public function user_kom()
    {
        $used_asset = DB::table('used_asset')
        ->join('komputer', 'used_asset.kode_fa_id', '=', 'komputer.id')
        ->join('employee', 'used_asset.employee_id', '=','employee.id')
        ->select('used_asset.*', 'komputer.kode_fa', 'employee.name', 'employee.nik')
        ->orderBy('id', 'desc')
        ->get();

        $komputer = DB::table('komputer')
        ->select('komputer.id','komputer.kode_fa')
        ->get();
        $employee = DB::table('employee')
        ->select('employee.id','employee.name')
        ->get();
        return view('pages.used_asset.ua_computer', compact("used_asset","komputer","employee"));
    }
    public function kom_detail($id)
    {
        $used_asset = DB::table('used_asset')
        ->join('komputer', 'used_asset.kode_fa_id', '=', 'komputer.id')
        ->join('employee', 'used_asset.employee_id', '=','employee.id')
        ->select('used_asset.*', 'komputer.*', 'employee.name', 'employee.nik')
        ->where('used_asset.id', $id)
        ->first();

        return view('pages.used_asset.ua_computer_detail', ['used_asset' => $used_asset]);
    }

    public function store(Request $request) 
    {
        DB::table('used_asset')->insert([
            'kode_fa_id' => $request->id,
            'employee_id' => $request->name
        ]);

        return redirect('/user_kom')->with('success', 'Data Add Successfully!');
    }
    public function delete($id)
    {
        $used_asset = UsedAsset::find($id);
        $used_asset->delete();

        return redirect ('/user_kom')->with('success', 'Data RRemove Successfully!');
    }
    public function print($id)
    {
        $used_asset = DB::table('used_asset')
        ->join('komputer', 'used_asset.kode_fa_id', '=', 'komputer.id')
        ->join('employee', 'used_asset.employee_id', '=','employee.id')
        ->select('used_asset.*', 'komputer.*', 'employee.name', 'employee.nik')
        ->where('used_asset.kode_fa_id', $id)
        ->first();

        
        

        $pdf = PDF::loadview('pages.used_asset.ua_computer_print', ['used_asset' => $used_asset]);
        return $pdf->stream();
    }

    // Laptop

    public function user_lap()
    {
        $used_asset = DB::table('used_asset_laptop')
        ->join('laptop', 'used_asset_laptop.kode_fa_id', '=', 'laptop.id')
        ->join('employee', 'used_asset_laptop.employee_id', '=','employee.id')
        ->select('used_asset_laptop.*', 'laptop.kode_fa', 'employee.name', 'employee.nik')
        ->get();

        $laptop = DB::table('laptop')
        ->select('laptop.id','laptop.kode_fa')
        ->get();
        $employee = DB::table('employee')
        ->select('employee.id','employee.name')
        ->get();
        return view('pages.used_asset.ua_laptop', compact("used_asset","laptop","employee"));
    }
    public function lap_detail($id)
    {
        $used_asset = DB::table('used_asset_laptop')
        ->join('laptop', 'used_asset_laptop.kode_fa_id', '=', 'laptop.id')
        ->join('employee', 'used_asset_laptop.employee_id', '=','employee.id')
        ->select('used_asset_laptop.*', 'laptop.*', 'employee.name', 'employee.nik')
        ->where('used_asset_laptop.id', $id)
        ->first();

        return view('pages.used_asset.ua_laptop_detail', ['used_asset' => $used_asset]);
    }
    public function store_lp(Request $request) 
    {
        DB::table('used_asset_laptop')->insert([
            'kode_fa_id' => $request->id,
            'employee_id' => $request->name
        ]);

        return redirect('/user_laptop')->with('success', 'Data Add Successfully!');
    }
    public function delete_lp($id)
    {
        $used_asset_laptop = UssedLaptop::find($id);
        $used_asset_laptop->delete();

        return redirect ('/user_laptop')->with('success', 'Data Remove Successfully!');
    }
    public function print_lp($id)
    {
        $used_asset = DB::table('used_asset_laptop')
        ->join('laptop', 'used_asset_laptop.kode_fa_id', '=', 'laptop.id')
        ->join('employee', 'used_asset_laptop.employee_id', '=','employee.id')
        ->select('used_asset_laptop.*', 'laptop.*', 'employee.name', 'employee.nik')
        ->where('used_asset_laptop.kode_fa_id', $id)
        ->first();

        $pdf = PDF::loadview('pages.used_asset.ua_laptop_print', ['used_asset' => $used_asset]);
        return $pdf->stream();
    }

}
