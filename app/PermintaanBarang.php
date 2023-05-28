<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PermintaanBarang extends Model
{
    protected $table = 'gams_permintaan_barang';
    protected $fillable = ['id_perm_barang','keterangan', 'jumlah', 'no_permintaan','nama', 'tanggal', 'bagian', 'nama_barang','posted_date', 'apv_spv', 'created_at', 'updated_at'];
}
