<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\support\facades\DB;
use Illuminate\Support\Str;
use Session;

class AuthController extends Controller
{
    public function login ()
    {
        return view ('pages.auth.login');
    }
    public function postlogin(Request $request)
    {
        $this->validate($request,[
            'nik' => 'required',
            'password' => 'required',
        ]);
        if (Auth::attempt($request->only('nik', 'password'))) {

            if ($request->user()->role == 'user') {
                return redirect('/transaksi_ambil_barang');
            }
            return redirect('/');
        }
        return redirect('/auth');
    }
    public function logout()
    {
        Auth::logout();

        return redirect('/auth');
    }
    public function create(Request $request)
    {
        $user = new \App\user;
        $user->name = $request->name;
        $user->section = $request->section;
        $user->nik = $request->nik;
        $user->role = $request->role;
        $user->remember_token = Str::random(60);
        $user->password = bcrypt($request->password);
        $user->save();            
            

        return redirect('/userlog')->with('success', 'Data Add Successfully!');
    }

    public function data()
    {
        $employee = DB::table('employee')
        ->join('tb_div', 'employee.division_id', '=', 'tb_div.id' )
        ->join('tb_dept', 'employee.dept_id', '=', 'tb_dept.id' )
        ->join('tb_section', 'employee.section_id', '=', 'tb_section.id' )
        ->select('employee.*', 'tb_div.divisi', 'tb_dept.dept', 'tb_section.section')
        ->orderBy('division_id', 'asc')
        ->orderBy('dept_id', 'asc')
        ->orderBy('nik', 'asc')
        ->get();
        

        $user = DB::table('user')
        ->get();
        return view ('pages.auth.data', compact("user", "employee"));
    }
    public function getnik($nik)
    {
        $employee = DB::table("employee")->where("nik",$nik)->pluck("name");
        return json_encode($employee);
    }

    public function delete($id)
    {
        DB::table('user')->where('id', $id)->delete();

        return redirect('/userlog')->with('warning', 'Data Delete Successfully!');
    }
    public function srcnik(Request $request)
    {
        $employee = DB::table('employee')
        ->join('tb_div', 'employee.division_id', '=', 'tb_div.id' )
        ->join('tb_dept', 'employee.dept_id', '=', 'tb_dept.id' )
        ->join('tb_section', 'employee.section_id', '=', 'tb_section.id' )
        ->select('employee.*', 'tb_div.divisi', 'tb_dept.dept', 'tb_section.section')
        ->orderBy('division_id', 'asc')
        ->orderBy('dept_id', 'asc')
        ->orderBy('nik', 'asc')
        ->get();

        
        return view ('pages.auth.data');
    }
}

