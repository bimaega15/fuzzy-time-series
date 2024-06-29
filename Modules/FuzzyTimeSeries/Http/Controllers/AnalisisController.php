<?php

namespace Modules\FuzzyTimeSeries\Http\Controllers;

use App\Http\Helpers\UtilsHelper;
use App\Models\DataEmas;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class AnalisisController extends Controller
{
    public function index()
    {
        $getMetode = UtilsHelper::fuzzyTimeSeriesChen();
        $getMetode['dataAktual'] = json_encode($getMetode['harga']);
        $getMetode['dataPrediksi'] = json_encode($getMetode['nilaiFlrg']);
        $labels = [];
        foreach ($getMetode['dataEmas'] as $key => $value) {
            $labels[] = $value->bulan_dataemas. ' '. $value->tahun_dataemas;
        }
        $getMetode['labels'] = json_encode($labels);
        $averageMape = $getMetode['averageMape'];
        $hasilAnalisa = '';
        $color = '';
        if($averageMape <= 10){
            $hasilAnalisa = 'Sangat Baik';
            $color = 'green';
        }elseif($averageMape <= 20){
            $hasilAnalisa = 'Baik';
            $color = 'blue';
        }elseif($averageMape <= 50){
            $hasilAnalisa = 'Cukup';
            $color = 'yellow';
        }else{
            $hasilAnalisa = 'Buruk';
            $color = 'red';
        }
        $getMetode['hasilAnalisa'] = $hasilAnalisa;
        $getMetode['color'] = $color;
        return view('fuzzytimeseries::analisis.index', $getMetode);
    }
}
