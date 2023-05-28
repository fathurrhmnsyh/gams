<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tipe extends Model
{
    protected $table = 'gams_master_tipe_barang' ;
    protected $primaryKey = 'id_tipe';
    protected $fillable = ['tipe_barang', 'data_status'];
}
