<?php

namespace App\Exports;
use App\StokMasuk;
use App\StokKeluar;
use Carbon\Carbon;
// use Maatwebsite\Excel\Concerns\FromCollection;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithMapping;

// class ReportBarang implements FromCollection
class ReportBarang implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
  

    protected $data;
    protected $condition;

    public function __construct($data, $condition)
    {
        $this->data = $data;
        $this->condition = $condition;
    }
    
    public function view(): View
    {
        $condition = $this->condition;


        if ($this->data instanceof StokMasuk) {
            // Kondisi jika data berasal dari ModelA
            $condition = 'A';
        } elseif ($this->data instanceof StokKeluar) {
            // Kondisi jika data berasal dari ModelB
            $condition = 'B';
        }

        return view('pages.laporan_transaksi.report.excel_barang_report', [
            'data' => $this->data,
            'condition' => $condition
        ]);

    }

    
}
