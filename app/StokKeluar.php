<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StokKeluar extends Model
{
    protected $table = 'gams_stok_keluar';
    protected $fillable = ['id_stok_out','nik', 'nama','bagian', 'jumlah', 'no_trans','keterangan', 'tanggal', 'nama_barang', 'kategori','created_at','updated_at'];
}
