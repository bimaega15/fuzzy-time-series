<?php

namespace Database\Seeders;

use App\Models\Pengaturan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class KonfigurasiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Pengaturan::create([
            'namaaplikasi_pengaturan' => 'Fuzzy Chain Time Series',
            'namausaha_pengaturan' => 'PT. Fuzzy Chain Time Series Lela',
            'alamat_pengaturan' => 'Alamat Fuzzy Chain Time Series Lela',
            'notelepon_pengaturan' => '08283928',
            'deskripsi_pengaturan' => 'Deskripsi Fuzzy Chain Time Series Lela',
            'logoaplikasi_pengaturan' => 'profile.jpg',
        ]);
    }
}
