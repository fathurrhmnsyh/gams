<?php

namespace App\Http\Controllers;

use App\Employee;
use Illuminate\Http\Request;
use Illuminate\support\facades\DB;
use Session;
use Alert;

class EmployeeController extends Controller
{
    public function index()
    {
        $employee = DB::table('employee')
        ->join('tb_div', 'employee.division_id', '=', 'tb_div.id' )
        ->join('tb_dept', 'employee.dept_id', '=', 'tb_dept.id' )
        ->join('tb_section', 'employee.section_id', '=', 'tb_section.id' )
        ->select('employee.*', 'tb_div.divisi', 'tb_dept.dept', 'tb_section.section')
        // ->orderBy('division_id', 'asc')
        // ->orderBy('dept_id', 'asc')
        ->orderBy('nik', 'asc')
        ->get();
        
        $divisi = DB::table('tb_div')
        ->select('*')
        ->get();
        $departemen = DB::table('tb_dept')
        ->select('*')
        ->get();
        $section = DB::table('tb_section')
        ->select('*')
        ->get();

        return view('/pages/employee/employee_data', compact("employee", "divisi", "departemen", "section") );
    }
    public function getdept($id)
    {
        $dept = DB::table("tb_dept")->where("division_id",$id)->pluck("dept","id");
        return json_encode($dept);
    }
    public function getsection($id)
    {
        $dept = DB::table("tb_section")->where("dept_id",$id)->pluck("section","id");
        return json_encode($dept);
    }
    public function store(Request $request)
    {
        DB::table('employee')->insert([
            'nik' => $request->nik,
            'name' => $request->name,
            'division_id' => $request->divisi,
            'dept_id' => $request->departemen,
            'section_id' => $request->section,
        ]);
        Session::flash('sukses','Data Add Succesfully');
        return redirect('/employee');
    }
    public function delete($id)
    {
        DB::table('employee')->where('id', $id)->delete();

        
        return redirect('/employee')->with('success', 'Data Delete Successfully!');
    }
}
