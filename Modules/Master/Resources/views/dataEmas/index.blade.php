@extends('layouts.app.index')

@section('title')
    Halaman Data Emas
@endsection

@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        {{ Breadcrumbs::render('dataEmas') }}

        <!-- Basic Bootstrap Table -->
        <div class="card">
            <h5 class="card-header">
                <div class="d-flex flex-wrap justify-content-between align-items-center">
                    <div>
                        Data Emas
                    </div>
                    <div class="d-flex flex-wrap">
                        <div class="mt-4">
                            <x-button-main title="Import" className="btn-import" typeModal="mediumModal"
                                urlCreate="{{ url('master/dataEmas/import') }}" color="btn-success"
                                icon='<i class="bx bx-file me-sm-1"></i>' />

                            <x-button-main title="Tambah" className="btn-add" typeModal="mediumModal"
                                urlCreate="{{ url('master/dataEmas/create') }}" />
                        </div>

                    </div>
                </div>
            </h5>
            <div class="card-body w-100">
                <div class="table-responsive text-nowrap px-3">
                    <table class="table" id="dataTable">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Tahun</th>
                                <th>Bulan</th>
                                <th>Harga</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!--/ Basic Bootstrap Table -->
    </div>

    @push('custom_js')
        <script class="url_datatable" data-url="{{ url('master/dataEmas') }}"></script>
        <script src="{{ asset('js/master/dataEmas/index.js') }}"></script>
    @endpush
@endsection
