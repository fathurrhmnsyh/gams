<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StokMasuk extends Model
{
    protected $table = 'gams_stok_masuk';
    protected $fillable = ['id_stok_in', 'jumlah', 'no_transaksi','keterangan', 'tanggal', 'unit', 'tipe', 'nama_barang', 'created_by', 'updated_at'];
}
