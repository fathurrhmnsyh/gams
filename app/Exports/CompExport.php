<?php

namespace App\Exports;

use App\Komputer;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class CompExport implements FromCollection,WithHeadings, ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Komputer::all();
    }
    public function headings(): array
    {
        return [
            'No',
            'Kode Fa',
            'Tanggal Pembelian',
            'No PPB',
            'Merk Processor',
            'Jenis Processor',
            'Tipe Processor',
            'Kecepatan Processor',
            'Merk Mainboard',
            'Tipe Mainboard',
            'Kapasitas RAM',
            'Tipe RAM',
            'Slot RAM',
            'Hard Disk 1 Merk',
            'Hard Disk 1 Tipe',
            'Hard Disk 1 Kapasitas',
            'Hard Disk 2 Merk',
            'Hard Disk 2 Tipe',
            'Hard Disk 2 Kapasitas',
            'SSD Merk',
            'SSD Tipe',
            'SSD Kapasitas',
            'VGA External',
            'Ethernet',
            'Ethernet Mac Address',
        ];
    }
}
