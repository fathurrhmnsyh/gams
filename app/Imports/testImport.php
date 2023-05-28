<?php

namespace App\Imports;

use App\Models\Komputer;
use Maatwebsite\Excel\Concerns\ToModel;

class testImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Komputer([
            //
        ]);
    }
}
