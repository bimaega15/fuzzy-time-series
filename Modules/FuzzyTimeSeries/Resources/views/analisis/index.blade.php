@extends('layouts.app.index')

@section('title')
    Halaman Analisis Metode
@endsection

@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        {{ Breadcrumbs::render('analisis') }}

        <!-- Basic Bootstrap Table -->
        <div class="card">
            <h5 class="card-header">
                <div class="d-flex flex-wrap justify-content-between align-items-center">
                    <div>
                        Analisis Metode
                    </div>
                </div>
            </h5>
            <div class="card-body w-100">
                <div class="mb-3">
                    <strong>Data Awal</strong>
                    <table class="w-50">
                        <tr>
                            <td>
                                X MAX
                            </td>
                            <td>:</td>
                            <td>{{ $min }}</td>
                        </tr>
                        <tr>
                            <td>
                                X MIN
                            </td>
                            <td>:</td>
                            <td>{{ $max }}</td>
                        </tr>
                        <tr>
                            <td>Banyak Kelas</td>
                            <td>:</td>
                            <td>{{ $banyakKelas }}</td>
                        </tr>
                        <tr>
                            <td>Rentang Kelas</td>
                            <td>:</td>
                            <td>{{ $rentangKelas }}</td>
                        </tr>
                        <tr>
                            <td>Interval Kelas</td>
                            <td>:</td>
                            <td>{{ $intervalKelas }}</td>
                        </tr>
                        <tr>
                            <td>Prediksi Data Berikutnya</td>
                            <td>:</td>
                            <td>{{ UtilsHelp::formatNumber($next_peramalan) }}</td>
                        </tr>
                        <tr>
                            <td>MAPE</td>
                            <td>:</td>
                            <td>{{ $averageMape }} %</td>
                        </tr>
                        <tr>
                            <td>Hasil Analisa</td>
                            <td>:</td>
                            <td>
                                <strong style="color: {{ $color }}">{{ $hasilAnalisa }}</strong>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="mb-3">
                    <strong>Interval</strong>
                    <table class="w-100 table">
                        <thead>
                            <tr>
                                <th>Sebelumnya</th>
                                <th>-</th>
                                <th>Sesudahnya</th>
                                <th>Variabel</th>
                                <th>Rata-Rata</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($rangeNameInterval as $key => $item)
                                @php
                                    $explode = explode('-', $item);
                                    $dataSebelumnya = trim($explode[0]);
                                    $dataSesudahnya = trim($explode[1]);
                                @endphp
                                <tr>
                                    <td>{{ UtilsHelp::forNumberValue($dataSebelumnya) }}</td>
                                    <td>-</td>
                                    <td>{{ UtilsHelp::forNumberValue($dataSesudahnya) }}</td>
                                    <td>{{ $key }}</td>
                                    <td>{{ UtilsHelp::forNumberValue($averageIntervalTerbentuk[$key]) }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="mb-3">
                    <strong>FLRG</strong>
                    <table class="w-100 table">
                        @foreach ($getGroupedFlr as $key => $item)
                            <tr>
                                <td>{{ $key }}</td>
                                <td>{{ $item }}</td>
                                <td>{{ UtilsHelp::forNumberValue($averageFlrg[$key]) }}</td>
                            </tr>
                        @endforeach
                    </table>
                </div>
                <div class="mb-3">
                    <strong>Hasil Analisis Metode</strong>
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataResultMetode">
                            <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">Harga</th>
                                    <th class="text-center">Fuzzifikasi</th>
                                    <th class="text-center">Nilai FLRG</th>
                                    <th class="text-center">Peramalan</th>
                                    <th class="text-center" colspan="3">FLR</th>
                                    <th>MAPE</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($harga as $key => $item)
                                    @php
                                        $getFlr = explode(' -> ', $flr[$key]);
                                        $dataGetFlr1 = $getFlr[0];
                                        $dataGetFlr2 = $getFlr[1];

                                    @endphp
                                    <tr>
                                        <td class="text-center">{{ $key + 1 }}</td>
                                        <td class="text-center">{{ UtilsHelp::forNumberValue($item) }}</td>
                                        <td class="text-center">{{ $fuzzifikasi[$key] }}</td>
                                        <td class="text-center">{{ UtilsHelp::forNumberValue($nilaiFlrg[$key]) }}</td>
                                        <td class="text-center">
                                            {{ $peramalan[$key] == 'NA' ? 'NA' : UtilsHelp::forNumberValue($peramalan[$key]) }}
                                        </td>
                                        <td class="text-center">{{ $dataGetFlr1 }}</td>
                                        <td class="text-center">-></td>
                                        <td class="text-center">{{ $dataGetFlr2 }}</td>
                                        <td class="text-center">
                                            {{ UtilsHelp::formatNumber($mape[$key]) }}
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="mb-3">
                    <strong>Grafik Prediksi</strong>
                    <canvas id="myChart"></canvas>
                </div>
            </div>
        </div>
        <!--/ Basic Bootstrap Table -->
    </div>
    @push('custom_js')
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script class="data_aktual" data-value="{{ $dataAktual }}"></script>
        <script class="data_prediksi" data-value="{{ $dataPrediksi }}"></script>
        <script class="data_labels" data-value="{{ $labels }}"></script>
        <script src="{{ asset('js/fuzzytimeseries/analisis/index.js') }}"></script>
    @endpush
@endsection
